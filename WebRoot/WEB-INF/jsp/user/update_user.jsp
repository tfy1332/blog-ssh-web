<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>修改用户密码</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="<%=request.getContextPath() %>/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath() %>/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<script src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.min.js"></script>
<style type="text/css">
a{
text-decoration:none;
}
</style>
<script type="text/javascript">
function cancle() {
	window.parent.document.getElementById('updatediv').style.display=(window.parent.document.getElementById('updatediv').style.display=='none')?'':'none';
	}
function saveUserpw(id,password){
	var newPassword=document.getElementById('password').value;
	$.ajax({
		   type: "POST",
		   url: "login!saveUserpw.action",
		   data: "id="+id+"&password="+newPassword+"&random="+Math.random(),
		   async: false,
		   success: function(msg){
					alert("保存成功!");
					//alert(mag);
		 		//$("#updatediv").html(msg);
		   }
	});
	window.parent.document.getElementById('updatediv').style.display=(window.parent.document.getElementById('updatediv').style.display=='none')?'':'none';
	eval('window.parent.' + showUsers + '()');
	alert(222);
}
</script>
</head>
<body>
	<h1 align="center">修改用户密码!</h1>
<table class="table  table-hover">
<tr>
<th>I D</th>
<th>用户名</th>
<th>密  码</th>
<th>操  作</th>
</tr>
<tr class="success">
<td><input id="${user.id}" name="${user.id}" value="${user.id}" readonly="readonly"></input></td>
<td><input id="${user.username}" name="${user.username}" value="${user.username}"  readonly="readonly"></input></td>
<td><input  id="password" name="${user.password}" value="${user.password}"></input></td>
<td><a  href="javascript:saveUserpw('${user.id}');">保存</a>&nbsp;&nbsp;<a href="javascript:cancle();">取消</a></td>
</tr>
</table>
</body>
</html>