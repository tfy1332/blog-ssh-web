package com.ssh.util;

import java.io.IOException;  
import java.io.PrintWriter;

import javax.servlet.Filter;  
import javax.servlet.FilterChain;  
import javax.servlet.FilterConfig;  
import javax.servlet.ServletException;  
import javax.servlet.ServletRequest;  
import javax.servlet.ServletResponse;  
import javax.servlet.http.Cookie;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  

import org.apache.log4j.Logger;

import com.ssh.domain.User;
import com.ssh.service.login.LoginService;

  
public class IndexFilter implements Filter {  
	private static Logger log = Logger.getLogger(IndexFilter.class);
	 private LoginService loginService;
  
    public void destroy() {  
        // TODO Auto-generated method stub  
  
    }  
  
    public void doFilter(ServletRequest arg0, ServletResponse arg1,  
            FilterChain arg2) throws IOException, ServletException {
    	System.out.println("");
        HttpServletRequest request = (HttpServletRequest) arg0;  
        HttpServletResponse response = (HttpServletResponse) arg1;  
        PrintWriter out = response.getWriter();
        Cookie[] cookies = request.getCookies();  
        String[] cooks = null;  
        String username = null;  
        String password = null;  
        User user=new User();
        if (cookies != null) {  
            for (Cookie coo : cookies) {  
                String aa = coo.getValue();  
                cooks = aa.split("==");  
                if (cooks.length == 2) {  
                    username = cooks[0];  
                    password = cooks[1];  
                    user.setUsername(username);
                    user.setPassword(password);
                }  
            }  
        }  
        User dbUser = null;
		try {
			dbUser = loginService.login(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if( dbUser== null){
			out.write("用户名不存在");
			System.out.println("用户名不存在");
		}
		if(!dbUser.getPassword().equals(PassWordDigester.getPassMD5(password))){
			out.write("密码不正确");
			System.out.println("密码不正确");
		}else{
            request.getSession().setAttribute("username",username);  
            response.sendRedirect("redirectUrl.jsp");  
            //request.getRequestDispatcher("/main.jsp").forward(request, response);  
        }  
            arg2.doFilter(request,response );  
        
    }  
  
    public void init(FilterConfig arg0) throws ServletException {  
        // TODO Auto-generated method stub  
  
    }  
  
}  
