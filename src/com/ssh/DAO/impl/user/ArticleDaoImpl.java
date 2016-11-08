package com.ssh.DAO.impl.user;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.ssh.DAO.impl.loginfo.LogInfoDaoImpl;
import com.ssh.DAO.user.ArticleDAO;
import com.ssh.domain.Article;
import com.ssh.domain.Revert;
import com.ssh.domain.User;
import com.ssh.model.Pager;

public class ArticleDaoImpl implements ArticleDAO {
	private static Logger log = Logger.getLogger(ArticleDaoImpl.class);
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
    
	public Pager showAllArticleForPage(Integer pageIndex) throws Exception {
		Pager pg = new Pager();
		Session session1 = sessionFactory.openSession();
		Session session2 = sessionFactory.openSession();
		System.out.println("======session1======"+session1);
		System.out.println("======session2======"+session2);
		Query query = session1.createQuery("from Article order by id  desc");
		Integer count = (Integer) session2.createQuery("select count(*) from  Article order by id  desc").uniqueResult();
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
		session1.close();
		session2.close();
		return pg;
	}

	public void saveArticle(Article article) throws Exception {
		hibernateTemplate.saveOrUpdate(article);
		
	}

	public Article getArticleByID(String id) throws Exception {
		 
		List tempList= hibernateTemplate.find("from Article a where a.id= '" + id+"'");
		Article article=(Article) tempList.get(0);
		return article;
	}

	public void  updateArticle(Article article) throws Exception {
		/*Session session=sessionFactory.openSession();
		String hql="update Article a set a.title=:title where u.id=:id"; 
		Query query=session.createQuery(hql);     
		 query.setParameter("title",article.getTitle(),Hibernate.STRING);   
		 query.setParameter("content",article.getContent(),Hibernate.STRING);   
		 query.setParameter("article_Type",article.getArticle_Type(),Hibernate.STRING);   
		 query.setParameter("originalFlag",article.getOriginalFlag(),Hibernate.STRING);   
		 query.setParameter("id",article.getId(),Hibernate.STRING);   
		 query.executeUpdate();
		 session.close();
		 */
		 hibernateTemplate.update(article);
		// hibernateTemplate.saveOrUpdate(article);
	}

	public void delArticleByID(String id) throws Exception {
		Session session=sessionFactory.openSession();
		String hql="delete  from  Article a  where a.id=:id"; 
		Query query=session.createQuery(hql);     
		 query.setParameter("id",id,Hibernate.STRING);   
		 query.executeUpdate();
		 session.close();
	}

	public void saveRevert(Revert revert) throws Exception {
		hibernateTemplate.save(revert);
	}

	@SuppressWarnings("unchecked")
	public List<Revert> showRevertByArticles_id(Integer articlesId)
			throws Exception {
		return hibernateTemplate.find("from Revert r where r.articles_id= "+articlesId);
	}
	public Pager showAllArticleForPageByUsername(String username,Integer pageIndex) throws Exception {
		Pager pg = new Pager();
		Session session = sessionFactory.openSession();
		System.out.println("showAllArticleForPageByUsername-----"+username);
		Query query = session.createQuery(" from Article a where a.AuthorName='"+username+"' order by id  desc");
		Integer count = (Integer) session.createQuery("select count(*) from  Article a where a.AuthorName='"+username+"' order by id  desc").uniqueResult();
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
