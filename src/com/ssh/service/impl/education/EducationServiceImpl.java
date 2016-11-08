package com.ssh.service.impl.education;

import java.util.List;

import com.ssh.DAO.education.EducationDAO;
import com.ssh.domain.Education;
import com.ssh.model.Pager;
import com.ssh.service.education.EducationService;

public class EducationServiceImpl implements EducationService{
private EducationDAO educationDAO;



	public EducationDAO getEducationDAO() {
	return educationDAO;
}

public void setEducationDAO(EducationDAO educationDAO) {
	this.educationDAO = educationDAO;
}

public void delEducationByID(String id) throws Exception {
	educationDAO.delEducationByID(id);	
}

public void saveEducation(Education education) throws Exception {
	educationDAO.saveEducation(education);	
	
}

public List<Education> showAllEducation() throws Exception {
	return educationDAO.showAllEducation();	
}

public Pager showAllEducationForPager(Integer pageIndex) throws Exception {
	return educationDAO.showAllEducationForPager(pageIndex);
}

public void updateEducation(Education education) throws Exception {
	educationDAO.updateEducation(education);	
}

public List<Education> showAllEducationByUid(String uid) throws Exception {
	return educationDAO.showAllEducationByUid(uid);
}

public Pager showAllEducationByUidForPager(Integer pageIndex, String uid) throws Exception {
	return educationDAO.showAllEducationByUidForPager(pageIndex, uid);
}

	
}
