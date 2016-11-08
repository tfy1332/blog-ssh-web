package com.ssh.service.loginfo;

import java.util.List;

import com.ssh.domain.LogInfo;
import com.ssh.domain.User;
import com.ssh.model.Pager;

public interface LogInfoService {
public abstract List<User> login(User user) throws Exception;

public abstract List<User> showAllUser() throws Exception;

public abstract List<User> getUserByID(String id) throws Exception;

public abstract void saveUserpwByID(String id, String password) throws Exception;

public abstract void delUserByID(String id) throws Exception;

public abstract void saveLogInfo(LogInfo logInfo) throws Exception;
public abstract void updateUser(User user) throws Exception;
public  Pager showAllUseForPager(Integer pageIndex) throws Exception;

public abstract User getUserByUserName(String username) throws Exception;

public abstract Pager showAllUseForPager(Integer pageIndex, String username) throws Exception;
public abstract Pager showAllLogInfoForPage(Integer pageIndex) throws Exception;


}
