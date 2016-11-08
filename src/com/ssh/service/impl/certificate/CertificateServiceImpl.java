package com.ssh.service.impl.certificate;

import java.util.List;

import com.ssh.DAO.certificate.CertificateDAO;
import com.ssh.domain.Certificate;
import com.ssh.model.Pager;
import com.ssh.service.certificate.CertificateService;

public class CertificateServiceImpl implements CertificateService{
private CertificateDAO certificateDAO;
	public CertificateDAO getCertificateDAO() {
	return certificateDAO;
}

public void setCertificateDAO(CertificateDAO certificateDAO) {
	this.certificateDAO = certificateDAO;
}

	public void delCertificateByID(String id) throws Exception {
		certificateDAO.delCertificateByID(id);		
	}

	public Certificate getCertificateByUserName(String username) throws Exception {
		return certificateDAO.getCertificateByUserName(username);	
	}

	public void saveCertificate(Certificate certificate) throws Exception {
		certificateDAO.saveCertificate(certificate);			
	}

	public List<Certificate> showAllCertificate() throws Exception {
		return certificateDAO.showAllCertificate();
	}

	public Pager showAllCertificateForPager(Integer pageIndex) throws Exception {
		return certificateDAO.showAllCertificateForPager(pageIndex);	
	}

	public void updateCertificate(Certificate certificate) throws Exception {
		certificateDAO.updateCertificate(certificate);			
	}

	public List<Certificate> showAllCertificateByUid(String uid) throws Exception {
		return certificateDAO.showAllCertificateByUid(uid);
	}

	public Pager showAllCertificateByUidForPager(Integer pageIndex, String uid) throws Exception {
		return certificateDAO.showAllCertificateByUidForPager(pageIndex, uid);
	}

	public Certificate getCertificateById(String id) throws Exception {
		return certificateDAO.getCertificateById(id);
	}
}
