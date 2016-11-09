<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>
所有文章列表</title>
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
       test  所有文章列表
 </div>
 </div>
			</div>
			<!-- DIY -->
      </div><!--/row-->
      <%@include file="/common/footer.jsp" %>
    </div>
</body>
</html>