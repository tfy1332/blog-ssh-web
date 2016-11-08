package com.ssh.action.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.action.loginfo.LogInfoAction;
import com.ssh.domain.Article;
import com.ssh.domain.LogInfo;
import com.ssh.domain.Revert;
import com.ssh.domain.User;
import com.ssh.model.Pager;
import com.ssh.service.loginfo.LogInfoService;
import com.ssh.service.user.ArticleService;
import com.ssh.service.user.UserService;
import com.ssh.util.GetIP;
import com.ssh.util.HttpRequestDeviceUtils;
import com.ssh.util.PassWordDigester;
public class ArticleAction extends ActionSupport{
	private static Logger log = Logger.getLogger(ArticleAction.class);

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
   private String username;
   private String password;
   private ArticleService articleService;
   private UserService userService;
   private LogInfoService logInfoService;
   
   
public LogInfoService getLogInfoService() {
	return logInfoService;
}
public void setLogInfoService(LogInfoService logInfoService) {
	this.logInfoService = logInfoService;
}
public ArticleService getArticleService() {
	return articleService;
}
public void setArticleService(ArticleService articleService) {
	this.articleService = articleService;
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
	List<User> usersList=articleService.showAllUser();
	if(usersList!=null&&usersList.size()>0){
		request.setAttribute("usersList", usersList);
		System.out.println(usersList.toString());
		return "articleList";
	}
	return ERROR;
}
public String showAllArticleForPage() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	String username=(String) ActionContext.getContext().getSession().get("user");
	
	System.out.println("showAllArticleForPage===发表文章和修改文章后跳转的页面 =username="+username);
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
	
	//request.setAttribute("pager", articleService.showAllArticleForPageByUsername(username,pageIndex));
	//request.setAttribute("pager", articleService.showAllArticleForPage(pageIndex));
	request.setAttribute("type", "sign");
	return "articlesList";
}

public String showAllArticleForPageByUsername() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	String username=(String) ActionContext.getContext().getSession().get("user");
	
	System.out.println("showAllArticleForPage===发表文章和修改文章后跳转的页面 =username="+username);
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
	
	request.setAttribute("pager", articleService.showAllArticleForPageByUsername(username,pageIndex));
	//request.setAttribute("pager", articleService.showAllArticleForPage(pageIndex));
	request.setAttribute("type", "sign");
	return "userArticlesList";
}

/**
 *  本方法 只对 Admin管理员 查询数据库中 所有用户的文章列表
 * @return
 * @throws Exception
 */
public String showAllArticleForPageAdmin() throws Exception{
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
	request.setAttribute("pager", articleService.showAllArticleForPage(pageIndex));
	request.setAttribute("type", "sign");
	return "adminArticlesList";
}
public String showAllArticleForPageTest() throws Exception{
	log.info("showAllArticleForPageTest");
	HttpServletRequest request = ServletActionContext.getRequest();
	String pageIndexS = request.getParameter("pageIndex");
	Integer pageIndex = 1;
	Boolean pcOrmobile=HttpRequestDeviceUtils.isMobileDevice(request);
	System.out.println("pcOrmobile=="+HttpRequestDeviceUtils.isMobileDevice(request));
	if(!"".equals(pageIndexS) && pageIndexS != null){
		pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		request.setAttribute("pageIndex", pageIndex);
	}
	request.setAttribute("pager", articleService.showAllArticleForPage(pageIndex));
	request.setAttribute("type", "sign");
	if(pcOrmobile){
		log.info("用户使用移动端浏览BLOG首页");
	     return "mobile";
	     
		}
	log.info("用户使用PC端浏览BLOG首页");
	return SUCCESS;
}
/**
 * 该方法 针对 一个用户 查询 自己所有的文章列表
 * @return
 * @throws Exception
 */
public String showAllArticleForPageTestUser() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	String usernameS = request.getParameter("username");
	String pageIndexS = request.getParameter("pageIndex");
	Integer pageIndex = 1;
	Boolean pcOrmobile=HttpRequestDeviceUtils.isMobileDevice(request);
	System.out.println("pcOrmobile=="+HttpRequestDeviceUtils.isMobileDevice(request));
	if(!"".equals(usernameS) && usernameS != null &&!"".equals(pageIndexS) && pageIndexS != null){
		pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		request.setAttribute("pageIndex", pageIndex);
		request.setAttribute("username", usernameS);
	}
	request.setAttribute("pager", articleService.showAllArticleForPageByUsername(usernameS,pageIndex));
	request.setAttribute("type", "sign");
	if(pcOrmobile){
	     return "mobile";
		}
	return "userArticlesList";
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
		List<User> usersList=articleService.getUserByID(id);
		User Usermess=usersList.get(0);
		if(usersList!=null&&usersList.size()>0){
			request.setAttribute("user", Usermess);
			System.out.println(Usermess.toString());
			return "Articlemess";
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
	System.out.println("password--pdate"+password);
	if(id!=null&&password!=null){
		articleService.saveUserpwByID(id,password);
		}
	showAllUser();
} 
public void delArticle() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	String id=request.getParameter("id");
	//String username=request.getParameter("username");
	//String password=request.getParameter("password");
	//用户必须登录 才能发表文章  记录 文章 作者 IP ID 时间
	String username=(String) ActionContext.getContext().getSession().get("user");
	System.out.println("username--------delArticle---------"+username);
	if(username!=null&&!"".equals(username)){
		if(id!=null){
			articleService.delArticleByID(id);
			}
	}else{
		//return "login";
	}
	
	//showAllUser();
}
public void saveArticle() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	//String id=request.getParameter("id");
	HttpServletResponse response = ServletActionContext.getResponse();
	PrintWriter out=response.getWriter();
	UUID uuid = UUID.randomUUID(); 
    System.out.println (uuid);
	String title=request.getParameter("title");
	String username=(String) ActionContext.getContext().getSession().get("user");
	User user=null;
	if(username!=null&&!"".equals(username)){
		user=userService.getUserByUserName(username);//用户名必须唯一  这样保证查询出的用户只有一个.
	}
	int articlesNumber=0;
	if(user.getArticles_number()!=null){
		articlesNumber=Integer.parseInt(user.getArticles_number());//用户的文章数 +1 
	}
	
	//原来的文 章数可能  不正确 这样取出来的值也不对 
	//最好去 文章表里面根据 username 用户名查询出的 结果 文章数 这个是正确的数据 
	//因为初始值 文章数没有加+1  后来加上的功能
	Pager pager =articleService.showAllArticleForPageByUsername(username,3);//Integer pageIndex  3  当前页 分页显示 这里没有意义 只取数据记录条数 
	
	int total=pager.getTotal();
	if(total!=articlesNumber){
		articlesNumber=total;
	}
	articlesNumber=articlesNumber+1;
	user.setArticles_number(articlesNumber+"");
	userService.updateUser(user);//更新用户 信息 文章数量
	Integer  authorId=user.getId();
	String authorName=username;
	String authorIP=user.getLoginIP();
	System.out.println("saveArticle----username="+username);
	System.out.println("authorIP="+authorIP);
	
	String content=request.getParameter("content");
	String content_html=request.getParameter("content_html");
	System.out.println("content_html====="+content_html);
	String articleType=request.getParameter("articleType");
	String originalFlag=request.getParameter("selType");//selType 1ԭ�� 2 ԭ�� 3ת��
	//password=PassWordDigester.getPassMD5(password);
	Date date=new Date();
	//SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");//hh返回的是12小时制的时间
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//HH返回的是24小时制的时间
	System.out.println("saveArticle---RecordTime=="+df.format(date));
	if(title!=null&&content!=null){
		Article article=new Article();
		article.setTitle(title);
		article.setContent(content);
		article.setContent_html(content_html);
		article.setArticle_Type(articleType);
		article.setOriginalFlag(originalFlag);
		article.setRecordTime(df.format(date));
		article.setAuthorId(authorId+"");
		article.setAuthorIP(authorIP);
		article.setAuthorName(authorName);
		articleService.saveArticle(article);
		out.write("ok");
		}else{
			out.write("fail");
		}
	out.flush();
	out.close();
	//showAllUser();
} 
public String addArticleUI(){
	//用户必须登录 才能发表文章  记录 文章 作者 IP ID 时间
	String username=(String) ActionContext.getContext().getSession().get("user");
	if(username!=null&&!"".equals(username)){
		return "addArticleUI";
	}else{
		return "login";
	}
	
}
public String toUpdateUI() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	//用户必须登录 才能发表文章  记录 文章 作者 IP ID 时间
	String username=(String) ActionContext.getContext().getSession().get("user");
	String id=request.getParameter("id");
	if(username!=null&&!"".equals(username)){
		if(id!=null){
			Article article=articleService.getArticleByID(id);
			if(article!=null){
				request.setAttribute("article", article);
			}
		}
		return "toUpdateUI";
	}else{
		return "login";
	}
	
	
}
public void updateArticle() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	//String id=request.getParameter("id");
	HttpServletResponse response = ServletActionContext.getResponse();
	PrintWriter out=response.getWriter();
	UUID uuid = UUID.randomUUID(); 
    System.out.println (uuid);
    Integer id=Integer.parseInt(request.getParameter("id"));
	String title=request.getParameter("title");
	String username=(String) ActionContext.getContext().getSession().get("user");
	System.out.println("username="+username);
	
	User user=null;
	if(username!=null&&!"".equals(username)){
		user=userService.getUserByUserName(username);//用户名必须唯一  这样保证查询出的用户只有一个.
	}
	Integer  authorId=user.getId();
	String authorName=username;
	String authorIP=user.getLoginIP();
	
	
	String content=request.getParameter("content");
	String content_html=request.getParameter("content_html");
	String articleType=request.getParameter("articleType");
	String originalFlag=request.getParameter("selType");//selType 1ԭ�� 2 ԭ�� 3ת��
	Date date=new Date();
	//SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	System.out.println(df.format(date));
	
	//password=PassWordDigester.getPassMD5(password);
	if(title!=null&&content!=null){
		Article article=new Article();
		article.setId(id);
		article.setTitle(title);
		article.setContent(content);
		article.setContent_html(content_html);
		article.setArticle_Type(articleType);
		article.setOriginalFlag(originalFlag);
		article.setRecordTime(df.format(date));
		
		article.setAuthorId(authorId+"");
		article.setAuthorIP(authorIP);
		article.setAuthorName(authorName);
		
		
		articleService.updateArticle(article);
		out.write("ok");
		}else{
			out.write("fail");
		}
	out.flush();
	out.close();
}
public String showArticle(){
	HttpServletRequest request = ServletActionContext.getRequest();
	request.setAttribute("type", "sign");
	return "addArticleUI";
}
public String lookArticle() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	System.out.println("ip="+GetIP.getIpAddr(request));
	
	String id=request.getParameter("id");
	String username=(String) ActionContext.getContext().getSession().get("user");
	request.setAttribute("username", username);
	Article article=new Article();
	if(id!=null){
		 article=articleService.getArticleByID(id);
		int readTimes=0;
		if(article.getDotNumber()!=null){
			 readTimes=Integer.parseInt(article.getDotNumber());
		}
		//int readTimes=Integer.parseInt(article.getDotNumber());
		readTimes=readTimes+1;
		article.setDotNumber(readTimes+"");
		articleService.saveArticle(article);//更新阅读次数
		if(article!=null){
			request.setAttribute("article", article);
		}
	}
	//1、文章被谁 看过 注册的用户 记录登录时间 IP 用户名  没有注册的访问者 记录 iP 访问时间

	//loginIP   lookIP  username  文章ID 和 标题  RecordTime
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
	String articleID=id;
	logInfo.setArticleID(articleID);
	logInfo.setTitle(article.getTitle());
	String recordTime=lastLogin;
	logInfo.setRecordTime(recordTime);
	logInfoService.saveLogInfo(logInfo);
	//request.setAttribute("username",username); 
	int articles_id=Integer.parseInt(id);
	List<Revert> revertList=articleService.showRevertByArticles_id(articles_id);
	if(revertList!=null&&revertList.size()>0){
		request.setAttribute("revertList", revertList);
		System.out.println("lookArticle-----"+revertList.toString());
	}
	Boolean pcOrmobile=HttpRequestDeviceUtils.isMobileDevice(request);
	System.out.println("pcOrmobile=="+HttpRequestDeviceUtils.isMobileDevice(request)+"username=======lookArticle================"+username);
	if(pcOrmobile){
	     return "mobileLook";
		}
	return "lookArticle";
}
public String revertArticle() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	//String id=request.getParameter("id");
	HttpServletResponse response = ServletActionContext.getResponse();
	String username=(String) ActionContext.getContext().getSession().get("user");
	request.setAttribute("username", username);
	PrintWriter out=response.getWriter();
	UUID uuid = UUID.randomUUID(); 
    System.out.println (uuid);
	if(username!=null){
	Integer articles_id=Integer.parseInt(request.getParameter("articles_id"));
	System.out.println("username="+username);
	String revertContent=request.getParameter("comment_content");
	//password=PassWordDigester.getPassMD5(password);
	Date date=new Date();
	//SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	System.out.println(df.format(date));
	if(articles_id!=null&&revertContent!=null){
		Revert revert=new Revert();
		revert.setArticles_id(articles_id);
		revert.setRevertContent(revertContent);
		//revert.setRevertID(revertID);
		System.out.println("revertArticle----username="+username);
		revert.setRevertName(username);
		System.out.println("ip="+GetIP.getIpAddr2(request));
		revert.setRevertIP(GetIP.getIpAddr2(request));
		revert.setRecordTime(df.format(date));
		articleService.saveRevert(revert);
		//更新评论次数
		Article article=articleService.getArticleByID(articles_id+"");
		int revertNumber=0;
		if(article.getRevertNumber()!=null){
			revertNumber=Integer.parseInt(article.getRevertNumber());
		}
		// revertNumber=Integer.parseInt(article.getRevertNumber());
		revertNumber=revertNumber+1;
		article.setRevertNumber(revertNumber+"");
		articleService.saveArticle(article);//更新评论次数
		}
	List<Revert> revertList=articleService.showRevertByArticles_id(articles_id);
	if(revertList!=null&&revertList.size()>0){
		request.setAttribute("revertList", revertList);
		System.out.println(revertList.toString());
	}
	return "lookArticle";
	}
	return "sign_in";
}
public String getIpAddr1(HttpServletRequest request) {  
    String ip = request.getHeader("x-forwarded-for");  
    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
        ip = request.getHeader("Proxy-Client-IP");  
    }  
    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
        ip = request.getHeader("WL-Proxy-Client-IP");  
    }  
    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
        ip = request.getRemoteAddr();  
    }  
    return ip;  
}  
public static String getIpAddr(HttpServletRequest request) {
    String ip = request.getHeader("X-Real-IP");
    if (!StringUtils.isBlank(ip) && !"unknown".equalsIgnoreCase(ip)) {
        return ip;
    }
    ip = request.getHeader("X-Forwarded-For");
    if (!StringUtils.isBlank(ip) && !"unknown".equalsIgnoreCase(ip)) {
        // 多次反向代理后会有多个IP值，第一个为真实IP。
        int index = ip.indexOf(',');
        if (index != -1) {
            return ip.substring(0, index);
        } else {
            return ip; 
        }
    } else {
        return request.getRemoteAddr();
    }
}
}
