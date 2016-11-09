<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
  <head>
      <title>login2</title>
  </head>
    
  <body>
          <div align="center">
              <h4> 全局拦截页面loginFailure欢迎你!</h4><font color="red">${requestScope.username}<%=request.getAttribute("username") %></font>
              <br/>
               <h4>你登录的密码是<h4><font color="red">${password}</font>;
          </div>
  </body>
</html>