<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>
故国神游，多情应笑我，早生华发， 
人生如梦，一尊还酹江月</title>
<script src="<%=request.getContextPath() %>/js/jquery.js"></script>
<link href="<%=request.getContextPath() %>/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath() %>/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
<script src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/js/themes/base/jquery.ui.all.css">
<script src="<%=request.getContextPath() %>/js/ui/jquery.ui.core.js"></script>
<script src="<%=request.getContextPath() %>/js/ui/jquery.ui.widget.js"></script>
<script src="<%=request.getContextPath() %>/js/ui/jquery.ui.mouse.js"></script>
<script src="<%=request.getContextPath() %>/js/ui/jquery.ui.draggable.js"></script>
<script src="<%=request.getContextPath() %>/js/ui/jquery.ui.position.js"></script>
<script src="<%=request.getContextPath() %>/js/ui/jquery.ui.resizable.js"></script>
<script src="<%=request.getContextPath() %>/js/ui/jquery.ui.button.js"></script>
<script src="<%=request.getContextPath() %>/js/ui/jquery.ui.dialog.js"></script>
<link href="<%=request.getContextPath() %>/css/ssh.css" rel="stylesheet">
<script type="text/javascript">
function saveUserpw(id,password){
	var newPassword=document.getElementById('password').value;
	$.ajax({
		   type: "POST",
		   url: "user!saveUserpw.action",
		   data:{id:id,password:newPassword},
		   async: false,
		   success: function(msg){
					alert("保存成功!");
		   }
	});
	window.parent.document.getElementById('updatediv').style.display=(window.parent.document.getElementById('updatediv').style.display=='none')?'':'none';
}
function validatePassword(){
	var pwd=$("#password").val();
	var confirmPwd=$("#Confirmpassword").val();
	if(pwd!=undefined&&confirmPwd!=undefined&&pwd!=null&&confirmPwd!=null&&pwd!=confirmPwd){
		alert("两次输入密码不一致,请重新输入!");
		$("#password").val("");
		$("#Confirmpassword").val("");
	}
}
function save(){
	var pwd=$("#password").val();
	var username=$("#username").val();
	$.ajax({
		   type: "POST",
		   url: "user!saveUser.action",
		   data: {username:username,password:pwd},
		   async: false,
		   success: function(msg){
					alert("保存成功!");
		   }
	});
	$.ajax({
		  url: "user!showAllUser.action",
		  cache: false,
		  success: function(html){
		    $("#rigthMain").html(html);
		  }
		});
}
</script>
</head>
<body>
<%@include file="/common/header.jsp" %>

    <div class="container-fluid" id="left">
      <div class="row-fluid">
        <%@include file="/common/menu.jsp" %>
        <!-- DIY -->
        <div class="span9"  id="rightMain" >
			<h1 align="center">新增用户!</h1>
 <div class="container">
 <div class="form-signin">
  <h2 class="form-signin-heading">Please sign in</h2>
        <input id="username" name="username"  type="text" class="input-block-level" placeholder="Email address">
        <input id ="password" name="password"  type="password" class="input-block-level" placeholder="Password">
         <input  id ="Confirmpassword" name="Confirmpassword"  type="password" class="input-block-level"   placeholder="ConfirmPassword" onblur="validatePassword();">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-large btn-primary" type="submit" onclick="save();">Save</button>
 </div>
 </div>
			</div>
			<!-- DIY -->
      </div><!--/row-->
      <%@include file="/common/footer.jsp" %>
    </div>
</body>
</html>