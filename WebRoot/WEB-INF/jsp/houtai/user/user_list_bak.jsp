<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="<%=request.getContextPath() %>/js/ui/jquery.ui.core.js"></script>
<script src="<%=request.getContextPath() %>/js/ui/jquery.ui.widget.js"></script>
<script src="<%=request.getContextPath() %>/js/ui/jquery.ui.mouse.js"></script>
<script src="<%=request.getContextPath() %>/js/ui/jquery.ui.draggable.js"></script>
<script src="<%=request.getContextPath() %>/js/ui/jquery.ui.position.js"></script>
<script src="<%=request.getContextPath() %>/js/ui/jquery.ui.resizable.js"></script>
<script src="<%=request.getContextPath() %>/js/ui/jquery.ui.button.js"></script>
<script src="<%=request.getContextPath() %>/js/ui/jquery.ui.dialog.js"></script>

<script type="text/javascript">
	$(function() {
		$(".dialog-form").dialog(
				{
					autoOpen : false,
					height : 400,
					width : 350,
					modal : true,
					buttons : {
						"Create an account" : function() {
							var editID = $("#hiddenID").val();
							var pwd = $("#password").val();
							var username = $("#username").val();
							var newPassword = $("#password").val();
							$.ajax({
								type : "POST",
								url : "login!saveUserpw.action",
								data : "id=" + editID + "&password="
										+ newPassword + "&random="
										+ Math.random(),
								async : true,
								success : function(msg) {
									alert("保存成功!");
								}
							});
						},
						Cancel : function() {
							$(".dialog-form").dialog("close");
						}
					}
				});

	});
</script>
<script type="text/javascript">
function DelUser(id) {
	if (!confirm("真的要删除吗？")){
		return;
	}
	$.ajax({
		   type: "POST",
		   url: "user!DelUser.action",
		   data: "id="+id+"&random="+Math.random(),
		   async: false,
		   success: function(msg){
					alert("删除成功!");
		   }
	});
}
function toUpdate(id,username,password){
	$("#name").val("tfy12345");
	$("#email").val(""+username);
	$("#password").val(password);
	$("#hiddenID").val(id);
	$(".dialog-form").dialog("open");
}
</script>
