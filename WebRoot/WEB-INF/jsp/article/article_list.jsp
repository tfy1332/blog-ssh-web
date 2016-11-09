<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>
网站(DB)所有文章列表</title>
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
		$(".dialog-form-delArticle").dialog(
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
					    		   url: "article!delArticle.action",
					    		   data: {id:id},
					    		   async: false,
					    		   success: function(msg){
					    			   		$(".dialog-form-delArticle").dialog("close");
					    					alert("删除成功!");
					    					window.location.href="article!showAllArticleForPage.action";
					    		   }
					    	});
							
						},
						Cancel : function() {
							$(".dialog-form-delArticle").dialog("close");
						}
					}
				});

	});
    function delArticle(id) {
    	$("#hiddenID").val(id);
    	$(".dialog-form-delArticle").dialog("open");
    }
    function toUpdate(id){
    	window.location.href="article!toUpdateUI.action?id="+id;
    }
    function addArticleUI(){
    	window.location.href="article!addArticleUI.action";
    }

    function removeHTMLTag(str) {
        str = str.replace(/<\/?[^>]*>/g,''); //去除HTML tag
        str = str.replace(/[ | ]*\n/g,'\n'); //去除行尾空白
        //str = str.replace(/\n[\s| | ]*\r/g,'\n'); //去除多余空行
        str=str.replace(/&nbsp;/ig,'');//去掉&nbsp;
        return str;
    }
    function test(){
 //alert();
        }
    </script>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="bootstrap-2.3.2/docs/assets/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="bootstrap-2.3.2/docs/assets/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="bootstrap-2.3.2/docs/assets/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="bootstrap-2.3.2/docs/assets/ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="bootstrap-2.3.2/docs/assets/ico/favicon.png">
</head>
<body onload="test();">
<%@include file="/common/header.jsp" %>

    <div class="container-fluid" id="left">
      <div class="row-fluid">
        <%@include file="/common/qiantai_menu.jsp" %>
        <!-- DIY -->
        <div class="span9"  id="rightMain" >
        <button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"
								onclick="addArticleUI();">
								<span class="btn btn-primary">发表文章</span>
								</button>
			<table class="table  table-hover">
				<tr>
					<th>标题</th>
					<th>Author(作者)</th>
					<th>阅读</th>
					<th>评论</th>
					<th>简介</th>
					<th>操 作</th>
				</tr>
				<c:forEach items="${pager.list}" varStatus="articles" var="article">
					<tr class="success">
						<td><a href="article!lookArticle.action?id=${article.id}">${article.title} </a>(${article.recordTime})</td>
						<td><a href="user!showAllUserForPage?username=<%= session.getAttribute("user")%> ">${article.authorName} </a></td>
						<td>${article.dotNumber}</td>
						<td>${article.revertNumber}</td>
						<td>
						<c:if test="${fn:length(article.content)>100 }">removeHTMLTag(${ fn:substring( article.content,0,100)}) ...</c:if>
 						<c:if test="${fn:length(article.content)<=100 }">removeHTMLTag(${  article.content })</c:if>
						</td>
						<td>
							<button class="btn btn-small btn-primary"
								onclick="toUpdate('${article.id}');" >
								<span class="ui-button-text">修改</span>
							</button> &nbsp;&nbsp;
							<button class="btn btn-small btn-danger"
								onclick="delArticle('${article.id}');" >
								<span class="ui-button-text">删除</span>
							</button>
						</td>
					</tr>
				</c:forEach>
			</table>
			<div class="pagination" align="center">
				<span style="border-style: solid;border-width: 1px 1px 1px 0;float: left;line-height: 20px;padding: 4px 12px;"> ${pager.total}条数据  共${pager.totalPage}页</span>
				<ul>
				<c:if test="${pager.pageIndex!=1}">
				<li><a href="article!showAllArticleForPage.action?pageIndex=1">首页</a></li>
				<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex-1}">Prev</a></li>
				</c:if>
				<c:if test="${pager.pageIndex>=6}">
				<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex-1}">...</a></li>
				</c:if>
				<c:if test="${pager.pageIndex<=pager.totalPage }">
				<c:choose>
      			 <c:when test="${pager.pageIndex%5==1}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex}">${pager.pageIndex}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==2}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex-1}">${pager.pageIndex-1}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==3}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex-2}">${pager.pageIndex-2}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==4}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex-3}">${pager.pageIndex-3}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==0}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex-4}">${pager.pageIndex-4}</a></li>
     			  </c:when>
      			 <c:otherwise>
	     		 </c:otherwise>
				</c:choose>
				</c:if>
				<c:if test="${pager.pageIndex<=pager.totalPage }">
				<c:choose>
				<c:when test="${pager.pageIndex%5==1 &&pager.pageIndex+1<=pager.totalPage}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+1}">${pager.pageIndex+1}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==2}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex}">${pager.pageIndex}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==3}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex-1}">${pager.pageIndex-1}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==4}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex-2}">${pager.pageIndex-2}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==0}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex-3}">${pager.pageIndex-3}</a></li>
     			  </c:when>
      			 <c:otherwise>
	     		 </c:otherwise>
				</c:choose>
				</c:if>
				<c:if test="${pager.pageIndex<=pager.totalPage }">
				<c:choose>
				<c:when test="${pager.pageIndex%5==1 &&pager.pageIndex+2<=pager.totalPage}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+2}">${pager.pageIndex+2}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==2 &&pager.pageIndex+1<=pager.totalPage}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+1}">${pager.pageIndex+1}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==3}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex}">${pager.pageIndex}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==4}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex-1}">${pager.pageIndex-1}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==0}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex-2}">${pager.pageIndex-2}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex+2<=pager.totalPage}">
     			 <li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+2}">${pager.pageIndex+2}</a></li>
     			  </c:when>
      			 <c:otherwise>
				 </c:otherwise>
				</c:choose>
				</c:if>
				<c:if test="${pager.pageIndex<=pager.totalPage }" >
				<c:choose>
				<c:when test="${pager.pageIndex%5==1 &&pager.pageIndex+3<=pager.totalPage}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+3}">${pager.pageIndex+3}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==2 &&pager.pageIndex+2<=pager.totalPage}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+2}">${pager.pageIndex+2}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==3 &&pager.pageIndex+1<=pager.totalPage}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+1}">${pager.pageIndex+1}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==4}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex}">${pager.pageIndex}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==0}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex-1}">${pager.pageIndex-1}</a></li>
     			  </c:when>
      			 <c:otherwise >
				 </c:otherwise>
				</c:choose>
				</c:if>
				<c:if test="${pager.pageIndex<=pager.totalPage}">
				<c:choose>
				<c:when test="${pager.pageIndex%5==1 &&pager.pageIndex+4<=pager.totalPage}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+4}">${pager.pageIndex+4}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==2 &&pager.pageIndex+3<=pager.totalPage}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+3}">${pager.pageIndex+3}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==3 &&pager.pageIndex+2<=pager.totalPage}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+2}">${pager.pageIndex+2}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==4 &&pager.pageIndex+1<=pager.totalPage}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+1}">${pager.pageIndex+1}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==0}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex}">${pager.pageIndex}</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex+4<=pager.totalPage}">
     			 <li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+4}">${pager.pageIndex+4}</a></li>
     			  </c:when>
      			 <c:otherwise>
				  </c:otherwise>
				</c:choose>
				</c:if>
				<c:if test="${pager.totalPage>=6}">
				<c:choose>
				<c:when test="${pager.pageIndex%5==1 &&pager.pageIndex+4<pager.totalPage}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+1}">...</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==2 &&pager.pageIndex+3<pager.totalPage}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+1}">...</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==3 &&pager.pageIndex+2<pager.totalPage}">
              		<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+1}">...</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==4 &&pager.pageIndex+1<pager.totalPage}">
              	<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+1}">...</a></li>
     			  </c:when>
     			  <c:when test="${pager.pageIndex%5==0 &&pager.pageIndex<pager.totalPage}">
              	<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+1}">...</a></li>
     			  </c:when>
      			 <c:otherwise>
				</c:otherwise>
				</c:choose>
				</c:if>
				<c:if test="${pager.pageIndex<pager.totalPage }">
				<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.pageIndex+1}">Next</a></li>
				<li><a href="article!showAllArticleForPage.action?pageIndex=${pager.totalPage}">最后一页</a></li>
				</c:if>
				</ul>
			</div>
			<div class="dialog-form-delArticle" title="Delete user">
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
</body>
   
</html>