package com.ssh.DAO.impl.education;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.ssh.DAO.education.EducationDAO;
import com.ssh.domain.Education;
import com.ssh.model.Pager;

public class EducationDaoImpl implements EducationDAO {
	private static Logger log = Logger.getLogger(EducationDaoImpl.class);
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
	

	public void delEducationByID(String id) throws Exception {
		Session session=sessionFactory.openSession();
		String hql="delete  from  Education e where e.id=:id"; 
		Query query=session.createQuery(hql);     
		 query.setParameter("id",id,Hibernate.STRING);   
		 query.executeUpdate();
		 session.close();		
	}

	public void saveEducation(Education education) throws Exception {
		hibernateTemplate.save(education);		
	}

	public List<Education> showAllEducation() throws Exception {
		 List<Education> eduList= hibernateTemplate.find("from Education e order by id desc ");
		return eduList;
	}

	public Pager showAllEducationForPager(Integer pageIndex) throws Exception {
		Pager pg = new Pager();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Education order by id  desc");//asc ---->desc
		Integer count = (Integer) session.createQuery("select count(*) from  Education order by id  desc").uniqueResult();
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

	public void updateEducation(Education education) throws Exception {
		hibernateTemplate.update(education);				
	}

	public List<Education> showAllEducationByUid(String uid) throws Exception {
		 List<Education> eduList= hibernateTemplate.find("from Education e where e.uid='"+uid+"' order by id desc ");
			return eduList;
	}

	public Pager showAllEducationByUidForPager(Integer pageIndex, String uid)	throws Exception {
		Pager pg = new Pager();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Education e where e.uid='"+uid+"' order by id  desc");//asc ---->desc
		Integer count = (Integer) session.createQuery("select count(*) from  Education e where e.uid='"+uid+"' order by id  desc").uniqueResult();
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
