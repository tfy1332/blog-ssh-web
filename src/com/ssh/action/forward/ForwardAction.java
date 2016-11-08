package com.ssh.action.forward;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.qiniu.api.auth.digest.Mac;
import com.qiniu.api.config.Config;
import com.qiniu.api.rs.PutPolicy;
import com.ssh.domain.LogInfo;
import com.ssh.domain.User;
import com.ssh.model.Pager;
import com.ssh.service.loginfo.LogInfoService;
import com.ssh.service.user.UserService;
import com.ssh.util.GetIP;
import com.ssh.util.PassWordDigester;
public class ForwardAction extends ActionSupport{
	private static Logger log = Logger.getLogger(ForwardAction.class);

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
public static String getUptoken() throws Exception{
	  Config.ACCESS_KEY = "IyYaVRmL9fNn-cwk5cVKo3UGb_pbgMOv_Tw3QGIV";//这个以后的改 1、定义一个常量  2、配置在一个配置文件中 properties
    Config.SECRET_KEY = "nA6yrDFfMIoFlDSrtaXlMifFN-UT-x7FsVQ6_2bX";
    Mac mac = new Mac(Config.ACCESS_KEY, Config.SECRET_KEY);
    // 请确保该bucket已经存在
    //String bucketName = "Your bucket name";
    String bucketName = "tfyworld";
    PutPolicy putPolicy = new PutPolicy(bucketName);
    String uptoken = putPolicy.token(mac);
    System.out.println("uptoken=="+uptoken);
    return uptoken;
}
public String showForwardPage() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	String pageIndexS = request.getParameter("page");
	Integer pageIndex = 1;
	//用户必须登录 才能查看自己的基本信息
	String username=(String) ActionContext.getContext().getSession().get("user");
	if(username==null||"".equals(username)){
		return "login";
	}
	log.info("用户准备使用系统上传图片");
	String loginIP=GetIP.getIpAddr2(request);
	Date date=new Date();
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	System.out.println(df.format(date));
	String lastLogin=df.format(date);
	LogInfo logInfo=new LogInfo();
	String lookIP="";
	if(!"".equals(username)&&username!=null){
		logInfo.setLoginIP(loginIP);//用户登录
		logInfo.setUserName(username);
	}else{
		logInfo.setLoginIP("");//用户没有登录
		logInfo.setUserName("");
		lookIP=loginIP;
		logInfo.setLookIP(lookIP);
	}
	
	//request.setAttribute("pager", userService.showAllUserForPager(pageIndex));
	String uptoken=getUptoken();
	String key2=String.valueOf(System.currentTimeMillis());
	String key=UUID.randomUUID().toString();
	key.replaceAll("-", "");
	
	
	
	String articleID=key;
	logInfo.setArticleID(articleID);
	logInfo.setTitle("用户上传了图片");
	String recordTime=lastLogin;
	logInfo.setRecordTime(recordTime);
	logInfoService.saveLogInfo(logInfo);
	
	
	System.out.println("key=uploadImg=="+key);
	System.out.println("uptoken===uploadImg=="+uptoken);
	request.setAttribute("uptoken", uptoken); 
	request.setAttribute("key", key); 
	request.setAttribute("user", userService.getUserByUserName(username));
	request.setAttribute("type", "basic"); 
	return "forwardUpload";
}
  

public String showUserImages() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	String pageIndexS = request.getParameter("pageIndex");
	Integer pageIndex = 1;
	//用户必须登录 才能查看自己的基本信息
	String username=(String) ActionContext.getContext().getSession().get("user");
	if(username==null||"".equals(username)){
		return "login";
	}
	if(!"".equals(pageIndexS) && pageIndexS != null){
		pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		request.setAttribute("pageIndex", pageIndex);
	}
	//request.setAttribute("pager", userService.showAllUserForPager(pageIndex));
	request.setAttribute("user", userService.getUserByUserName(username));
	request.setAttribute("type", "basic"); 
	return "myImages";
}
}
