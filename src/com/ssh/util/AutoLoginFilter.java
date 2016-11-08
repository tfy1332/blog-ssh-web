package com.ssh.util;

//自动登录的过滤类,用来控制用户的自动的登录操作的相关

 
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
 
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

import com.ssh.DAO.impl.user.UserDaoImpl;
import com.ssh.domain.User;
import com.ssh.service.impl.login.LoginServiceImpl;
import com.ssh.service.login.LoginService;
 
 
import sun.misc.BASE64Encoder;
 
public class AutoLoginFilter implements Filter {
	private static Logger log = Logger.getLogger(AutoLoginFilter.class);
 
    public void destroy() {
        // TODO Auto-generated method stub
    }
 
    public void doFilter(ServletRequest req, ServletResponse res,
            FilterChain chain) throws IOException, ServletException {
        // 强制造型为子类型
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        // 1.首先判断session
        Object object = request.getSession().getAttribute("admin");
 
        if (object != null) {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
            return;
        }
 
        // 2.判断cookie中是否存在用户的记录
        Cookie autoCookie = null;
        // 获取所有的cookie进行遍历判断
        Cookie cookies[] = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                // 判断是否已经存贮用户记录
                if ("autoLogin".equals(cookie.getName())) {
                    autoCookie = cookie;
                }
            }
 
            // 判断是否存在用户自动登录记录
            if (autoCookie == null) {
                chain.doFilter(request, response);
                return;
            }
 
            // 3.判断cookie的值
            // 获取cookie值
            String value = autoCookie.getValue();
            // 拆分
            String temps[] = value.split(":");
 
            // 判断长度是否是自定义的长度
            if (temps.length != 3) {
                chain.doFilter(request, response);
                return;
            }
            // 获取拆分后的数据
            String name = temps[0];
             
            String time = temps[1];
             
            String service_md5Value = temps[2];
 
            // 4.根据时间判断是否失效
            if (Long.valueOf(time) <= System.currentTimeMillis()) {
                chain.doFilter(request, response);
                return;
            }
 
            // 5.根据用户名查询数据
            LoginService adminService = new LoginServiceImpl();
            // 向数据库发送数据请求
            //User entity = adminService.checkLogin(name);
            User entity =new User();
            if (entity == null) {
                chain.doFilter(request, response);
                return;
            }
 
            // 6.拼接字符串在进行二次判断,
            String md5Temp = entity.getPassword() + ":" + entity.getUsername()+ ":"
                    + time + "donghongyujava";
            if (!(md5Value(md5Temp).equals(service_md5Value))) {
                chain.doFilter(request, response);
                return;
            }
 
            // 7.如果以上的判断都通过,那么就发送成功的转跳连接
            request.getSession().setAttribute("admin", entity);
            request.getRequestDispatcher("./sc.jsp").forward(request, response);
        } else {
            chain.doFilter(request, response);
            return;
        }
    }
 
    public void init(FilterConfig arg0) throws ServletException {
        // TODO Auto-generated method stub
 
    }
 
    // 加密的操作函数
    public String md5Value(String value) {
        try {
            // 获取md5加密的对象
            MessageDigest digest = MessageDigest.getInstance("md5");
            // 将传入的数据装换为byte字节,在用digest进行转换(加密)成新的字节数组,
            byte result[] = digest.digest(value.getBytes());
            BASE64Encoder encoder = new BASE64Encoder();
            // 返回加密后的数据
            return encoder.encode(result);
 
        } catch (NoSuchAlgorithmException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return "";
    };
 
}
