package com.ssh.DAO.work;

import java.util.List;

import com.ssh.domain.Project;
import com.ssh.domain.User;
import com.ssh.domain.Work;
import com.ssh.model.Pager;

public interface WorkDAO {

public abstract List<Work> showAllWork() throws Exception;

public abstract List<Work> showAllWorkByUid(String uid) throws Exception;

public abstract void delWorkByID(String id) throws Exception;

public abstract void saveWork(Work work) throws Exception;
public abstract void updateWork(Work work) throws Exception;

public  Pager showAllWorkForPager(Integer pageIndex) throws Exception;
public  Pager showAllWorkByUidForPager(Integer pageIndex,String uid) throws Exception;

public abstract Work getWorkByUserName(String username) throws Exception;

public abstract Work getWorkByUid(String uid) throws Exception;


}
