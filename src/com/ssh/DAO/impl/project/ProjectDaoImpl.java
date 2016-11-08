package com.ssh.DAO.impl.project;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.ssh.DAO.project.ProjectDAO;
import com.ssh.domain.Project;
import com.ssh.model.Pager;

public class ProjectDaoImpl implements ProjectDAO {
	private static Logger log = Logger.getLogger(ProjectDaoImpl.class);
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


	public void delProjectByID(String id) throws Exception {
		Session session=sessionFactory.openSession();
		String hql="delete  from  Project p  where p.id=:id"; 
		Query query=session.createQuery(hql);     
		 query.setParameter("id",id,Hibernate.STRING);   
		 query.executeUpdate();
		 session.close();		
	}

	public Project getProjectByUid(String uid) throws Exception {
		List<Project> projectList= hibernateTemplate.find("from Project p where p.id= '" + uid+"'");
		Project project=null;
		if(projectList!=null &&projectList.size()>0){
			project=projectList.get(0);
		}
		return project;
	}

	public Project getProjectByUserName(String username) throws Exception {
		List<Project> projectList= hibernateTemplate.find("from Project p where p.username= '" + username+"'");
		Project project=null;
		if(projectList!=null &&projectList.size()>0){
			project=projectList.get(0);
		}
		return project;
	}

	public void saveProject(Project project) throws Exception {
		hibernateTemplate.save(project);		
	}

	public List<Project> showAllProject() throws Exception {
		return hibernateTemplate.find("from Project");
	}
	
	public List<Project> showAllProjectByUid(String uid) throws Exception {
		List<Project> projectList= hibernateTemplate.find("from Project p where p.uid= '" + uid+"'");
		return projectList;
	}

	public Pager showAllProjectForPager(Integer pageIndex) throws Exception {
		Pager pg = new Pager();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Project order by id  desc");//asc ---->desc
		Integer count = (Integer) session.createQuery("select count(*) from  Project order by id  desc").uniqueResult();
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

	public Pager showAllProjectByUidForPager(Integer pageIndex,String uid) throws Exception {
		Pager pg = new Pager();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Project p where p.uid= '" + uid+"' order by id  desc");//asc ---->desc
		Integer count = (Integer) session.createQuery("select count(*) from  Project p where p.uid= '" + uid+"' order by id  desc").uniqueResult();
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
	public void updateProject(Project project) throws Exception {
		hibernateTemplate.update(project);				
	}

	public Project getProjectByid(String id) throws Exception {
		List<Project> projectList= hibernateTemplate.find("from Project p where p.id= '" + id+"'");
		Project project=null;
		if(projectList!=null &&projectList.size()>0){
			project=projectList.get(0);
		}
		return project;
	}
}
