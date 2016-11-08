package com.ssh.util;

import java.util.Map;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

/*
 *拦截指定方法 
 */
public class MyFilterInterceptor  extends MethodFilterInterceptor{
	private static Logger log = Logger.getLogger(MyFilterInterceptor.class);
 private static final long serialVersionUID = 1L;
 private String name;
    public void setName(String name)
   {
        this.name = name;
    }
 @Override
 protected String doIntercept(ActionInvocation invocation) throws Exception {
  //取得请求相关的ActionContext实例 
  ActionContext ctx = invocation.getInvocationContext(); 
  Map session = ctx.getSession(); 
  //取出名为user的Session属性 
  String user = (String)session.get("user"); 
  //如果没有登陆，或者登陆所用的用户名不是scott，都返回重新登陆 
  if (user != null && user.equals("tfy") ) 
  { 
  return invocation.invoke(); 
  } 
  //没有登陆，将服务器提示设置成一个HttpServletRequest属性 
  ctx.put("tip" , "您还没有登陆，请输入scott,tiger登陆系统"); 
  //直接返回login的逻辑视图 
  return Action.LOGIN; 
 }

}
