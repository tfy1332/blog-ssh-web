package com.ssh.DAO.impl.login;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.ssh.DAO.login.LoginDAO;
import com.ssh.action.user.UserAction;
import com.ssh.domain.User;

public class LoginDaoImpl implements LoginDAO {
	private static Logger log = Logger.getLogger(LoginDaoImpl.class);
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
	public User login(User user) throws Exception {
		Session session=sessionFactory.openSession();
		String hql="from User u  where u.username=:username"; 
		Query query=session.createQuery(hql);
		 query.setParameter("username",user.getUsername(),Hibernate.STRING);   
		 User dbUser=(User) query.setMaxResults(1).uniqueResult();
		 session.close();
		 return dbUser;
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
		 * C):setParameter() 方法://可以绑定任意类型的参数 //推荐   
		 *  String hql=”from User user where user.name=:userName ”;    Query query=session.createQuery(hql);     
		 *  query.setParameter(“customername”,name,Hibernate.STRING);   //命名参数名称, 命名参数实际值, 命名参数映射类型 ,   
		 *  //对于一些基本类型, hibernate 可以猜测出参数映射类型, 但是Date类型不可以,    
		 *  //应为它会对应hibernate的多种映射类型, 像是 Hibernate.DATE, Hibernate.TIMESTAMP 
		 */
		Session session=sessionFactory.openSession();
		String hql="update User u  set u.password=:newPassword where u.id=:id"; 
		Query query=session.createQuery(hql);     
		 query.setParameter("newPassword",password,Hibernate.STRING);   
		 query.setParameter("id",id,Hibernate.STRING);   
		 query.executeUpdate();
		 session.close();
		 //hibernateTemplate.update("update User u  set u.password='"+password+"'  where u.id= '" +id+"'");
	}

	public void delUserByID(String id) throws Exception {
		Session session=sessionFactory.openSession();
		String hql="delete  from  User u  where u.id=:id"; 
		Query query=session.createQuery(hql);     
		 //query.setParameter("newPassword",password,Hibernate.STRING);   
		 query.setParameter("id",id,Hibernate.STRING);   
		 query.executeUpdate();
		 session.close();
	}

	public void saveUser(User user) throws Exception {
		/*Session session=sessionFactory.openSession();
		String hql="insert into  from  User u  where u.id=:id"; 
		Query query=session.createQuery(hql);     
		 //query.setParameter("newPassword",password,Hibernate.STRING);   
		 //query.setParameter("id",id,Hibernate.STRING);   
		 query.executeUpdate();*/
		//hibernateTemplate.saveOrUpdate(user);//
		
		/*Session session=sessionFactory.openSession();
		String hql="update User u  set u.password=:newPassword where u.id=:id"; 
		Query query=session.createQuery(hql);     
		 query.setParameter("newPassword",password,Hibernate.STRING);   
		 query.setParameter("id",id,Hibernate.STRING);   
		 query.executeUpdate();*/
		hibernateTemplate.saveOrUpdate(user);
	}

	public void updateUser(User user) throws Exception {
		//hibernateTemplate.saveOrUpdate(user);// hibernateTemplate.save(user);//
		 hibernateTemplate.update(user);
	}

	public List<User> getUserByUsername(String username) {
		return hibernateTemplate.find("from User u where u.username= '" +username+"'");
	}

	public List<User> getUserByEmail(String email) {
		return hibernateTemplate.find("from User u where u.email= '" +email+"'");
	}
}
