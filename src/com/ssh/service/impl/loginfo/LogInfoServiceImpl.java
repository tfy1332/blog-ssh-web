package com.ssh.service.impl.loginfo;

import java.util.List;

import com.ssh.DAO.loginfo.LogInfoDAO;
import com.ssh.domain.LogInfo;
import com.ssh.domain.User;
import com.ssh.model.Pager;
import com.ssh.service.loginfo.LogInfoService;
import com.ssh.service.user.UserService;

public class LogInfoServiceImpl implements LogInfoService{
private LogInfoDAO logInfoDAO;



	public LogInfoDAO getLogInfoDAO() {
	return logInfoDAO;
}

public void setLogInfoDAO(LogInfoDAO logInfoDAO) {
	this.logInfoDAO = logInfoDAO;
}

	public List<User> login(User user) throws Exception {
		return logInfoDAO.login(user);
	}

	public List<User> showAllUser() throws Exception {
		return logInfoDAO.showAllUser();
	}

	public List<User> getUserByID(String id) throws Exception {
		return logInfoDAO.getUserByID(id);
	}

	public void saveUserpwByID(String id, String password) throws Exception {
		logInfoDAO.saveUserpwByID(id,password);
	}

	public void delUserByID(String id) throws Exception {
		logInfoDAO.delUserByID(id);
		
	}

	public void saveLogInfo(LogInfo logInfo) throws Exception {
		 logInfoDAO.saveLogInfo(logInfo);
		
	}
	
	public Pager showAllUseForPager(Integer pageIndex) throws Exception {
		return logInfoDAO.showAllUseForPager(pageIndex);
	}

	public User getUserByUserName(String username) throws Exception {
		return  logInfoDAO.getUserByUserName(username);
	}

	public Pager showAllUseForPager(Integer pageIndex, String username)
			throws Exception {
		return logInfoDAO.showAllUseForPager(pageIndex,username);
	}
	public void updateUser(User user) throws Exception {
		logInfoDAO.updateUser(user);		
	}

	public Pager showAllLogInfoForPage(Integer pageIndex) throws Exception {
		return logInfoDAO.showAllLogInfoForPage(pageIndex);
	}
}
