package com.ssh.action.work;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.Certificate;
import com.ssh.domain.Education;
import com.ssh.domain.Project;
import com.ssh.domain.User;
import com.ssh.domain.Work;
import com.ssh.model.Pager;
import com.ssh.service.certificate.CertificateService;
import com.ssh.service.education.EducationService;
import com.ssh.service.project.ProjectService;
import com.ssh.service.user.UserService;
import com.ssh.service.work.WorkService;
import com.ssh.util.GetIP;
import com.ssh.util.PassWordDigester;
public class WorkAction extends ActionSupport{
	private static Logger log = Logger.getLogger(WorkAction.class);

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
   private String username;
   private String password;
   private UserService userService;
   private WorkService workService;
   private EducationService eduService;
   private ProjectService projectService;
   private CertificateService certificateService;

   public CertificateService getCertificateService() {
	return certificateService;
}
public void setCertificateService(CertificateService certificateService) {
	this.certificateService = certificateService;
}
   
public WorkService getWorkService() {
	return workService;
}
public void setWorkService(WorkService workService) {
	this.workService = workService;
}



public EducationService getEduService() {
	return eduService;
}
public void setEduService(EducationService eduService) {
	this.eduService = eduService;
}
public ProjectService getProjectService() {
	return projectService;
}
public void setProjectService(ProjectService projectService) {
	this.projectService = projectService;
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
public String saveWork() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	//String id=request.getParameter("id");
	HttpServletResponse response = ServletActionContext.getResponse();
	PrintWriter out=response.getWriter();
	UUID uuid = UUID.randomUUID(); 
    System.out.println (uuid);
    String uid=request.getParameter("id");
	System.out.println("uid="+uid);
	String company=request.getParameter("company");
	System.out.println("company="+company);
	String position=request.getParameter("position");
	System.out.println("position="+position);
	String startDate=request.getParameter("startDate");
	System.out.println("startDate="+startDate);
	String endDate=request.getParameter("endDate");
	System.out.println("endDate="+endDate);
	String work_summarize=request.getParameter("work_summarize");
	System.out.println("work_summarize="+work_summarize);
	
	Work work=new Work();
	
	if(uid!=null&&!"".equals(uid)){
		work.setUid(Integer.parseInt(uid));
	}
	if(company!=null&&!"".equals(company)){
		work.setCompany(company);
	}
	if(position!=null&&!"".equals(position)){
		work.setPosition(position);
	}
	if(startDate!=null&&!"".equals(startDate)){
		work.setStart_Date(startDate);
	}
	if(endDate!=null&&!"".equals(endDate)){
		work.setEnd_Date(endDate);
	}
	if(work_summarize!=null&&!"".equals(work_summarize)){
		work.setWork_summarize(work_summarize);
	}
	System.out.println("work===="+work);
	String loginIP=GetIP.getIpAddr2(request);
	Date date=new Date();
	//SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	System.out.println(df.format(date));
	String lastLoginTime=df.format(date);
	String recordTime=df.format(date);
	if(loginIP!=null&&!"".equals(loginIP)){
		work.setLoginIP(loginIP);
	}
	if(lastLoginTime!=null&&!"".equals(lastLoginTime)){
		work.setLastupdate_time(lastLoginTime);
	}
	if(recordTime!=null&&!"".equals(recordTime)){
		work.setRecord_time(recordTime);
	}
	if(work!=null){
		workService.saveWork(work);
	}
	
	String pageIndexS = request.getParameter("pageIndex");
	Integer pageIndex = 1;
	//用户必须登录 才能查看自己的基本信息
	String username=(String) ActionContext.getContext().getSession().get("user");
	System.out.println("username====saveWork=="+username);
	if(username==null||"".equals(username)){
		return "login";
	}
	if(!"".equals(pageIndexS) && pageIndexS != null){
		pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		request.setAttribute("pageIndex", pageIndex);
	}
	
	/*
	 * 
	 * 
	List<Work> workList=workService.showAllWork();
	System.out.println("workList======"+workList);
	request.setAttribute("workList", workList);
	
	
	System.out.println("projectService====="+projectService);
	List<Project> projectList=projectService.showAllProject();
	System.out.println("projectList======"+projectList);
	request.setAttribute("projectList", projectList);
	
	System.out.println("eduService===saveProject====="+eduService);
	List<Education> eduList=eduService.showAllEducation();
	System.out.println("eduList======"+eduList);
	request.setAttribute("eduList", eduList);
	
	System.out.println("certificateService====="+certificateService);
	List<Certificate> certiList=certificateService.showAllCertificate();
	System.out.println("certiList======"+certiList);
	request.setAttribute("certiList", certiList);
	
	*/
	
	List<Certificate> certiList=new ArrayList<Certificate>();
	List<Work> workList=new ArrayList<Work>();
	List<Project> projectList=new ArrayList<Project>();
	List<Education> eduList=new ArrayList<Education>();
	
	
	//String pageIndexS = request.getParameter("pageIndex");
	//Integer pageIndex = 1;
	//用户必须登录 才能查看自己的基本信息
	//String username=(String) ActionContext.getContext().getSession().get("user");
	System.out.println("username====saveWork=="+username);
	if(username==null||"".equals(username)){
		return "login";
	}
	if(!"".equals(pageIndexS) && pageIndexS != null){
		pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		request.setAttribute("pageIndex", pageIndex);
	}
	
	if(uid!=null&&!"".equals(uid)){
		certiList=certificateService.showAllCertificateByUid(uid);
		workList=workService.showAllWorkByUid(uid);
		projectList=projectService.showAllProjectByUid(uid);
		eduList=eduService.showAllEducationByUid(uid);
		
		request.setAttribute("workList", workList);
		request.setAttribute("certiList", certiList);
		request.setAttribute("projectList", projectList);
		request.setAttribute("eduList", eduList);
	}
	
	
	System.out.println("userService===saveWork====="+userService);
	//request.setAttribute("pager", userService.showAllUserForPager(pageIndex));
	request.setAttribute("user", userService.getUserByUserName(username));
	return "userResume";
	//showAllUser();
} 
public String updateWork() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	//String id=request.getParameter("id");
	HttpServletResponse response = ServletActionContext.getResponse();
	PrintWriter out=response.getWriter();
	UUID uuid = UUID.randomUUID(); 
    System.out.println (uuid);
    String uid=request.getParameter("id");
	System.out.println("uid="+uid);//workID
	 String workID=request.getParameter("workID");
	System.out.println("workID="+workID);//workID
	String company=request.getParameter("company");
	System.out.println("company="+company);
	String position=request.getParameter("position");
	System.out.println("position="+position);
	String startDate=request.getParameter("startDate");
	System.out.println("startDate="+startDate);
	String endDate=request.getParameter("endDate");
	System.out.println("endDate="+endDate);
	String work_summarize=request.getParameter("work_summarize");
	System.out.println("work_summarize="+work_summarize);
	
	Work work=new Work();
	
	if(uid!=null&&!"".equals(uid)){
		work.setUid(Integer.parseInt(uid));
	}
	if(workID!=null&&!"".equals(workID)){
		work.setId(Integer.parseInt(workID));
	}
	if(company!=null&&!"".equals(company)){
		work.setCompany(company);
	}
	if(position!=null&&!"".equals(position)){
		work.setPosition(position);
	}
	if(startDate!=null&&!"".equals(startDate)){
		work.setStart_Date(startDate);
	}
	if(endDate!=null&&!"".equals(endDate)){
		work.setEnd_Date(endDate);
	}
	if(work_summarize!=null&&!"".equals(work_summarize)){
		work.setWork_summarize(work_summarize);
	}
	System.out.println("work===="+work);
	String loginIP=GetIP.getIpAddr2(request);
	Date date=new Date();
	//SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	System.out.println(df.format(date));
	String lastLoginTime=df.format(date);
	String recordTime=df.format(date);
	if(loginIP!=null&&!"".equals(loginIP)){
		work.setLoginIP(loginIP);
	}
	if(lastLoginTime!=null&&!"".equals(lastLoginTime)){
		work.setLastupdate_time(lastLoginTime);
	}
	if(recordTime!=null&&!"".equals(recordTime)){
		work.setRecord_time(recordTime);
	}
	if(work!=null){
		workService.updateWork(work);
	}
	/*
	List<Work> workList=workService.showAllWork();
	System.out.println("workList======"+workList);
	request.setAttribute("workList", workList);
	*/
	String pageIndexS = request.getParameter("pageIndex");
	Integer pageIndex = 1;
	//用户必须登录 才能查看自己的基本信息
	String username=(String) ActionContext.getContext().getSession().get("user");
	System.out.println("username====saveWork=="+username);
	if(username==null||"".equals(username)){
		return "login";
	}
	if(!"".equals(pageIndexS) && pageIndexS != null){
		pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		request.setAttribute("pageIndex", pageIndex);
	}
	List<Certificate> certiList=new ArrayList<Certificate>();
	List<Work> workList=new ArrayList<Work>();
	List<Project> projectList=new ArrayList<Project>();
	List<Education> eduList=new ArrayList<Education>();
	
	
	//String pageIndexS = request.getParameter("pageIndex");
	//Integer pageIndex = 1;
	//用户必须登录 才能查看自己的基本信息
	//String username=(String) ActionContext.getContext().getSession().get("user");
	System.out.println("username====saveWork=="+username);
	if(username==null||"".equals(username)){
		return "login";
	}
	if(!"".equals(pageIndexS) && pageIndexS != null){
		pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		request.setAttribute("pageIndex", pageIndex);
	}
	
	if(uid!=null&&!"".equals(uid)){
		certiList=certificateService.showAllCertificateByUid(uid);
		workList=workService.showAllWorkByUid(uid);
		projectList=projectService.showAllProjectByUid(uid);
		eduList=eduService.showAllEducationByUid(uid);
		
		request.setAttribute("workList", workList);
		request.setAttribute("certiList", certiList);
		request.setAttribute("projectList", projectList);
		request.setAttribute("eduList", eduList);
	}
	
	
	System.out.println("userService===saveWork====="+userService);
	//request.setAttribute("pager", userService.showAllUserForPager(pageIndex));
	request.setAttribute("user", userService.getUserByUserName(username));
	return "userResume";
	//showAllUser();
} 
public String delWork() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	
	String uid=request.getParameter("id");
	System.out.println("uid====delWork==="+uid);//workID
		
		
	 String workID=request.getParameter("workID");
	System.out.println("workID="+workID);//workID
	//用户必须登录 才能查看自己的基本信息
	String username=(String) ActionContext.getContext().getSession().get("user");
	System.out.println("username====delWork=="+username);
	
	
	if(username==null||"".equals(username)){
		return "login";
	}
	if(workID!=null&&!"".equals(workID)){
		workService.delWorkByID(workID);
	}
	/*
	List<Work> workList=workService.showAllWork();
	System.out.println("workList======"+workList);
	request.setAttribute("workList", workList);
	
	*/
	String pageIndexS = request.getParameter("pageIndex");
	Integer pageIndex = 1;

	if(!"".equals(pageIndexS) && pageIndexS != null){
		pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		request.setAttribute("pageIndex", pageIndex);
	}
	
	
	List<Certificate> certiList=new ArrayList<Certificate>();
	List<Work> workList=new ArrayList<Work>();
	List<Project> projectList=new ArrayList<Project>();
	List<Education> eduList=new ArrayList<Education>();
	
	
	//String pageIndexS = request.getParameter("pageIndex");
	//Integer pageIndex = 1;
	//用户必须登录 才能查看自己的基本信息
	//String username=(String) ActionContext.getContext().getSession().get("user");
	System.out.println("username====delWork=="+username);
	if(username==null||"".equals(username)){
		return "login";
	}
	if(!"".equals(pageIndexS) && pageIndexS != null){
		pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		request.setAttribute("pageIndex", pageIndex);
	}
	
	if(uid!=null&&!"".equals(uid)){
		certiList=certificateService.showAllCertificateByUid(uid);
		workList=workService.showAllWorkByUid(uid);
		projectList=projectService.showAllProjectByUid(uid);
		eduList=eduService.showAllEducationByUid(uid);
		
		request.setAttribute("workList", workList);
		request.setAttribute("certiList", certiList);
		request.setAttribute("projectList", projectList);
		request.setAttribute("eduList", eduList);
	}
	
	System.out.println("userService===saveWork====="+userService);
	//request.setAttribute("pager", userService.showAllUserForPager(pageIndex));
	request.setAttribute("user", userService.getUserByUserName(username));
	return "userResume";
}
public String showAllWork() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	String uid=request.getParameter("id");
	System.out.println("uid======showAllWork==="+uid);//workID
	
	/*
	List<Work> workList=workService.showAllWork();
	System.out.println("workList======"+workList);
	request.setAttribute("workList", workList);
	
	*/
	String pageIndexS = request.getParameter("pageIndex");
	Integer pageIndex = 1;
	//用户必须登录 才能查看自己的基本信息
	String username=(String) ActionContext.getContext().getSession().get("user");
	System.out.println("username====showAllWork=="+username);
	if(username==null||"".equals(username)){
		return "login";
	}
	if(!"".equals(pageIndexS) && pageIndexS != null){
		pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		request.setAttribute("pageIndex", pageIndex);
	}
	
	List<Certificate> certiList=new ArrayList<Certificate>();
	List<Work> workList=new ArrayList<Work>();
	List<Project> projectList=new ArrayList<Project>();
	List<Education> eduList=new ArrayList<Education>();
	
	
	//String pageIndexS = request.getParameter("pageIndex");
	//Integer pageIndex = 1;
	//用户必须登录 才能查看自己的基本信息
	//String username=(String) ActionContext.getContext().getSession().get("user");
	System.out.println("username====showAllWork=="+username);
	if(username==null||"".equals(username)){
		return "login";
	}
	if(!"".equals(pageIndexS) && pageIndexS != null){
		pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		request.setAttribute("pageIndex", pageIndex);
	}
	
	if(uid!=null&&!"".equals(uid)){
		certiList=certificateService.showAllCertificateByUid(uid);
		workList=workService.showAllWorkByUid(uid);
		projectList=projectService.showAllProjectByUid(uid);
		eduList=eduService.showAllEducationByUid(uid);
		
		request.setAttribute("workList", workList);
		request.setAttribute("certiList", certiList);
		request.setAttribute("projectList", projectList);
		request.setAttribute("eduList", eduList);
	}
	
	
	System.out.println("userService===saveWork====="+userService);
	//request.setAttribute("pager", userService.showAllUserForPager(pageIndex));
	request.setAttribute("user", userService.getUserByUserName(username));
	return "userResume";
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
	//String username=(String) ActionContext.getContext().getSession().get("user");
	String username=request.getParameter("username");
	if(username==null||"".equals(username)){
		return "login";
	}
	if(!"".equals(pageIndexS) && pageIndexS != null){
		pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		request.setAttribute("pageIndex", pageIndex);
	}
	//request.setAttribute("pager", userService.showAllUserForPager(pageIndex));
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
public String showAllUserForPageAdminEasyUI() throws Exception{
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
	request.setAttribute("type", "listEASYUI");
	return "adminUsersList_easyUI";
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

public String updateUserbasiInfo() throws Exception{
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
			return "updateUserbasiInfo";
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


public String showUserBasicInfo() throws Exception{
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
	return "userBasicInfo";
}

public String saveUserBasicInfo() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	
	String pageIndexS = request.getParameter("pageIndex");
	
	String userID = request.getParameter("id");
	
	String last_name = request.getParameter("last_name");
	
	String first_name = request.getParameter("first_name");
	
	
	System.out.println("last_name======"+last_name);
	System.out.println("first_name======"+first_name);
	
	String sex = request.getParameter("sex");
	
	String birthday = request.getParameter("birthday");
	String show_name = request.getParameter("show_name");
	String work_years = request.getParameter("work_years");
	String programming_language = request.getParameter("programming_language");
	
	
	String good_at_database = request.getParameter("good_at_database");
	String server = request.getParameter("server");
	String native_language = request.getParameter("native_language");
	String currency = request.getParameter("currency");
	String telephone = request.getParameter("telephone");
	String mobile_phone = request.getParameter("mobile_phone");
	

	
	String address = request.getParameter("address");
	String city = request.getParameter("city");
	
	
	
	System.out.println("address======"+address);
	System.out.println("city======"+city);
	
	
	String country = request.getParameter("country");
	String time_zone = request.getParameter("time_zone");
	
	User user=new User();
	if(userID!=null&&!"".equals(userID)){
		List<User> userList=userService.getUserByID(userID);//用户名必须唯一  这样保证查询出的用户只有一个. userID
		if(userList!=null&&userList.size()>0){
			user=userList.get(0);
		}
	}
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
	
	if(last_name!=null&&!"".equals(last_name)){
		System.out.println("last_name=="+last_name);
		user.setLast_name(last_name);
	}
	if(currency!=null&&!"".equals(currency)){
		user.setCurrency(currency);
	}
	if(first_name!=null&&!"".equals(first_name)){
		user.setFirst_name(first_name);
	}
	if(country!=null&&!"".equals(country)){
		user.setCountry(country);
	}
	if(city!=null&&!"".equals(city)){
		user.setCity(city);
	}
	if(birthday!=null&&!"".equals(birthday)){
		user.setBirthday(birthday);
	}
	if(address!=null&&!"".equals(address)){
		user.setAddress(address);
	}
	if(server!=null&&!"".equals(server)){
		user.setServer(server);
	}
	

	
	if(telephone!=null&&!"".equals(telephone)){
		user.setTelephone(telephone);
	}
	if(time_zone!=null&&!"".equals(time_zone)){
		user.setTime_zone(time_zone);
	}
	if(work_years!=null&&!"".equals(work_years)){
		user.setWork_years(work_years);
	}
	
	if(good_at_database!=null&&!"".equals(good_at_database)){
		user.setGood_at_database(good_at_database);
	}
	if(mobile_phone!=null&&!"".equals(mobile_phone)){
		user.setMobile_phone(mobile_phone);
	}
	if(native_language!=null&&!"".equals(native_language)){
		user.setNative_language(native_language);
	}
	if(programming_language!=null&&!"".equals(programming_language)){
		user.setProgramming_language(programming_language);
	}
	if(sex!=null&&!"".equals(sex)){
		user.setSex(sex);
	}
	if(show_name!=null&&!"".equals(show_name)){
		user.setShow_name(show_name);
	}
	
	
	
	userService.updateUser(user);//更新用户的基本 信息
	//request.setAttribute("pager", userService.showAllUserForPager(pageIndex));
	request.setAttribute("user", userService.getUserByUserName(username));
	request.setAttribute("type", "basic"); 
	return "userBasicInfo";
}
public String showUserResume() throws Exception{
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
	return "userResume";
}
public String showUserSelfsetup() throws Exception{
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
	return "userSelfsetup";
}
public String showUserCoderInfo() throws Exception{
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
	return "userCoderInfo";
}
public String showUserBeautifulGallery() throws Exception{
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
	return "userBeautifulGallery";
}
}
