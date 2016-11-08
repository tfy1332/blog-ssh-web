package com.ssh.service.impl.work;

import java.util.List;

import com.ssh.DAO.work.WorkDAO;
import com.ssh.domain.User;
import com.ssh.domain.Work;
import com.ssh.model.Pager;
import com.ssh.service.work.WorkService;

public class WorkServiceImpl implements WorkService{
private WorkDAO workDAO;
	public WorkDAO getWorkDAO() {
	return workDAO;
}

public void setWorkDAO(WorkDAO workDAO) {
	this.workDAO = workDAO;
}



	public void delWorkByID(String id) throws Exception {
		workDAO.delWorkByID(id);		
	}

	public Work getWorkByUid(String uid) throws Exception {
		return workDAO.getWorkByUid(uid);
	}

	public Work getWorkByUserName(String username) throws Exception {
		return workDAO.getWorkByUserName(username);	
	}

	public void saveWork(Work work) throws Exception {
		workDAO.saveWork(work);			
	}

	public List<Work> showAllWork() throws Exception {
		return workDAO.showAllWork();
	}

	public Pager showAllWorkForPager(Integer pageIndex) throws Exception {
		return workDAO.showAllWorkForPager(pageIndex);	
	}

	public void updateWork(Work work) throws Exception {
		workDAO.updateWork(work);			
	}

	public List<Work> showAllWorkByUid(String uid) throws Exception {
		return workDAO.showAllWorkByUid(uid);
	}

	public Pager showAllWorkByUidForPager(Integer pageIndex, String uid) throws Exception {
		return workDAO.showAllWorkByUidForPager(pageIndex, uid);
	}
}
