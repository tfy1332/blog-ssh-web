package com.ssh.DAO.certificate;

import java.util.List;

import com.ssh.domain.Certificate;
import com.ssh.model.Pager;

public interface CertificateDAO {
	public abstract List<Certificate> showAllCertificate() throws Exception;
	public abstract List<Certificate> showAllCertificateByUid(String uid) throws Exception;


	public abstract void delCertificateByID(String id) throws Exception;

	public abstract void saveCertificate(Certificate certificate) throws Exception;
	public abstract void updateCertificate(Certificate certificate) throws Exception;

	public  Pager showAllCertificateForPager(Integer pageIndex) throws Exception;
	public  Pager showAllCertificateByUidForPager(Integer pageIndex,String uid) throws Exception;

	public abstract Certificate getCertificateByUserName(String username) throws Exception;

	public abstract Certificate getCertificateById(String id) throws Exception;

}
