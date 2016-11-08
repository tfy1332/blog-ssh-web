package com.ssh.DAO.impl.work;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.ssh.DAO.work.WorkDAO;
import com.ssh.domain.User;
import com.ssh.domain.Work;
import com.ssh.model.Pager;

public class WorkDaoImpl implements WorkDAO {
	private static Logger log = Logger.getLogger(WorkDaoImpl.class);
private HibernateTemplate hibernateTemplate;
private SessionFactory sessionFactory;

	public HibernateTemplate getHibernateTemplate() {
	return hibernateTemplate;
}

public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
	this.hibernateTemplate = hibernateTemplate;
}

public SessionFactory getSessionFactory() {
	return sessionFactory;
}

public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}


	@SuppressWarnings("unchecked")
	public List<User> getUserByID(String id) throws Exception {
		return hibernateTemplate.find("from User u where u.id= '" + id+"'");
	}


	public void delUserByID(String id) throws Exception {
		Session session=sessionFactory.openSession();
		String hql="delete  from  User u  where u.id=:id"; 
		Query query=session.createQuery(hql);     
		 query.setParameter("id",id,Hibernate.STRING);   
		 query.executeUpdate();
		 session.close();
	}

	public void saveUser(User user) throws Exception {
		hibernateTemplate.save(user);
	}
    
	public Pager showAllUseForPager(Integer pageIndex) throws Exception {
		
		Pager pg = new Pager();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from User order by id  desc");//asc ---->desc
		Integer count = (Integer) session.createQuery("select count(*) from  User order by id  desc").uniqueResult();
		int pageSize=pg.getPageSize();
		int start=pg.getStart();
		query.setFirstResult((pageIndex-1)*pageSize);
		pg.setPageIndex(pageIndex);
		System.out.println("pageIndex="+pageIndex);
		System.out.println("start="+start);
		query.setMaxResults(pageSize);
		pg.setTotal(count);
		pg.setTotalPage((int) Math.ceil((count + pageSize - 1) / pageSize));
		pg.setList(query.list());
		session.close();
		return pg;
		
	}

	public User getUserByUserName(String username) throws Exception {
		List<User> userList= hibernateTemplate.find("from User u where u.username= '" + username+"'");
		User user=null;
		if(userList!=null &&userList.size()>0){
			 user=userList.get(0);
		}
		return user;
	}

	public Pager showAllUseForPager(Integer pageIndex, String username)
			throws Exception {
		Pager pg = new Pager();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from User u where u.username='"+username+"' order by id  desc");//asc ---->desc
		Integer count = (Integer) session.createQuery("select count(*) from  User u where u.username='"+username+"' order by id  desc").uniqueResult();
		int pageSize=pg.getPageSize();
		int start=pg.getStart();
		query.setFirstResult((pageIndex-1)*pageSize);
		pg.setPageIndex(pageIndex);
		System.out.println("pageIndex="+pageIndex);
		System.out.println("start="+start);
		query.setMaxResults(pageSize);
		pg.setTotal(count);
		pg.setTotalPage((int) Math.ceil((count + pageSize - 1) / pageSize));
		pg.setList(query.list());
		session.close();
		return pg;
	}
	public void updateUser(User user) throws Exception {
		hibernateTemplate.update(user);		
	}

	public void delWorkByID(String id) throws Exception {
		Session session=sessionFactory.openSession();
		String hql="delete  from  Work w  where w.id=:id"; 
		Query query=session.createQuery(hql);     
		 query.setParameter("id",id,Hibernate.STRING);   
		 query.executeUpdate();
		 session.close();
		
	}

	public Work  getWorkByUid(String uid) throws Exception {
		List<Work> workList= hibernateTemplate.find("from Work w where w.uid= '" + uid+"'");
		Work work=null;
		if(workList!=null &&workList.size()>0){
			work=workList.get(0);
		}
		return work;
	}

	public Work getWorkByUserName(String username) throws Exception {
		List<Work> workList= hibernateTemplate.find("from Work w order by id desc ");
		return workList.get(0);//这个方法是错误的 注释说明一下    想想以后有什么用  getWorkByUid
	}

	public void saveWork(Work work) throws Exception {
		hibernateTemplate.save(work);
		
	}

	public List<Work> showAllWork() throws Exception {
		List<Work> workList= hibernateTemplate.find("from Work w order by id desc ");
		return workList;
	}
	public List<Work> showAllWorkByUid(String uid) throws Exception {
		List<Work> workList= hibernateTemplate.find("from Work w where w.uid= '" + uid+"' order by id desc ");
		return workList;
	}
	public void updateWork(Work work) throws Exception {
		hibernateTemplate.update(work);
		
	}

	public Pager showAllWorkForPager(Integer pageIndex) throws Exception {
		Pager pg = new Pager();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Work order by id  desc");//asc ---->desc
		Integer count = (Integer) session.createQuery("select count(*) from  Work order by id  desc").uniqueResult();
		int pageSize=pg.getPageSize();
		int start=pg.getStart();
		query.setFirstResult((pageIndex-1)*pageSize);
		pg.setPageIndex(pageIndex);
		System.out.println("pageIndex="+pageIndex);
		System.out.println("start="+start);
		query.setMaxResults(pageSize);
		pg.setTotal(count);
		pg.setTotalPage((int) Math.ceil((count + pageSize - 1) / pageSize));
		pg.setList(query.list());
		session.close();
		return pg;
	}
	public  Pager showAllWorkByUidForPager(Integer pageIndex,String uid) throws Exception{
		Pager pg = new Pager();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Work w where w.uid= '" + uid+"' order by id  desc");//asc ---->desc
		Integer count = (Integer) session.createQuery("select count(*) from  Work w where w.uid= '" + uid+"' order by id  desc").uniqueResult();
		int pageSize=pg.getPageSize();
		int start=pg.getStart();
		query.setFirstResult((pageIndex-1)*pageSize);
		pg.setPageIndex(pageIndex);
		System.out.println("pageIndex="+pageIndex);
		System.out.println("start="+start);
		query.setMaxResults(pageSize);
		pg.setTotal(count);
		pg.setTotalPage((int) Math.ceil((count + pageSize - 1) / pageSize));
		pg.setList(query.list());
		session.close();
		return pg;
	}
	
	
}
