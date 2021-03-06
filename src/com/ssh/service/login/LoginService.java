package com.ssh.service.login;

import java.util.List;

import com.ssh.domain.User;

public interface LoginService {
public abstract User login(User user) throws Exception;

public abstract List<User> showAllUser() throws Exception;

public abstract List<User> getUserByID(String id) throws Exception;
public abstract List<User> getUserByUsername(String username) throws Exception;

public abstract void saveUserpwByID(String id, String password) throws Exception;

public abstract void delUserByID(String id) throws Exception;

public abstract void saveUser(User user) throws Exception;
public abstract void updateUser(User user) throws Exception;

public abstract List<User> getUserByEmail(String email);
}
