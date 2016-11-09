<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html>
<html>
  <head>
   <title>北京东方文辉信息技术有限公司</title>
   <link href="<%=request.getContextPath() %>/bootstrap/css/bootstrap.css" rel="stylesheet">
   <link href="<%=request.getContextPath() %>/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
   <script src="<%=request.getContextPath() %>/js/jquery.js"></script>
<style type="text/css">
body {
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

.form-signin {
	max-width: 300px;
	padding: 19px 29px 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading,.form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin input[type="text"],.form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}
</style>
<script type="text/javascript">
function login(){
	var username=$("#username").val();
	var pwd=$("#password").val();
	$.ajax({
		   type: "POST",
		   url: "login!login.action",
		   data: {username:username,password:pwd},
		   async: false,
		   success: function(msg){
			   if(msg=="成功"){
				   window.location.href="<%=request.getContextPath() %>/index.jsp";
				   return;
			   }
			   alert(msg);
		   }
	});
	
}
</script>

</head>

  <body >
  <div class="container">

      <div class="form-signin" >
        <h2 class="form-signin-heading">Please sign in</h2>
        <input id="username" name="username"  type="text" class="input-block-level" placeholder="Email address">
        <input id="password" name="password"  type="password" class="input-block-level" placeholder="Password">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-large btn-primary" type="submit" onclick="login();">Sign in</button>
      </div>
    </div>
  </body>
</html>