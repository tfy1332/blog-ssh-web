<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>人生如梦，一尊还酹江月</title>
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
    $(function() {
		$(".dialog-form-updateUserpwd").dialog(
				{
					autoOpen : false,
					height : 400,
					width : 350,
					modal : true,
					buttons : {
						"SavePwd" : function() {
							var editID = $("#hiddenID").val();
							var newPassword = $("#password1").val();
							if(editID!=""&&editID!=null&&editID!=undefined){
								$.ajax({
									type : "POST",
									url : "user!saveUserpw.action",
									data : {id:editID,password:newPassword},
									async : true,
									success : function(msg) {
										$(".dialog-form-updateUserpwd").dialog("close");
										alert("保存成功!");
										window.location.href="user!showAllUserForPage.action";
									}
								});
							}
						},
						Cancel : function() {
							$(".dialog-form-updateUserpwd").dialog("close");
						}
					}
				});

	});
    $(function() {
		$(".dialog-form-addUser").dialog(
				{
					autoOpen : false,
					height : 400,
					width : 350,
					modal : true,
					buttons : {
						"Save" : function() {
								var email=$("#email1").val();
								var pwd=$("#password1").val();
								var username=$("#name1").val();
								if(username==null||username==""||username==undefined){
									alert("请输入用户名!");
									return "";
								}
								if(email==null||email==""||email==undefined){
									alert("请输入邮箱!");
									return "";
								}
								if(pwd==null||pwd==""||pwd==undefined){
									alert("请输入密码!");
									return "";
								}
								$.ajax({
									   type: "POST",
									   url: "user!saveUser.action",
									   data: {username:username,email:email,password:pwd},
									   async: false,
									   success: function(msg){
										   if(msg==""||msg==null||msg==undefined){
											   alert(msg);
											   alert("保存失败!");
											   return "";
										   }
										    $(".dialog-form-addUser").dialog("close");
											alert("保存成功!");
											window.location.href="user!showAllUserForPage.action";
									   }
								});
						},
						Cancel : function() {
							$(".dialog-form-addUser").dialog("close");
						}
					}
				});

	});
    $(function() {
		$(".dialog-form-delUser").dialog(
				{
					autoOpen : false,
					height : 200,
					width : 250,
					modal : true,
					buttons : {
						"Delete" : function() {
							var id = $("#hiddenID").val();
							$.ajax({
					    		   type: "POST",
					    		   url: "user!DelUser.action",
					    		   data: {id:id},
					    		   async: false,
					    		   success: function(msg){
					    			   		$(".dialog-form-delUser").dialog("close");
					    					alert("删除成功!");
					    					window.location.href="user!showAllUserForPage.action";
					    		   }
					    	});
							
						},
						Cancel : function() {
							$(".dialog-form-delUser").dialog("close");
						}
					}
				});

	});
    function DelUser(id) {
    	$("#hiddenID").val(id);
    	$(".dialog-form-delUser").dialog("open");
    }
    function toUpdate(id,username,password){
    	$("#name2").val("tfy12345");
    	$("#email2").val(""+username);
    	$("#password2").val("");
    	$("#hiddenID").val(id);
    	$(".dialog-form-updateUserpwd").dialog("open");
    }
    function addUser(){
    	$("#name1").val("");
    	$("#email1").val("");
    	$("#password1").val("");
    	$(".dialog-form-addUser").dialog("open");
    }
    </script>
</head>
<body>
<%@include file="/common/header.jsp" %>

    <div class="container-fluid" id="left">
      <div class="row-fluid">
        <%@include file="/common/qiantai_menu.jsp" %>
        <!-- DIY -->
        <div class="span9"  id="rightMain" >
        <span class="btn btn-primary">用户的基本信息</span>
        <!-- 
        <button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"
								onclick="addUser();">
								<span class="btn btn-primary">新增</span>
								</button>
         -->
			<table class="table  table-hover">
				<tr>
					<th>ID</th>
					<th>用户名</th>
					<th>邮箱</th>
					<th>性别</th>
					<th>文章数</th>
					<th>注册时间</th>
					<th>最新登录IP</th>
					<th>最后登录时间</th>
					<th>密 码</th>
					<th>操 作</th>
				</tr>
				<c:forEach items="${pager.list}" varStatus="users" var="user">
					<tr class="success">
						<td>${user.id}</td>
						<td>${user.username}</td>
						<td>${user.email}</td>
						<td>${user.sex}</td>
						<td>${user.articles_number}</td>
						<td>${user.registration_time}</td>
						<td>${user.loginIP}</td>
						<td>${user.lastLogin}</td>
						<td>${user.password}</td>
						<td>
							<button class="btn btn-small btn-primary"
								onclick="toUpdate('${user.id}','${user.username}','${user.password}');">
								<span class="ui-button-text">修改</span>
							</button> &nbsp;&nbsp;
							<!--
							<button class="btn btn-small btn-danger"
								onclick="DelUser('${user.id}')">
								<span class="ui-button-text">删除</span>
							</button>
							 -->
						</td>
					</tr>
				</c:forEach>
			</table>
			<div class="pagination" align="center">
				<span style="border-style: solid;border-width: 1px 1px 1px 0;float: left;line-height: 20px;padding: 4px 12px;"> ${pager.total}条数据  共${pager.totalPage}页</span>
				<ul>
				<c:if test="${pager.pageIndex!=1}">
				<li><a href="user!showAllUserForPage.action?pageIndex=1">首页</a></li>
				<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex-1}">Prev</a></li>
				</c:if>
				<c:if test="${pager.pageIndex>=6}">
				<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex-1}">...</a></li>
				</c:if>
				<c:if test="${pager.pageIndex<=pager.totalPage }">
				<c:choose>
      			 <c:when test="${pager.pageIndex%5==1}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex}">${pager.pageIndex}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==2}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex-1}">${pager.pageIndex-1}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==3}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex-2}">${pager.pageIndex-2}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==4}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex-3}">${pager.pageIndex-3}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==0}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex-4}">${pager.pageIndex-4}</a></li>
     			  </c:when>
      			 <c:otherwise>
	     		 </c:otherwise>
				</c:choose>
				</c:if>
				<c:if test="${pager.pageIndex<=pager.totalPage }">
				<c:choose>
				<c:when test="${pager.pageIndex%5==1 &&pager.pageIndex+1<=pager.totalPage}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+1}">${pager.pageIndex+1}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==2}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex}">${pager.pageIndex}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==3}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex-1}">${pager.pageIndex-1}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==4}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex-2}">${pager.pageIndex-2}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==0}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex-3}">${pager.pageIndex-3}</a></li>
     			  </c:when>
      			 <c:otherwise>
	     		 </c:otherwise>
				</c:choose>
				</c:if>
				<c:if test="${pager.pageIndex<=pager.totalPage }">
				<c:choose>
				<c:when test="${pager.pageIndex%5==1 &&pager.pageIndex+2<=pager.totalPage}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+2}">${pager.pageIndex+2}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==2 &&pager.pageIndex+1<=pager.totalPage}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+1}">${pager.pageIndex+1}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==3}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex}">${pager.pageIndex}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==4}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex-1}">${pager.pageIndex-1}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==0}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex-2}">${pager.pageIndex-2}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex+2<=pager.totalPage}">
     			 <li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+2}">${pager.pageIndex+2}</a></li>
     			  </c:when>
      			 <c:otherwise>
				 </c:otherwise>
				</c:choose>
				</c:if>
				<c:if test="${pager.pageIndex<=pager.totalPage }" >
				<c:choose>
				<c:when test="${pager.pageIndex%5==1 &&pager.pageIndex+3<=pager.totalPage}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+3}">${pager.pageIndex+3}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==2 &&pager.pageIndex+2<=pager.totalPage}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+2}">${pager.pageIndex+2}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==3 &&pager.pageIndex+1<=pager.totalPage}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+1}">${pager.pageIndex+1}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==4}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex}">${pager.pageIndex}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==0}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex-1}">${pager.pageIndex-1}</a></li>
     			  </c:when>
      			 <c:otherwise >
				 </c:otherwise>
				</c:choose>
				</c:if>
				<c:if test="${pager.pageIndex<=pager.totalPage}">
				<c:choose>
				<c:when test="${pager.pageIndex%5==1 &&pager.pageIndex+4<=pager.totalPage}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+4}">${pager.pageIndex+4}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==2 &&pager.pageIndex+3<=pager.totalPage}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+3}">${pager.pageIndex+3}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==3 &&pager.pageIndex+2<=pager.totalPage}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+2}">${pager.pageIndex+2}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==4 &&pager.pageIndex+1<=pager.totalPage}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+1}">${pager.pageIndex+1}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==0}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex}">${pager.pageIndex}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex+4<=pager.totalPage}">
     			 <li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+4}">${pager.pageIndex+4}</a></li>
     			  </c:when>
      			 <c:otherwise>
				  </c:otherwise>
				</c:choose>
				</c:if>
				<c:if test="${pager.totalPage>=6}">
				<c:choose>
				<c:when test="${pager.pageIndex%5==1 &&pager.pageIndex+4<pager.totalPage}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+1}">...</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==2 &&pager.pageIndex+3<pager.totalPage}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+1}">...</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==3 &&pager.pageIndex+2<pager.totalPage}">
              		<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+1}">...</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==4 &&pager.pageIndex+1<pager.totalPage}">
              	<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+1}">...</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==0 &&pager.pageIndex<pager.totalPage}">
              	<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+1}">...</a></li>
     			  </c:when>
      			 <c:otherwise>
				</c:otherwise>
				</c:choose>
				</c:if>
				<c:if test="${pager.pageIndex<pager.totalPage }">
				<li><a href="user!showAllUserForPage.action?pageIndex=${pager.pageIndex+1}">Next</a></li>
				<li><a href="user!showAllUserForPage.action?pageIndex=${pager.totalPage}">最后一页</a></li>
				</c:if>
				</ul>
			</div>
			</div>
			<div class="dialog-form-addUser" title="Create new user">
				<form>
					<fieldset>
						<label for="name">Name</label> 
						<input type="text" name="name" id="name1" class="text ui-widget-content ui-corner-all"/> 
						<label for="email">Email</label> 
						<input type="text" name="email" id="email1" class="text ui-widget-content ui-corner-all" />
						<label for="password">Password</label> 
						<input type="password" name="password" id="password1"
							class="text ui-widget-content ui-corner-all" />
					</fieldset>
					<input id="hiddenID" type="hidden">
				</form>
			</div>
			<div class="dialog-form-updateUserpwd" title="Update userPwd">
				<form>
					<fieldset>
						<label for="name">Name</label> 
						<input  type="text" name="name"
							id="name2" class="text ui-widget-content ui-corner-all" onfocus="test1();" onblur="test2();"/> 
							 <label for="email">Email</label>
							  <input type="text" name="email" id="email2"
							class="text ui-widget-content ui-corner-all" onfocus="test1();" onblur="test2();"/>
						<label for="password">Password</label> 
						<input type="password"
							name="password" id="password2"
							class="text ui-widget-content ui-corner-all" />
					</fieldset>
					<input id="hiddenID" type="hidden">
				</form>
			</div>
			<div class="dialog-form-delUser" title="Delete user">
				<form>
					<fieldset>
					<div  align="center">
					<span class="ui-button-text">确认要删除吗?</span>
					</div>
					</fieldset>
					<input id="hiddenID" type="hidden">
				</form>
			</div>
			</div>
			<!-- DIY -->
      </div><!--/row-->
      <%@include file="/common/footer.jsp" %>
    </div>
<script type="text/javascript">
    function test1(){
    	document.getElementById("name2").disabled=true;
    	document.getElementById("email2").disabled=true
    	//alert(document.getElementById("name2").disabled);
    	//$("#name2").attr("disabled","disabled");
    	//$("#email2").attr("disabled","disabled");
    }
    function test2(){
    	//alert(222);
    	document.getElementById("name2").disabled=false;
    	document.getElementById("email2").disabled=false;
    	//$("#name2").attr("disabled","");
    	//$("#email2").attr("disabled","");
    }
    </script>
</body>
   
</html>