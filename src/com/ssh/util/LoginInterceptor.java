package com.ssh.util;

import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;




import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
public  class LoginInterceptor extends AbstractInterceptor {
	//private static Logger log = Logger.getLogger(JDBCLogMessage.class);
		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static  final Logger log = Logger.getLogger(LoginInterceptor.class);
	public final static String SESSION_KEY="regUserId";
	public final static String GOTO_URL_KEY="GOING_TO";  

		@Override
		public String intercept(ActionInvocation invocation) throws Exception {
			  ActionContext ctx = invocation.getInvocationContext();  
		        Map session = ctx.getSession();  
		        String url1= "";    
		         String namespace = invocation.getProxy().getNamespace();    
		        if (StringUtils.isNotBlank(namespace) && !namespace.equals("/")){    
		        	url1 = url1 + namespace;    
		         }    
		         String actionName = invocation.getProxy().getActionName();    
		        if (StringUtils.isNotBlank(actionName)){    
		        	url1 = url1 + "/" + actionName + ".action";    
		         }    
		          HttpServletRequest request = ServletActionContext.getRequest();
		          HttpSession session1=request.getSession();   
		          String  refererUrl = request.getHeader("referer");
		          System.out.println("获取之前页面----"+refererUrl);
		          if(session1.getAttribute("refererUrl")!=null){
		        	  System.out.println("session1.getAttribute-----"+session1.getAttribute("refererUrl").toString());
		          }
		          if(refererUrl!=null&&session1.getAttribute("refererUrl")==null){
		        	  session1.setAttribute("refererUrl", refererUrl);
		          }
		        //组织url
				String uri = request.getRequestURI();
				StringBuffer url=request.getRequestURL();
				String addr=request.getRemoteAddr();
				System.out.println("addr==="+addr);
				String host=request.getRemoteHost();
				System.out.println("host==="+host);
				int port=request.getRemotePort();
				System.out.println("port==="+port);
				String remotUser=request.getRemoteUser();
				System.out.println("remotUser==="+remotUser);
				System.out.println("----ip==="+url);
		         session.put("GOING_TO_URL_KEY", url);
		         System.out.println("uri=="+uri);
		         System.out.println("LoginInterceptor---url=="+url);
		        String user = (String) session.get("user");
		        System.out.println("LoginInterceptor====user==="+user+"====session1===="+session1+"====session1.getAttribute(SESSION_KEY)==="+session1.getAttribute(SESSION_KEY)+"====session====="+session);
		        // 如果没有登陆，或者登陆所有的用户名不是yuewei，都返回重新登陆  
		        if (user != null && user.equals("tfy")&& session1.getAttribute(SESSION_KEY)!=null) {
		            System.out.println("test"+session1.getAttribute(SESSION_KEY).toString());
		            System.out.println("您登录的用户名为:"+user);
		            return invocation.invoke();  
		        }  
		        ctx.put("tip", "你还没有登录");
		        System.out.println(user+"您还没有登录!");
		      //这里是关键点了 设置客户原来请求的url地址   
		       setToGoingURL(request, session1, invocation); 
		       return invocation.invoke();   
		        //return Action.LOGIN;  
		    }  
		 private void setToGoingURL(HttpServletRequest request,HttpSession session1,ActionInvocation invocation)   
	      {   
	          //如果referer不为空 直接使用它。如果为空我们分别获得命名空间，action名,以及请求参数   
	          //从新构造成一个URL保存在session中   
	          String url=request.getHeader("referer");   
	          log.info("待转向URL:"+request.getHeader("referer"));   
	          if(url==null || url.equals(""))   
	              {   
	                  url="";   
	                  String path=request.getContextPath();   
	                  String actionName=invocation.getProxy().getActionName();   
	                  String nameSpace=invocation.getProxy().getNamespace();   
	                  if(nameSpace!=null)   
	                      {   
	                          url = url+path+nameSpace;   
	                             
	                      }   
	                  if(actionName!=null)   
	                      {   
	                          url = url+"/"+actionName+".action"+"?";   
	                      }   
	                     
	                  Map<String,String[]> zzMap = request.getParameterMap();   
	                  if(zzMap!=null)   
	                      {   
	                          for(String s:zzMap.keySet())   
	                              {   
	                                  String[] value=zzMap.get(s);   
	                                  for(String val:value)   
	                                      {   
	                                          url=url+s+"="+val+"&";   
	                                      }   
	                                     
	                              }   
	                      }   
	                  log.info("完整URL:"+url);   
	              }   
	                 session1.setAttribute(GOTO_URL_KEY, url);   
	      }
		}