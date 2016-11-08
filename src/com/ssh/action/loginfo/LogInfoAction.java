package com.ssh.action.loginfo;

import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.action.login.LoginAction;
import com.ssh.domain.User;
import com.ssh.model.Pager;
import com.ssh.service.loginfo.LogInfoService;
import com.ssh.service.user.UserService;
import com.ssh.util.HttpRequestDeviceUtils;
import com.ssh.util.PassWordDigester;
public class LogInfoAction extends ActionSupport{
	private static Logger log = Logger.getLogger(LogInfoAction.class);

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
   private String username;
   private String password;
   private UserService userService;
   private LogInfoService logInfoService;
   
   
public LogInfoService getLogInfoService() {
	return logInfoService;
}
public void setLogInfoService(LogInfoService logInfoService) {
	this.logInfoService = logInfoService;
}
public UserService getUserService() {
	return userService;
}
public void setUserService(UserService userService) {
	this.userService = userService;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public String showAllUser() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	List<User> usersList=userService.showAllUser();
	if(usersList!=null&&usersList.size()>0){
		request.setAttribute("usersList", usersList);
		System.out.println(usersList.toString());
		return "usersList";
	}
	return ERROR;
}
public String showAllUserForPage() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	String pageIndexS = request.getParameter("pageIndex");
	Integer pageIndex = 1;
	//用户必须登录 才能发表文章  记录 文章 作者 IP ID 时间
	String username=(String) ActionContext.getContext().getSession().get("user");
	if(username==null||"".equals(username)){
		return "login";
	}
	if(!"".equals(pageIndexS) && pageIndexS != null){
		pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		request.setAttribute("pageIndex", pageIndex);
	}
	//request.setAttribute("pager", userService.showAllUseForPager(pageIndex));
	request.setAttribute("pager", userService.showAllUseForPager(pageIndex,username));
	request.setAttribute("type", "list");
	return "usersList";
}
public String showAllUserForPageAdmin() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	String pageIndexS = request.getParameter("pageIndex");
	Integer pageIndex = 1;
	//用户必须登录 才能发表文章  记录 文章 作者 IP ID 时间
	String username=(String) ActionContext.getContext().getSession().get("user");
	if(username==null||"".equals(username)){
		return "login";
	}
	if(!"".equals(pageIndexS) && pageIndexS != null){
		pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		request.setAttribute("pageIndex", pageIndex);
	}
	request.setAttribute("pager", userService.showAllUseForPager(pageIndex));
	request.setAttribute("type", "list");
	return "adminUsersList";
}
/**
 *  本方法 只对 Admin管理员 查询数据库中 所有 操作 日志信息 列表
 * @return
 * @throws Exception
 */
public String showAllLogInfoForPageAdmin() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	String pageIndexS = request.getParameter("pageIndex");
	Integer pageIndex = 1;
	Boolean pcOrmobile=HttpRequestDeviceUtils.isMobileDevice(request);
	System.out.println("pcOrmobile=="+HttpRequestDeviceUtils.isMobileDevice(request));
	if(pcOrmobile){
     return "mobile";
	}
	if(!"".equals(pageIndexS) && pageIndexS != null){
		pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		request.setAttribute("pageIndex", pageIndex);
	}
	request.setAttribute("pager", logInfoService.showAllLogInfoForPage(pageIndex));
	request.setAttribute("type", "logInfo");
	return "adminLogInfoList";
}
public String updateUser() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	String id=request.getParameter("id");
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	if(id!=null){
		User user=new User();
		user.setPassword(password);
		user.setUsername(username);
		List<User> usersList=userService.getUserByID(id);
		User Usermess=usersList.get(0);
		if(usersList!=null&&usersList.size()>0){
			request.setAttribute("user", Usermess);
			System.out.println(Usermess.toString());
			return "Usermess";
			}
		}
	return ERROR;
}     
public void saveUserpw() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	String id=request.getParameter("id");
	//String username=request.getParameter("username");
	String password=request.getParameter("password");
	password=PassWordDigester.getPassMD5(password);
	System.out.println("saveUserpw------password--pdate"+password);
	if(id!=null&&password!=null){
		userService.saveUserpwByID(id,password);
		}
	showAllUser();
} 
public void DelUser() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	String id=request.getParameter("id");
	//String username=request.getParameter("username");
	String password=request.getParameter("password");
	if(id!=null){
		userService.delUserByID(id);
		}
	//showAllUser();
}
public void saveUser() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	//String id=request.getParameter("id");
	HttpServletResponse response = ServletActionContext.getResponse();
	PrintWriter out=response.getWriter();
	UUID uuid = UUID.randomUUID(); 
    System.out.println (uuid);
	String username=request.getParameter("username");
	System.out.println("username="+username);
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	password=PassWordDigester.getPassMD5(password);
	if(username!=null&&password!=null){
		User user=new User();
		user.setUsername(username);
		user.setEmail(email);;
		user.setPassword(password);
		userService.saveUser(user);
		out.write("ok");
		}else{
			out.write("fail");
		}
	out.flush();
	out.close();
	//showAllUser();
} 
public String addUserUI(){
	return "addUserUI";
}
public String showArticle(){
	HttpServletRequest request = ServletActionContext.getRequest();
	request.setAttribute("type", "sign");
	return "addArticleUI";
}

}
