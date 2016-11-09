<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>入我相思门，知我相思苦，长相思兮长相忆，短相思兮无穷极.－李白《三五七言》EASYUI--TFY</title>
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


<!-- EASY UI  -->

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.6/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.6/datagrid-detailview.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.6/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/json2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/util.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.blockUI.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/jquery-easyui-1.3.6/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/jquery-easyui-1.3.6/themes/icon.css" type="text/css"></link>

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
			
			
			
			
			<div id="user_grid"></div>
			
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
$(function(){
	$('#user_grid').datagrid({
	    rownumbers: true,
        title:'用户列表',
        animate: true,
        collapsible: true,
        fitColumns: true,
        pagination:true,
        singleSelect:true,
        sortName:'id',
        sortOrder:'desc',
        url: '${pageContext.request.contextPath}/user!showAllUserForPageAdminEasyUI',
        loader: function (param, success, error){
        	var that = $(this);  
            var opts = that.datagrid('options');
            if (!opts.url) {  
                return false;  
            }
            var searchParam = $('#user_search').form('getData');
        	param.others = searchParam;
        	$.toPost(opts.url, param, success, error);
        },
        columns: [[
            {field:'id',title:'ID',width:25},
            {field:'username',title:'用户名',width:25},
            {field:'image',title:'头像',width:25,formatter:function(value){
            	if(value.length>0){
					return '<img src="'+imagePath+value+'" width="100px" height="100px" style="padding:5px;"/>';
       			}
           	}},
            {field:'_operate',title:'操作',width:25,formatter:operaterFunction}
            ]],
          toolbar: [{
          	text:'新建用户',
      		iconCls: 'icon-add',
      		handler: function(){
      			user_addObj();
      		}
      	  }]
	});
	$('#uploadUserDialog').dialog({
		title: '上传图片',
		width: 400,
		height: 200,
		closed: true,
		cache: false,
		href: '${pageContext.request.contextPath}/upload/show.htm',
		modal: true
	});
	
	
	$('#user_editDlg').dialog({
		width: 330,
		height: 300,
		left: 300,
		top:120,
		closed:true,
		modal:true,
		resizable:true,
		buttons:[{
			text:'保存',
			handler:function(){
				if(!$('#user_editForm').form('validate')) return;
				var form = $('#user_editForm');
				$.toPgSubmit(form, function(result){
					if(result.result == '1'){
						$.messager.alert('提示','操作成功!','info');
						$('#user_editDlg').dialog('close');
						$('#user_grid').datagrid('reload');
					}else if(result.message!=""){
						$.messager.alert('提示',result.message,'info');
					}else{
						$.messager.alert('提示','操作失败!','info');
					}
				});
			}
		},{
			text:'取消',
			handler:function(){
				$('#user_editDlg').dialog('close');
			}
		}]
	});
	$('#user_editLayout').layout();
});
//添加
function  user_addObj(){
	$.parser.parse('#user_editForm');
	$('#user_editForm').form('clear');
	$("#enable").combobox("select","true");
	$("#user_editDlg").dialog('open').dialog('setTitle','新建用户');
}
//查看
function user_showObj(value,row,index){
	$("#mobileAppShowIcon").html('');
	$("#mobileAppShowQrcodeImg").html('');
	$("#mobileAppShowPic1").html('');
	$("#mobileAppShowPic2").html('');
	$("#mobileAppShowPic3").html('');
	$("#mobileAppShowPic4").html('');
	$("#mobileAppShowPic5").html('');
	$('#user_grid').datagrid('selectRow',index);
	var row = $('#user_grid').datagrid('getSelected');
	if(row){
		$("#mobileAppShowName").html(row.name);
		html_show_img_look('mobileAppShowIcon',row.icon);
		$("#mobileAppShowOrderNum").html(row.orderNum);
		$("#mobileAppShowDescription").html(row.description);
		$("#mobileAppShowOnline").html(row.onlineCN);
		$("#mobileAppShowCategory").html(row.categoryCN);
		$("#mobileAppShowPlatType").html(row.platTypeCN);
		html_show_img_look('mobileAppShowQrcodeImg',row.qrcodeImg);
		html_show_img_look('mobileAppShowPic1',row.pic1);
		html_show_img_look('mobileAppShowPic2',row.pic2);
		html_show_img_look('mobileAppShowPic3',row.pic3);
		html_show_img_look('mobileAppShowPic4',row.pic4);
		html_show_img_look('mobileAppShowPic5',row.pic5);
		$('#user_showObj').dialog('open');
	}
}
//编辑
function user_editObj(value,row,index){
	$('#user_grid').datagrid('selectRow',index);
	var row = $('#user_grid').datagrid('getSelected');
	if(row){
		$.parser.parse('#user_editForm');
		$('#user_editForm').form('clear');
		$('#user_icon_show').html('');
		$("#user_qrcodeImg_show").html('');
		$("#user_pic1_show").html('');
		$("#user_pic2_show").html('');
		$("#user_pic3_show").html('');
		$("#user_pic4_show").html('');
		$("#user_pic5_show").html('');
		$('#user_editForm').form('load',row);
		html_show_img('user_icon_show',row.icon);
		html_show_img('user_qrcodeImg_show',row.qrcodeImg);
		html_show_img('user_pic1_show',row.pic1);
		html_show_img('user_pic2_show',row.pic2);
		html_show_img('user_pic3_show',row.pic3);
		html_show_img('user_pic4_show',row.pic4);
		html_show_img('user_pic5_show',row.pic5);
		$("#user_editDlg").dialog('open').dialog('setTitle','编辑');
	}
}
//删除
function user_delObj(value,row,index){
	$('#user_grid').datagrid('selectRow',index);
	var row = $('#user_grid').datagrid('getSelected');
	if(row){
		$.messager.confirm('确认','确认要删除所选信息么?',function(r){
	        if (r){
				$.toPgPost("${pageContext.request.contextPath}/mobileApp/del.htm",{id:row.id},function(data){
					if(data && data.result){
						$.messager.alert('提示','删除成功!','info');
						$('#user_grid').datagrid('reload');
					}else{ $.messager.alert('提示','删除失败!','info'); }
				});
	        }
	    });
	}
}
//搜索
function user_search(){
    $('#user_grid').datagrid('reload',{pageNumber:1});
	
}
/**
 * 格式化“操作”列
 */
function operaterFunction(value,row,index){
 	return '　<a onclick="user_showObj(\''+value+'\',\''+row+'\',\''+index+'\')" href="javascript:void(0)"><span style="color: #0000FF;">查看</span></a>'
 	+ '　<a onclick="user_editObj(\''+value+'\',\''+row+'\',\''+index+'\')" href="javascript:void(0)"><span style="color: #0000FF;">编辑</span></a>　'
 	+'<a onclick="user_delObj(\''+value+'\',\''+row+'\',\''+index+'\')" href="javascript:void(0)"><span style="color: #0000FF;">删除</span></a>';
}

function upload_img_user(divName){
	$("#uploadUserDialog").dialog('open');
}

function page123(data){
	alert(data);
}

</script>
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