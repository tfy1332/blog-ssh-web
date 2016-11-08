package com.ssh.service.project;

import java.util.List;

import com.ssh.domain.Project;
import com.ssh.model.Pager;

public interface ProjectService {
	public abstract List<Project> showAllProject() throws Exception;

	public abstract List<Project> showAllProjectByUid(String uid) throws Exception;

	public abstract void delProjectByID(String id) throws Exception;

	public abstract void saveProject(Project project) throws Exception;
	public abstract void updateProject(Project project) throws Exception;

	public  Pager showAllProjectForPager(Integer pageIndex) throws Exception;
	public  Pager showAllProjectByUidForPager(Integer pageIndex,String uid) throws Exception;

	public abstract Project getProjectByUserName(String username) throws Exception;

	public abstract Project getProjectByUid(String uid) throws Exception;
	public abstract Project getProjectByid(String id) throws Exception;

}
