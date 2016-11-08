package com.ssh.service.impl.user;

import java.util.List;

import com.ssh.DAO.user.UserDAO;
import com.ssh.domain.User;
import com.ssh.model.Pager;
import com.ssh.service.user.UserService;

public class UserServiceImpl implements UserService{
private UserDAO userDAO;


	public UserDAO getUserDAO() {
	return userDAO;
}

public void setUserDAO(UserDAO userDAO) {
	this.userDAO = userDAO;
}

	public List<User> login(User user) throws Exception {
		return userDAO.login(user);
	}

	public List<User> showAllUser() throws Exception {
		return userDAO.showAllUser();
	}

	public List<User> getUserByID(String id) throws Exception {
		return userDAO.getUserByID(id);
	}

	public void saveUserpwByID(String id, String password) throws Exception {
		userDAO.saveUserpwByID(id,password);
	}
	
	public void saveUserpwByEmail(String email, String password) throws Exception {
		userDAO.saveUserpwByEmail(email,password);
	}

	public void delUserByID(String id) throws Exception {
		userDAO.delUserByID(id);
		
	}

	public void saveUser(User user) throws Exception {
		 userDAO.saveUser(user);
		
	}
	
	public Pager showAllUseForPager(Integer pageIndex) throws Exception {
		return userDAO.showAllUseForPager(pageIndex);
	}

	public User getUserByUserName(String username) throws Exception {
		return  userDAO.getUserByUserName(username);
	}

	public User getUserByEmail(String email) throws Exception {
		return  userDAO.getUserByEmail(email);
	}
	
	public Pager showAllUseForPager(Integer pageIndex, String username)
			throws Exception {
		return userDAO.showAllUseForPager(pageIndex,username);
	}
	public void updateUser(User user) throws Exception {
		userDAO.updateUser(user);		
	}

}
