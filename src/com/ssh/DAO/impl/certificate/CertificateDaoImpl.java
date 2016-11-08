package com.ssh.DAO.impl.certificate;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.ssh.DAO.certificate.CertificateDAO;
import com.ssh.domain.Certificate;
import com.ssh.model.Pager;

public class CertificateDaoImpl implements CertificateDAO {
	private static Logger log = Logger.getLogger(CertificateDaoImpl.class);
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


	public void delCertificateByID(String id) throws Exception {
		Session session=sessionFactory.openSession();
		String hql="delete  from  Certificate c  where c.id=:id"; 
		Query query=session.createQuery(hql);     
		 query.setParameter("id",id,Hibernate.STRING);   
		 query.executeUpdate();
		 session.close();
		
	}

	public Certificate getCertificateByUserName(String username)
			throws Exception {
		List<Certificate> certiList= hibernateTemplate.find("from Certificate c order by id desc ");
		return certiList.get(0);//这个方法是错误的 注释说明一下    想想以后有什么用  getWorkByUid
	}

	public void saveCertificate(Certificate certificate) throws Exception {
		hibernateTemplate.save(certificate);		
	}

	public List<Certificate> showAllCertificate() throws Exception {
		List<Certificate> certiList= hibernateTemplate.find("from Certificate c order by id desc ");
		return certiList;
	}

	public List<Certificate> showAllCertificateByUid(String uid)
			throws Exception {
		List<Certificate> certiList= hibernateTemplate.find("from Certificate c where c.uid= '" + uid+"' order by id desc ");
		return certiList;
	}

	public Pager showAllCertificateByUidForPager(Integer pageIndex, String uid)
			throws Exception {
		
		
		Pager pg = new Pager();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Certificate c where c.uid= '" + uid+"' order by id  desc");//asc ---->desc
		Integer count = (Integer) session.createQuery("select count(*) from  Certificate c where c.uid= '" + uid+"' order by id  desc").uniqueResult();
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

	public Pager showAllCertificateForPager(Integer pageIndex) throws Exception {
		Pager pg = new Pager();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Certificate order by id  desc");//asc ---->desc
		Integer count = (Integer) session.createQuery("select count(*) from  Certificate order by id  desc").uniqueResult();
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

	public void updateCertificate(Certificate certificate) throws Exception {
		hibernateTemplate.update(certificate);		
	}

	public Certificate getCertificateById(String id) throws Exception {
		List<Certificate> certiList= hibernateTemplate.find("from Certificate c where c.id= '" + id+"'");
		Certificate certificate=null;
		if(certiList!=null &&certiList.size()>0){
			certificate=certiList.get(0);
		}
		return certificate;
	}
	
	
}
