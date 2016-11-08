package com.ssh.action.login;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.LogInfo;
import com.ssh.domain.User;
import com.ssh.service.login.LoginService;
import com.ssh.service.loginfo.LogInfoService;
import com.ssh.util.GetIP;
import com.ssh.util.HttpRequestDeviceUtils;
import com.ssh.util.MailSender;
import com.ssh.util.PassWordDigester;
public class LoginAction extends ActionSupport{
	private static Logger log = Logger.getLogger(LoginAction.class);

	/**
	 * 
	 */
   private static final long serialVersionUID = 1L;
   private String username;
   private String password;
   private LoginService loginService;
   private LogInfoService logInfoService;
   
public LogInfoService getLogInfoService() {
	return logInfoService;
}
public void setLogInfoService(LogInfoService logInfoService) {
	this.logInfoService = logInfoService;
}
public LoginService getLoginService() {
	return loginService;
}
public void setLoginService(LoginService loginService) {
	this.loginService = loginService;
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
public  String login() throws Exception{
	log.info("welcome to log4j demo-----》 login!");
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response=ServletActionContext.getResponse();
	response.setContentType("text/html;charset=GBK");
	PrintWriter out = response.getWriter();
	Boolean pcOrmobile=HttpRequestDeviceUtils.isMobileDevice(request);
	System.out.println("pcOrmobile=="+HttpRequestDeviceUtils.isMobileDevice(request));
	if(pcOrmobile){
		out.print("toMobile");
		log.info("用户使用移动端(Phone、PAD)登录BLOG系统!");
		return null;
	}
	log.info("用户使用PC端登录BLOG系统!");
	System.out.println("pcOrmobile=="+HttpRequestDeviceUtils.isMobileDevice(request));
	System.out.println("LoginIP="+GetIP.getIpAddr2(request));
	String loginIP=GetIP.getIpAddr2(request);
	Date date=new Date();
	//SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	System.out.println(df.format(date));
	String lastLogin=df.format(date);
	log.info("用户"+username+"使用PC端登录BLOG系统!");
	String savetime=request.getParameter("saveTime");  
	if(username!=null&&password!=null){
		log.info("当前时间:"+lastLogin+"  用户22222:"+username+"使用PC端登录BLOG系统!用户密码是:"+password+"  用户的IP是:"+loginIP);
		System.out.println("LoginIP="+GetIP.getIpAddr2(request));
		User user=new User();
		user.setPassword(password);
		user.setUsername(username);
		//user.setLoginIP(loginIP);
		//user.setLastLogin(lastLogin);
	    System.out.println("未加密的密码:"+password);  
	      //将123加密  
		User dbUser = loginService.login(user);
		if( dbUser== null){
			out.write("用户名不存在");
			System.out.println("用户名不存在");
			return null;
		}
		if(!dbUser.getPassword().equals(PassWordDigester.getPassMD5(password))){
			out.write("密码不正确");
			System.out.println("密码不正确");
			return null;
		}
		if(null!=savetime&&!savetime.isEmpty()){  
            int saveTime=Integer.parseInt(savetime);//这里接受的表单值为天来计算的  
            int seconds=saveTime*24*60*60;  
            Cookie cookie = new Cookie("user", username+"=="+password);  
            cookie.setMaxAge(seconds);                     
            response.addCookie(cookie);  
        }  
		request.setAttribute("username",username);  
        //request.getRequestDispatcher("/main.jsp").forward(request,response);  
		String email=dbUser.getEmail();
		dbUser.setLoginIP(loginIP);
		dbUser.setLastLogin(lastLogin);
		System.out.println("登录时给用户发送邮件：email="+email);
		//String flag  邮件发送标志 0----表示发送登录提示邮件		 1----表示发送用户提交找回密码的提示信息邮件
		MailSender.sendMessage(email,"0");//登录时给用户发送邮件
		password=PassWordDigester.getPassMD5(password);
		//loginService.saveUser(user);
		loginService.updateUser(dbUser);//保存 用户的登录的IP 和当前时间 更新 用户信息
		//保存登录日志信息
		//2、登录的用户 也要往日志表插入一条记录 
		 //注册的用户 记录登录时间 IP 用户名   
		//loginIP   username  RecordTime
		LogInfo logInfo=new LogInfo();
		logInfo.setLoginIP(loginIP);
		String lookIP="";
		logInfo.setLookIP(lookIP);
		logInfo.setUserName(username);
		String recordTime=lastLogin;
		logInfo.setRecordTime(recordTime);
		logInfoService.saveLogInfo(logInfo);
		ActionContext.getContext().getSession().put("user", getUsername());
		request.setAttribute("username", username);
		
        //存放 用户的ID
		ActionContext.getContext().getSession().put("userID", dbUser.getId());
		request.setAttribute("userID", dbUser.getId());
		HttpSession session=(HttpSession) ServletActionContext.getRequest().getSession();
		String refererUrl=(String) session.getAttribute("refererUrl");
		session.setAttribute("username", username);
		System.out.println("logIn----refererUrl---"+refererUrl);
		if(refererUrl!=null&&!"".equals(refererUrl)){
			request.setAttribute("refererUrl", refererUrl);
			response.sendRedirect(refererUrl);
			out.write("refererUrl");
			System.out.println("LogIn----refererUrl----"+refererUrl);
			out.flush();
			out.close();
			return "redirectUrl";
		}
		out.print("成功ok");
		System.out.println("成功");
		out.flush();
		out.close();
		return "success";
	}
	return ERROR;
}
public  String loginAdmin() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response=ServletActionContext.getResponse();
	String password=request.getParameter("password");
	response.setContentType("text/html;charset=GBK");
	PrintWriter out = response.getWriter();
	Boolean pcOrmobile=HttpRequestDeviceUtils.isMobileDevice(request);
	System.out.println("pcOrmobile=="+HttpRequestDeviceUtils.isMobileDevice(request));
	if(pcOrmobile){
		out.print("toMobile");
		return null;
	}
	System.out.println("pcOrmobile=="+HttpRequestDeviceUtils.isMobileDevice(request));
	System.out.println("LoginIP="+GetIP.getIpAddr2(request));
	String loginIP=GetIP.getIpAddr2(request);
	Date date=new Date();
	//SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	System.out.println(df.format(date));
	String lastLogin=df.format(date);
	if(username!=null&&password!=null&&("admin".equals(username)||"tfy1332".equals(username))){
		System.out.println("ADMIN，欢迎您,登录后台!");
		log.info("username=="+username+"ADMIN，欢迎您,登录后台!");
		System.out.println("LoginIP="+GetIP.getIpAddr2(request));
		User user=new User();
		user.setPassword(password);
		user.setUsername(username);
		//user.setLoginIP(loginIP);
		//user.setLastLogin(lastLogin);
	    System.out.println("未加密的密码:"+password);  
	      //将123加密  
		User dbUser = loginService.login(user);
		if( dbUser== null){
			out.write("用户名不存在");
			System.out.println("用户名不存在");
			return null;
		}
		if(!dbUser.getPassword().equals(PassWordDigester.getPassMD5(password))){
			out.write("密码不正确");
			System.out.println("密码不正确");
			return null;
		}
		String email=dbUser.getEmail();
		dbUser.setLoginIP(loginIP);
		dbUser.setLastLogin(lastLogin);
		System.out.println("登录时给用户发送邮件：email="+email);
		//String flag  邮件发送标志 0----表示发送登录提示邮件		 1----表示发送用户提交找回密码的提示信息邮件
		MailSender.sendMessage(email,"0");//登录时给用户发送邮件
		password=PassWordDigester.getPassMD5(password);
		//loginService.saveUser(user);
		loginService.updateUser(dbUser);//保存 用户的登录的IP 和当前时间 更新 用户信息
		ActionContext.getContext().getSession().put("user", getUsername());
		request.setAttribute("username", username);
		HttpSession session=(HttpSession) ServletActionContext.getRequest().getSession();
		String refererUrl=(String) session.getAttribute("refererUrl");
		refererUrl="";//管理员 登录 不需要记录之前的URL 直接登录  用户名和密码 验证通过后直接到 后台主页
		session.setAttribute("username", username);
		System.out.println("logIn----refererUrl---"+refererUrl);
		if(refererUrl!=null&&!"".equals(refererUrl)){
			request.setAttribute("refererUrl", refererUrl);
			response.sendRedirect(refererUrl);
			out.write("refererUrl");
			System.out.println("LogIn----refererUrl----"+refererUrl);
			out.flush();
			out.close();
			return "redirectUrl";
		}
		//out.print("成功ok");
		System.out.println("成功");
		//out.flush();
		//out.close();
		return "Adminsuccess";
	}
	System.out.println("您不是管理员用户,没有权限登录后台");
	log.info("username=="+username+" ,您不是管理员用户,没有权限登录后台!");
	return ERROR;
}
public  String loginAdminIndex() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response=ServletActionContext.getResponse();
	HttpSession session=(HttpSession) ServletActionContext.getRequest().getSession();
	String username=(String) session.getAttribute("username");
	if(username!=null&&!"".equals(username)&&("admin".equals(username)||"tfy1332".equals(username))){
		System.out.println("ADMIN，欢迎您,登录后台!");
		log.info("username=="+username+"ADMIN，欢迎您,登录后台!");
		return "Adminsuccess";
	}
	System.out.println("您不是管理员用户,没有权限登录后台");
	log.info("username=="+username+" ,您不是管理员用户,没有权限登录后台!");
	return ERROR;
}
public String logout() throws IOException{
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response=ServletActionContext.getResponse();
	response.setContentType("text/html;charset=GBK");
	PrintWriter out = response.getWriter();
	HttpSession session=(HttpSession) ServletActionContext.getRequest().getSession();
	session.setAttribute("username","");
	session.setAttribute("user","");
	request.setAttribute("username","");
	String refererUrl=(String) session.getAttribute("refererUrl");
	//session.setAttribute("username", username); //Session 清空Session 中的值
	System.out.println("logOut---refererUrl---"+refererUrl);
	return "logout";
}
public String showAllUser() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	List<User> usersList=loginService.showAllUser();
	if(usersList!=null&&usersList.size()>0){
		request.setAttribute("usersList", usersList);
		System.out.println(usersList.toString());
		return "usersList";
	}
	return ERROR;
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
		List<User> usersList=loginService.getUserByID(id);
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
	if(id!=null&&password!=null){
		loginService.saveUserpwByID(id,password);
		}
	showAllUser();
} 
public void DelUser() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	String id=request.getParameter("id");
	//String username=request.getParameter("username");
	String password=request.getParameter("password");
	if(id!=null){
		loginService.delUserByID(id);
		}
	//showAllUser();
}
public void saveUser() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	//String id=request.getParameter("id");
	UUID uuid = UUID.randomUUID(); 
    System.out.println (uuid);
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	if(username!=null&&password!=null){
		User user=new User();
		user.setPassword(password);
		user.setUsername(username);
		loginService.saveUser(user);
		}
	//showAllUser();
} 
public String addUserUI(){
	return "addUserUI";
}
public String loginUI(){
	return "input";
}
public String adminLoginUI(){
	HttpSession session=(HttpSession) ServletActionContext.getRequest().getSession();
	String username=(String) session.getAttribute("username");//估计这个应该 修改为 admin 只有这一个用户 可以登录 后台 其他用户 没有权限 登录后台
	System.out.println("adminLoginUI-----username----"+username);
	
	
	if(username!=null&&!"".equals(username)&&("admin".equals(username)||"tfy1332".equals(username))){
		System.out.println("ADMIN，欢迎您,登录后台!");
		log.info("username=="+username+"ADMIN，欢迎您,登录后台!");
		return "Adminsuccess";
	}
	System.out.println("您不是管理员用户,没有权限登录后台");
	log.info("username=="+username+" ,您不是管理员用户,没有权限登录后台!");
	
	
	return "adminLoginUI";
}
public void signUp() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	//String id=request.getParameter("id");
	HttpServletResponse response = ServletActionContext.getResponse();
	PrintWriter out=response.getWriter();
	UUID uuid = UUID.randomUUID(); 
    System.out.println (uuid);
	String username=request.getParameter("username");
	System.out.println("signUp---username="+username);
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	password=PassWordDigester.getPassMD5(password);
	String loginIP=GetIP.getIpAddr2(request);
	Date date=new Date();
	//SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	System.out.println(df.format(date));
	String lastLogin=df.format(date);
	String registrationTime=lastLogin;
	//dbUser.setLoginIP(loginIP);
	//dbUser.setLastLogin(lastLogin);
	if(username!=null&&password!=null){
		User user=new User();
		user.setUsername(username);
		user.setEmail(email);;
		user.setPassword(password);
		user.setLastLogin(lastLogin);
		user.setLoginIP(loginIP);
		user.setRegistration_time(registrationTime);
		user.setArticles_number(""+0);
		loginService.saveUser(user);
		ActionContext.getContext().getSession().put("user", getUsername());
		request.setAttribute("username", username);
		HttpSession session=(HttpSession) ServletActionContext.getRequest().getSession();
		session.setAttribute("username", username);
		out.write("ok");
		}else{
			out.write("fail");
		}
	out.flush();
	out.close();
	//showAllUser();
}
public  String validUsername() throws Exception{
	log.info("welcome to log4j demo-----》 validUsername!");
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response=ServletActionContext.getResponse();
	response.setContentType("text/html;charset=GBK");
	PrintWriter out = response.getWriter();
	username=request.getParameter("username");
	Boolean pcOrmobile=HttpRequestDeviceUtils.isMobileDevice(request);
	System.out.println("pcOrmobile=="+HttpRequestDeviceUtils.isMobileDevice(request));
	if(pcOrmobile){
		out.print("toMobile");
		log.info("用户使用移动端(Phone、PAD)在注册BLOG系统的用户!");
		return null;
	}
	log.info("用户使用PC端注册BLOG系统的用户!");
	System.out.println("pcOrmobile=="+HttpRequestDeviceUtils.isMobileDevice(request));
	System.out.println("LoginIP="+GetIP.getIpAddr2(request));
	String loginIP=GetIP.getIpAddr2(request);
	Date date=new Date();
	//SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	System.out.println(df.format(date));
	String lastLogin=df.format(date);
	log.info("用户"+username+"使用PC端注册BLOG系统的用户!");
	String savetime=request.getParameter("saveTime");  
	if(username!=null){
		log.info("当前时间:"+lastLogin+"  用户22222:"+username+"使用PC端注册BLOG系统的用户! 用户的IP是:"+loginIP);
		System.out.println("LoginIP="+GetIP.getIpAddr2(request));
		//user.setLoginIP(loginIP);
		//user.setLastLogin(lastLogin);
	      //将123加密  
		List<User> dbUser = loginService.getUserByUsername(username);
		if( dbUser!= null&&dbUser.size()>0){
			out.write("用户名已经存在");
			request.setAttribute("MESSAGE", "用户名已经存在");
			System.out.println("用户名已经存在");
			return null;
		}
		
		if(null!=savetime&&!savetime.isEmpty()){  
            int saveTime=Integer.parseInt(savetime);//这里接受的表单值为天来计算的  
            int seconds=saveTime*24*60*60;  
            Cookie cookie = new Cookie("user", username+"=="+password);  
            cookie.setMaxAge(seconds);                     
            response.addCookie(cookie);  
        }  
		request.setAttribute("username",username);  
        //request.getRequestDispatcher("/main.jsp").forward(request,response);  
		//loginService.updateUser(dbUser);//保存 用户的登录的IP 和当前时间 更新 用户信息
		//保存登录日志信息
		//2、登录的用户 也要往日志表插入一条记录 
		//注册的用户 记录登录时间 IP 用户名   
		//loginIP   username  RecordTime
		LogInfo logInfo=new LogInfo();
		logInfo.setLoginIP(loginIP);
		String lookIP="";
		logInfo.setLookIP(lookIP);
		logInfo.setUserName(username);
		String recordTime=lastLogin;
		logInfo.setRecordTime(recordTime);
		logInfoService.saveLogInfo(logInfo);
		ActionContext.getContext().getSession().put("user", getUsername());
		request.setAttribute("username", username);
		HttpSession session=(HttpSession) ServletActionContext.getRequest().getSession();
		String refererUrl=(String) session.getAttribute("refererUrl");
		session.setAttribute("username", username);
		System.out.println("logIn----refererUrl---"+refererUrl);
		if(refererUrl!=null&&!"".equals(refererUrl)){
			request.setAttribute("refererUrl", refererUrl);
			response.sendRedirect(refererUrl);
			out.write("refererUrl");
			System.out.println("LogIn----refererUrl----"+refererUrl);
			out.flush();
			out.close();
			return "redirectUrl";
		}
		out.print("username_noExit");
		System.out.println("用户名可以使用!");
		out.flush();
		out.close();
		return "success";
	}
	return ERROR;
}

public  String validEmail() throws Exception{
	log.info("welcome to log4j demo-----》 validEmail!");
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response=ServletActionContext.getResponse();
	response.setContentType("text/html;charset=GBK");
	PrintWriter out = response.getWriter();
	String email=request.getParameter("email");
	Boolean pcOrmobile=HttpRequestDeviceUtils.isMobileDevice(request);
	System.out.println("pcOrmobile=="+HttpRequestDeviceUtils.isMobileDevice(request));
	if(pcOrmobile){
		out.print("toMobile");
		log.info("用户使用移动端(Phone、PAD)在注册BLOG系统的用户!");
		return null;
	}
	log.info("用户使用PC端注册BLOG系统的用户!");
	System.out.println("pcOrmobile=="+HttpRequestDeviceUtils.isMobileDevice(request));
	System.out.println("LoginIP="+GetIP.getIpAddr2(request));
	String loginIP=GetIP.getIpAddr2(request);
	Date date=new Date();
	//SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	System.out.println(df.format(date));
	String lastLogin=df.format(date);
	log.info("用户"+username+"使用PC端注册BLOG系统的用户!");
	String savetime=request.getParameter("saveTime");  
	if(email!=null){
		log.info("验证邮箱-----当前时间:"+lastLogin+"  邮箱:"+email+"使用PC端注册BLOG系统的用户! 用户的IP是:"+loginIP);
		System.out.println("LoginIP="+GetIP.getIpAddr2(request));
		//user.setLoginIP(loginIP);
		//user.setLastLogin(lastLogin);
	      //将123加密  
		List<User> dbUser = loginService.getUserByEmail(email);
		if( dbUser!= null&&dbUser.size()>0){
			out.write("邮箱已经被注册");
			request.setAttribute("MESSAGE", "邮箱已经被注册");
			System.out.println("邮箱已经被注册");
			return null;
		}
		
		if(null!=savetime&&!savetime.isEmpty()){  
            int saveTime=Integer.parseInt(savetime);//这里接受的表单值为天来计算的  
            int seconds=saveTime*24*60*60;  
            Cookie cookie = new Cookie("user", username+"=="+password);  
            cookie.setMaxAge(seconds);                     
            response.addCookie(cookie);  
        }  
		request.setAttribute("email",email);  
        //request.getRequestDispatcher("/main.jsp").forward(request,response);  
		//loginService.updateUser(dbUser);//保存 用户的登录的IP 和当前时间 更新 用户信息
		//保存登录日志信息
		//2、登录的用户 也要往日志表插入一条记录 
		//注册的用户 记录登录时间 IP 用户名   
		//loginIP   username  RecordTime
		LogInfo logInfo=new LogInfo();
		logInfo.setLoginIP(loginIP);
		String lookIP="";
		logInfo.setLookIP(lookIP);
		logInfo.setUserName(username);
		String recordTime=lastLogin;
		logInfo.setRecordTime(recordTime);
		logInfoService.saveLogInfo(logInfo);
		ActionContext.getContext().getSession().put("user", getUsername());
		request.setAttribute("username", username);
		HttpSession session=(HttpSession) ServletActionContext.getRequest().getSession();
		String refererUrl=(String) session.getAttribute("refererUrl");
		session.setAttribute("username", username);
		System.out.println("logIn----refererUrl---"+refererUrl);
		if(refererUrl!=null&&!"".equals(refererUrl)){
			request.setAttribute("refererUrl", refererUrl);
			response.sendRedirect(refererUrl);
			out.write("refererUrl");
			System.out.println("LogIn----refererUrl----"+refererUrl);
			out.flush();
			out.close();
			return "redirectUrl";
		}
		out.print("Email_isOK");
		System.out.println("邮箱可以使用!");
		out.flush();
		out.close();
		return "success";
	}
	return ERROR;
}
}
