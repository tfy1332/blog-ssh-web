package com.ssh.service.impl.login;

import java.util.List;

import com.ssh.DAO.login.LoginDAO;
import com.ssh.domain.User;
import com.ssh.service.login.LoginService;

public class LoginServiceImpl implements LoginService{
private LoginDAO loginDAO;


	public LoginDAO getLoginDAO() {
	return loginDAO;
}

public void setLoginDAO(LoginDAO loginDAO) {
	this.loginDAO = loginDAO;
}

	public User login(User user) throws Exception {
		return loginDAO.login(user);
	}

	public List<User> showAllUser() throws Exception {
		return loginDAO.showAllUser();
	}

	public List<User> getUserByID(String id) throws Exception {
		return loginDAO.getUserByID(id);
	}

	public void saveUserpwByID(String id, String password) throws Exception {
		loginDAO.saveUserpwByID(id,password);
	}

	public void delUserByID(String id) throws Exception {
		loginDAO.delUserByID(id);
		
	}

	public void saveUser(User user) throws Exception {
		loginDAO.saveUser(user);
		
	}

	public void updateUser(User user) throws Exception {
		loginDAO.updateUser(user);
		
	}

	public List<User> getUserByUsername(String username) throws Exception {
		return loginDAO.getUserByUsername(username);
	}

	public List<User> getUserByEmail(String email) {
		return loginDAO.getUserByEmail(email);
	}

}
