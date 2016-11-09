<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta property="wb:webmaster" content="1e96a1608a59d511" />
		<meta property="qc:admins" content="1220075172274526774710363757" />
		<title>jQueryMobile &middot; (代码改变世界)</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<!-- Le styles -->
  <meta name="viewport" content="width=device-width, initial-scale=1"> 
<link rel="stylesheet" href="js/jQueryMobile/themes/default/jquery.mobile-1.4.2.min.css" type="text/css"></link>
　 <script src="js/jquery-1.10.2.js"></script>
<script src="js//jQueryMobile/jquery.mobile-1.4.2.min.js"></script>
		<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->
		<!-- Fav and touch icons -->
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/apple-touch-icon-144-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/apple-touch-icon-114-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/apple-touch-icon-72-precomposed.png">
		<link rel="apple-touch-icon-precomposed" href="images/apple-touch-icon-57-precomposed.png">
		<link rel="shortcut icon" href="images/favicon.png">
	</head>
	<body>
	<div data-role="page" class="jqm-demos" data-quicklinks="true">
	<div role="main" class="ui-content jqm-content">
	<h2>文章列表</h2>
	<p>分享思想,共同进步!<code>come on</code></p>
	<div data-demo-html="true">
		 <ul data-role="listview" data-inset="true">
		  <c:forEach items="${pager.list}" varStatus="articles" var="article">
			<div data-role="collapsible" data-theme="a" data-content-theme="a">
        		<h3>${article.title}</h3>
        		<p>${article.content}</p>
        		<div class="ds-login-buttons">
					<p>社交帐号登录:</p>
					<div class="ds-social-links">
					<ul class="ds-service-list">
					<li>
					<a class="ds-service-link ds-weibo" rel="nofollow" href="http://192.168.1.100:8080/blog0.1/login/weibo/?sso=1&redirect_uri=http%3A%2F%2Fhttp://192.168.1.100:8080/blog0.1%2Fwp-login.php%3Faction%3Dduoshuo_login%26redirect_to%3Dhttp%253A%252F%252Fhttp://192.168.1.100:8080/blog0.1%252F%253Fp%253D116">微博</a>
					</li>
       				<li>
					<a class="ds-service-link ds-qq" rel="nofollow" href="http://192.168.1.100:8080/blog0.1/login/qq/?sso=1&redirect_uri=http%3A%2F%2Fhttp://192.168.1.100:8080/blog0.1%2Fwp-login.php%3Faction%3Dduoshuo_login%26redirect_to%3Dhttp%253A%252F%252Fhttp://192.168.1.100:8080/blog0.1%252F%253Fp%253D116">QQ</a>
					</li>
					</ul>
					</div>
					</div>
    			</div>
		 </c:forEach>
		</ul>
			</div>
			
			<c:if test="${pager.pageIndex==1 && pager.totalPage>1}">
			<a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+1}" class="ui-btn ui-btn-inline">下一页</a>
			</c:if>
			<c:if test="${pager.pageIndex>1 &&pager.pageIndex<pager.totalPage}">
			<a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex-1}" class="ui-btn ui-btn-inline">上一页</a>
			<a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+1}" class="ui-btn ui-btn-inline">下一页</a>
			</c:if>
			<c:if test="${pager.pageIndex!=1 && pager.pageIndex==pager.totalPage}">
			<a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex-1}" class="ui-btn ui-btn-inline">上一页</a>
			</c:if>
	</div>
	</div>
	</body>
</html>
