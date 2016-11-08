package com.ssh.service.impl.project;

import java.util.List;

import com.ssh.DAO.project.ProjectDAO;
import com.ssh.domain.Project;
import com.ssh.model.Pager;
import com.ssh.service.project.ProjectService;

public class ProjectServiceImpl implements ProjectService{
private ProjectDAO projectDAO;




	public ProjectDAO getProjectDAO() {
	return projectDAO;
}

public void setProjectDAO(ProjectDAO projectDAO) {
	this.projectDAO = projectDAO;
}

public void delProjectByID(String id) throws Exception {
	projectDAO.delProjectByID(id);
}

public Project getProjectByUid(String uid) throws Exception {
	return projectDAO.getProjectByUid(uid);
}

public Project getProjectByUserName(String username) throws Exception {
	return projectDAO.getProjectByUserName(username);
}

public void saveProject(Project project) throws Exception {
	 projectDAO.saveProject(project);	
}

public List<Project> showAllProject() throws Exception {
	return  projectDAO.showAllProject();	
}

public Pager showAllProjectForPager(Integer pageIndex) throws Exception {
	return  projectDAO.showAllProjectForPager(pageIndex);
}

public void updateProject(Project project) throws Exception {
	projectDAO.updateProject(project);
}

public Project getProjectByid(String id) throws Exception {
	return projectDAO.getProjectByid(id);
}

public List<Project> showAllProjectByUid(String uid) throws Exception {
	return projectDAO.showAllProjectByUid(uid);
}

public Pager showAllProjectByUidForPager(Integer pageIndex, String uid) throws Exception {
	return projectDAO.showAllProjectByUidForPager(pageIndex,uid);
}


}
