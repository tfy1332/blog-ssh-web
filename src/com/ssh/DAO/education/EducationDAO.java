package com.ssh.DAO.education;

import java.util.List;

import com.ssh.domain.Education;
import com.ssh.domain.User;
import com.ssh.model.Pager;

public interface EducationDAO {
	public abstract List<Education> showAllEducation() throws Exception;

	public abstract List<Education> showAllEducationByUid(String uid) throws Exception;

	public abstract void delEducationByID(String id) throws Exception;

	public abstract void saveEducation(Education education) throws Exception;
	public abstract void updateEducation(Education education) throws Exception;

	public  Pager showAllEducationForPager(Integer pageIndex) throws Exception;
	public  Pager showAllEducationByUidForPager(Integer pageIndex,String uid) throws Exception;

}
