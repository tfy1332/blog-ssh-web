<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html>
<html>
  <head>
   <title>Smile---微笑网(代码改变世界)</title>
   <link rel="stylesheet" href="css/signin.css" type="text/css"></link>
   <link rel="shortcut icon" href="bootstrap-2.3.2/docs/assets/ico/favicon.png">
   <link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
   <script src="<%=request.getContextPath() %>/js/jquery.js"></script>

<script type="text/javascript">
function login(){
	var username=$("#email").val();
	var pwd=$("#password").val();
	if(username==null||username==""||username==undefined){
		alert("用户名不能为空!");
		return "";
	}
	if(pwd==null||pwd==""||pwd==undefined){
		alert("密码不能为空!");
		return "";
	}
	var saveTime="";
	if($("#saveTime").is(":checked")){
		saveTime="1";//保存一天 
	}
	$.ajax({
		   type: "POST",
		   url: "login!login.action",
		   data: {username:username,password:pwd,saveTime:saveTime},
		   async: false,
		   success: function(msg){
			   //alert(msg);
			   if(msg==="成功ok"){
				   //alert(1111);
				   window.location.href="<%=request.getContextPath() %>/redirectUrl.jsp";
				   return "";
			   }
			   if(msg==="toMobile"){
				   //alert("mobile");
				   window.location.href="<%=request.getContextPath()%>/mobile.jsp";
				   return;
			   }
			  // alert(222);
			   //alert("${refererUrl}");
			  //alert(msg);
			  window.location.href="${refererUrl}";
		   }
	});
	
}

//回车时，默认是登陆
function on_return(){
	 //alert("执行了-----回车-----操作");
 if(window.event.keyCode == 13){
	 //alert("执行了-----回车-----操作");
  if (document.all('sub')!=null){
     document.all('sub').click();
     }
 }
}
</script>
</head>

  <body onkeydown="on_return();">
  <div class="container">
      <div class="form-signin" role="form">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input id="email" type="text" class="form-control" placeholder="Email address" required autofocus>
        <input id="password" type="password" class="form-control" placeholder="Password" required>
        <label class="checkbox">
          <input type="checkbox" value="remember-me" name="saveTime" id="saveTime" > Remember me
        </label>
        <button id="sub" class="btn btn-lg btn-primary btn-block" onclick="login();">Sign in</button>
      </div>
    </div> <!-- /container -->
  </body>
</html>