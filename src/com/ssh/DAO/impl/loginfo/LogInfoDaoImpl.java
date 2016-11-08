package com.ssh.DAO.impl.loginfo;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.ssh.DAO.impl.login.LoginDaoImpl;
import com.ssh.DAO.loginfo.LogInfoDAO;
import com.ssh.DAO.user.UserDAO;
import com.ssh.domain.LogInfo;
import com.ssh.domain.User;
import com.ssh.model.Pager;

public class LogInfoDaoImpl implements LogInfoDAO {
	private static Logger log = Logger.getLogger(LogInfoDaoImpl.class);
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
	public List<User> login(User user) throws Exception {
		return hibernateTemplate.find("from User u where u.username = '" + user.getUsername() + "' and u.password='"+user.getPassword()+"'");
	}

	@SuppressWarnings("unchecked")
	public List<User> showAllUser() {
		return hibernateTemplate.find("from User");
	}

	@SuppressWarnings("unchecked")
	public List<User> getUserByID(String id) throws Exception {
		return hibernateTemplate.find("from User u where u.id= '" + id+"'");
	}

	public void saveUserpwByID(String id, String password) throws Exception {
		/*
		 * C):setParameter() 鏂规硶://鍙互缁戝畾浠绘剰绫诲瀷鐨勫弬鏁�//鎺ㄨ崘   
		 *  String hql=鈥漟rom User user where user.name=:userName 鈥�    Query query=session.createQuery(hql);     
		 *  query.setParameter(鈥渃ustomername鈥�name,Hibernate.STRING);   //鍛藉悕鍙傛暟鍚嶇О, 鍛藉悕鍙傛暟瀹為檯鍊� 鍛藉悕鍙傛暟鏄犲皠绫诲瀷 ,   
		 *  //瀵逛簬涓�簺鍩烘湰绫诲瀷, hibernate 鍙互鐚滄祴鍑哄弬鏁版槧灏勭被鍨� 浣嗘槸Date绫诲瀷涓嶅彲浠�    
		 *  //搴斾负瀹冧細瀵瑰簲hibernate鐨勫绉嶆槧灏勭被鍨� 鍍忔槸 Hibernate.DATE, Hibernate.TIMESTAMP 
		 */
		Session session=sessionFactory.openSession();
		String hql="update User u  set u.password=:newPassword where u.id=:id"; 
		Query query=session.createQuery(hql);     
		 query.setParameter("newPassword",password,Hibernate.STRING);   
		 query.setParameter("id",id,Hibernate.STRING);   
		 query.executeUpdate();
		 session.close();
	}

	public void delUserByID(String id) throws Exception {
		Session session=sessionFactory.openSession();
		String hql="delete  from  User u  where u.id=:id"; 
		Query query=session.createQuery(hql);     
		 query.setParameter("id",id,Hibernate.STRING);   
		 query.executeUpdate();
		 session.close();
	}

	public void saveLogInfo(LogInfo logInfo) throws Exception {
		hibernateTemplate.save(logInfo);
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

	public Pager showAllLogInfoForPage(Integer pageIndex) throws Exception {
		Pager pg = new Pager();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from LogInfo order by id  desc");//asc ---->desc
		Integer count = (Integer) session.createQuery("select count(*) from  LogInfo order by id  desc").uniqueResult();
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
