<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>代码改变世界,将世界踏在脚下!To be water,my friend.(代码改变世界)</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">

		<!-- Le styles -->
		<link rel="stylesheet" href="bootstrap/css/bootstrap.css"
			type="text/css"></link>
		<link rel="stylesheet" href="bootstrap/css/bootstrap-responsive.css"
			type="text/css"></link>
		<style type="text/css">
/* GLOBAL STYLES
    -------------------------------------------------- */
	/* Padding below the footer and lighter body text */
body {
	padding-bottom: 40px;
	color: #5a5a5a;
}

/* CUSTOMIZE THE NAVBAR
    -------------------------------------------------- */
	/* Special class on .container surrounding .navbar, used for positioning it into place. */
.navbar-wrapper {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	z-index: 10;
	margin-top: 20px;
	margin-bottom: -90px;
	/* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
}

.navbar-wrapper .navbar {
	
}

/* Remove border and change up box shadow for more contrast */
.navbar .navbar-inner {
	border: 0;
	-webkit-box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
	-moz-box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
	box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
}

/* Downsize the brand/project name a bit */
.navbar .brand {
	padding: 14px 20px 16px;
	/* Increase vertical padding to match navbar links */
	font-size: 16px;
	font-weight: bold;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, .5);
}

/* Navbar links: increase padding for taller navbar */
.navbar .nav>li>a {
	padding: 15px 20px;
}

/* Offset the responsive button for proper vertical alignment */
.navbar .btn-navbar {
	margin-top: 10px;
}

/* CUSTOMIZE THE CAROUSEL
    -------------------------------------------------- */
	/* Carousel base class */
.carousel {
	margin-bottom: 60px;
}

.carousel .container {
	position: relative;
	z-index: 9;
}

.carousel-control {
	height: 80px;
	margin-top: 0;
	font-size: 120px;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .4);
	background-color: transparent;
	border: 0;
	z-index: 10;
}

.carousel .item {
	height: 500px;
}

.carousel img {
	position: absolute;
	top: 0;
	left: 0;
	min-width: 100%;
	height: 500px;
}

.carousel-caption {
	background-color: transparent;
	position: static;
	max-width: 550px;
	padding: 0 20px;
	margin-top: 200px;
}

.carousel-caption h1,.carousel-caption .lead {
	margin: 0;
	line-height: 1.25;
	color: #fff;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .4);
}

.carousel-caption .btn {
	margin-top: 10px;
}

/* MARKETING CONTENT
    -------------------------------------------------- */
	/* Center align the text within the three columns below the carousel */
.marketing .span4 {
	text-align: center;
}

.marketing h2 {
	font-weight: normal;
}

.marketing .span4 p {
	margin-left: 10px;
	margin-right: 10px;
}

/* Featurettes
    ------------------------- */
.featurette-divider {
	margin: 80px 0; /* Space out the Bootstrap <hr> more */
}

.featurette {
	padding-top: 120px;
	/* Vertically center images part 1: add padding above and below text. */
	overflow: hidden;
	/* Vertically center images part 2: clear their floats. */
}

.featurette-image {
	margin-top: -120px;
	/* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
}

/* Give some space on the sides of the floated elements so text doesn't run right into it. */
.featurette-image.pull-left {
	margin-right: 40px;
}

.featurette-image.pull-right {
	margin-left: 40px;
}

/* Thin out the marketing headings */
.featurette-heading {
	font-size: 50px;
	font-weight: 300;
	line-height: 1;
	letter-spacing: -1px;
}

/* RESPONSIVE CSS
    -------------------------------------------------- */
@media ( max-width : 979px) {
	.container.navbar-wrapper {
		margin-bottom: 0;
		width: auto;
	}
	.navbar-inner {
		border-radius: 0;
		margin: -20px 0;
	}
	.carousel .item {
		height: 500px;
	}
	.carousel img {
		width: auto;
		height: 500px;
	}
	.featurette {
		height: auto;
		padding: 0;
	}
	.featurette-image.pull-left,.featurette-image.pull-right {
		display: block;
		float: none;
		max-width: 40%;
		margin: 0 auto 20px;
	}
}

@media ( max-width : 767px) {
	.navbar-inner {
		margin: -20px;
	}
	.carousel {
		margin-left: -20px;
		margin-right: -20px;
	}
	.carousel .container {
		
	}
	.carousel .item {
		height: 300px;
	}
	.carousel img {
		height: 300px;
	}
	.carousel-caption {
		width: 65%;
		padding: 0 90px;
		margin-top: 100px;
	}
	.carousel-caption h1 {
		font-size: 30px;
	}
	.carousel-caption .lead,.carousel-caption .btn {
		font-size: 18px;
	}
	.marketing .span4+.span4 {
		margin-top: 40px;
	}
	.featurette-heading {
		font-size: 30px;
	}
	.featurette .lead {
		font-size: 18px;
		line-height: 1.5;
	}
}







</style>

		<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

		<!-- Fav and touch icons 网站LOGO图片-->
		<link rel="apple-touch-icon-precomposed" sizes="144x144"
			href="images/apple-touch-icon-144-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="114x114"
			href="images/apple-touch-icon-114-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="72x72"
			href="/apple-touch-icon-72-precomposed.png">
		<link rel="apple-touch-icon-precomposed"
			href="images/apple-touch-icon-57-precomposed.png">
		<link rel="shortcut icon" href="images/favicon.png">
		<link href="css/carousel.css" rel="stylesheet">
		
		
		
		
<script type="text/javascript" src="wwwroot/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="wwwroot/js/jquery.SuperSlide.2.1.js"></script>
<script src="wwwroot/js/MSClass.js" type="text/javascript"></script>
<script type="text/javascript" src="wwwroot/js/png.js"></script>


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
	$.ajax({
		   type: "POST",
		   url: "login!login.action",
		   data: {username:username,password:pwd},
		   async: false,
		   success: function(msg){
			  // alert(msg);
			   if(msg==="成功ok"){
				   //alert(1111);
				   window.location.href="<%=request.getContextPath() %>/redirectUrl.jsp";
				   return "";
			   }
			   if(msg==="toMobile"){
				  // alert("mobile");
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
function register(){
	window.location.href="<%=request.getContextPath()%>/signup.jsp";
}


$(document).ready(function() {	
	$('#nav li').hover(function() {
		$('ul', this).slideDown(200);
		$(this).children('a:first').addClass("hov");
	}, function() {
		$('ul', this).slideUp(100);
		$(this).children('a:first').removeClass("hov");		
	});
});


//按钮事件
//$('#loginBtn').click(function() {alert('测试')});
 //回车提交事件
         $("body").keydown(function() {
             if (event.keyCode == "13") {//keyCode=13是回车键
                 alert(222);
                 $('#loginBtn').click();
             }
         });
         //--------回车提交事件完毕---------------------//
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
function removeHTMLTag(str) {
	alert(692);
    str = str.replace(/<\/?[^>]*>/g,''); //去除HTML tag
    str = str.replace(/[ | ]*\n/g,'\n'); //去除行尾空白
    //str = str.replace(/\n[\s| | ]*\r/g,'\n'); //去除多余空行
    str=str.replace(/&nbsp;/ig,'');//去掉&nbsp;
    return str;
}      
</script>
	</head>
	<body onkeydown="on_return();">
<!-- 
<div class="wrap">
	<ul id="nav">
		<li><a href="#">网站主页</a></li>
		<li><a href="#">关于我</a>
			<ul>
				<li><a href="#">Company</a></li>
				<li><a href="#">Authors</a></li>
				<li><a href="#">Advertising</a></li>
			</ul>
		</li>
		<li><a href="#">RSS订阅</a>
			<ul>
				<li><a href="#">PSD</a></li>
				<li><a href="#">Patterns</a></li>
				<li><a href="#">Icons</a></li>
			</ul>			
		</li>
		<li><a href="#">精美博文</a>
			<ul>
				<li><a href="#">HTML5</a></li>
				<li><a href="#">CSS3</a></li>
				<li><a href="#">jQuery</a></li>
				<li><a href="#">MySQL</a></li>
			</ul>
		</li>
		<li><a href="#">Web工具</a>
			<ul>
				<li><a href="#">Performance</a></li>
				<li><a href="#">CMS Plugins</a></li>
				<li><a href="#">Cheat Sheets</a></li>
			</ul>
		</li>
		<li><a href="#">Originals</a>
			<ul>
				<li><a href="#">Website Design</a></li>
				<li><a href="#">Mobile</a></li>
			</ul>
		</li>
	</ul>
</div>
 -->

		<!-- NAVBAR
    ================================================== -->
		<div class="navbar-wrapper">
			<!-- Wrap the .navbar in .container to center it within the absolutely positioned parent. -->
			<div class="container">

				<div class="navbar navbar-inverse">
					<div class="navbar-inner">
						<!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
						<button type="button" class="btn btn-navbar"
							data-toggle="collapse" data-target=".nav-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="brand" href="#">Project name</a>
						<!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
						<div class="nav-collapse collapse">
						
						
							<ul class="nav">
								<li class="active">
									<a href="<%=request.getContextPath() %>/redirectUrl.jsp">Home</a>
									<ul class="dropdown-menu">
										
										<li>
											<a href="translator/login.html">进入UI模板</a>
										</li>
										<li>
											<a href="article!addArticleUI.action">发表文章</a>
										</li>
										<li>
											<a href="http://www.xtiger.pw/forum.php">进入论坛</a>
										</li>
									</ul>
								</li>
								<li class="dropdown" id="it">
									<a href="#about" class="dropdown-toggle" data-toggle="dropdown">About
									<b class="caret"></b>
									</a>
									<ul class="dropdown-menu" id="nav">
										<li>
											<a href="<%=request.getContextPath() %>/login-new.jsp">进入登录页面</a>
										</li>
										<li>
											<a href="translator/login.html">进入UI模板</a>
										</li>
										<li>
											<a href="article!addArticleUI.action">发表文章</a>
										</li>
										<li>
											<a href="http://www.xtiger.pw/forum.php">进入论坛</a>
										</li>
										<!-- 
										<li>
											<a href="http://23.89.188.21/forum.php">进入论坛</a>
										</li>
										 -->
										<li>
											<a href="https://cffers.com/mail/">进入邮箱</a>
										</li>
										<li>
											<a href="#">Action</a>
										</li>
										<li>
											<a href="#">Another action</a>
										</li>
										<li>
											<a href="#">Something else here</a>
										</li>
										<li class="divider"></li>
										<li class="nav-header">
											Nav header
										</li>
										<li>
											<a href="#">Separated link</a>
										</li>
										<li>
											<a href="#">One more separated link</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="#contact">Contact</a>
								</li>
								<!-- Read about Bootstrap dropdowns at http://twbs.github.com/bootstrap/javascript.html#dropdowns -->
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown
										<b class="caret"></b>
									</a>
									<ul class="dropdown-menu">
										<li>
											<a href="login!adminLoginUI.action">进入后台管理系统</a>
										</li>
										<li>
											<a href="<%=request.getContextPath() %>/login-new.jsp">进入登录页面</a>
										</li>
										<li>
											<a href="article!addArticleUI.action">发表文章</a>
										</li>
										<li>
											<a href="http://www.xtiger.pw/forum.php">进入论坛</a>
										</li>
										<!-- 
										<li>
											<a href="http://23.89.188.21/forum.php">进入论坛</a>
										</li>
										 -->
										<li>
											<a href="https://cffers.com/mail/">进入邮箱</a>
										</li>
										<li>
											<a href="forward!showForwardPage.action?page=upload">上传图片</a>
										</li>
										<li>
											<a href="<%=request.getContextPath() %>/eb/eb_index.jsp">我的网上商城</a>
										</li>
										<li>
											<a href="#">Another action</a>
										</li>
										<li>
											<a href="#">Something else here</a>
										</li>
										<li class="divider"></li>
										<li class="nav-header">
											Nav header
										</li>
										<li>
											<a href="#">Separated link</a>
										</li>
										<li>
											<a href="#">One more separated link</a>
										</li>
									</ul>
								</li>
							</ul>
							<div <c:if test="${user!=null&& user!=''}">style="display: none;"</c:if>>
							<input id="email" class="form-control" type="text" placeholder="Email" style="margin-bottom: -10px;">
							<input id="password" class="form-control" type="password" placeholder="Password" style="margin-bottom: -10px;">
							<button id="sub" class="btn btn-success" type="submit" style="margin-top: 12px;" onclick="login();">Sign in</button>
							<button class="btn btn-success" type="submit" style="margin-top: 12px;" onclick="register();">Register in</button>
							</div>
							
							
							
							<div <c:if test="${user==null||user==''}">style="display: none;"</c:if> align="right">
								
								<p class="navbar-text pull-right">
				           		   <ul class="nav" style="float: right;">
					           		   <li class="dropdown">
					           		   <a href="article!showAllArticleForPageTestUser.action?username=<%=session.getAttribute("user") %>" class="dropdown-toggle"  data-toggle="dropdown">
					           		   Welcome:<%= (session.getAttribute("user")==null|| session.getAttribute("user")=="")?"请先登录":session.getAttribute("user") %>
					           		   <b class="caret"></b>
					           		   </a>
						           		     <ul class="dropdown-menu">
												<li>
													<a href="user!showUserBasicInfo.action?username=<%= session.getAttribute("userID")%>">我的基本信息</a>
												</li>
												<li>
													<a href="<%=request.getContextPath() %>/login!logout.action">退出</a>
												</li>
											</ul>
					           		   </li>
				           		   </ul>
				           		   <!--  
				           			<span <c:if test="${username==null||username==''}">style="display: none;"</c:if>> <a href="<%=request.getContextPath() %>/login!logout.action">Logout</a></span>
					           		-->	
				           	   </p>
				           	   
				           	   
				           	  
				           	  
				           	   
				           	   
				           	   
							</div>
						</div>
						<!--/.nav-collapse -->
					</div>
					<!-- /.navbar-inner -->
				</div>
				<!-- /.navbar -->

			</div>
			<!-- /.container -->
		</div>
		<!-- /.navbar-wrapper -->



		<!-- Carousel
    ================================================== -->
		<div id="myCarousel" class="carousel slide">
			<div class="carousel-inner">
				<div class="item active">
				<img src="images/examples/slide-01.jpg" alt=""></img>
					<div class="container">
						<div class="carousel-caption">
							<h1>
								Example headline.
							</h1>
							<p class="lead">
								Cras justo odio, dapibus ac facilisis in, egestas eget quam.
								Donec id elit non mi porta gravida at eget metus. Nullam id
								dolor id nibh ultricies vehicula ut id elit.
							</p>
							<a class="btn btn-large btn-primary" href="#">Sign up today</a>
						</div>
					</div>
				</div>
				<div class="item">
				<img src="images/examples/slide-02.jpg" alt=""></img>
					<div class="container">
						<div class="carousel-caption">
							<h1>
								Another example headline.
							</h1>
							<p class="lead">
								Cras justo odio, dapibus ac facilisis in, egestas eget quam.
								Donec id elit non mi porta gravida at eget metus. Nullam id
								dolor id nibh ultricies vehicula ut id elit.
							</p>
							<a class="btn btn-large btn-primary" href="#">Learn more</a>
						</div>
					</div>
				</div>
				<div class="item">
				<img src="images/examples/slide-03.jpg" alt=""></img>
					<div class="container">
						<div class="carousel-caption">
							<h1>
								One more for good measure.
							</h1>
							<p class="lead">
								Cras justo odio, dapibus ac facilisis in, egestas eget quam.
								Donec id elit non mi porta gravida at eget metus. Nullam id
								dolor id nibh ultricies vehicula ut id elit.
							</p>
							<a class="btn btn-large btn-primary" href="#">Browse gallery</a>
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
			<a class="right carousel-control" href="#myCarousel"
				data-slide="next">&rsaquo;</a>
		</div>
		<!-- /.carousel -->



		<!-- Marketing messaging and featurettes
    ================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->

		<div class="container marketing">

			<!-- Three columns of text below the carousel -->
			<div class="row">
			<c:forEach items="${pager.list}" varStatus="articles" var="article">
				<div class="span4">
					<h2>
						<a href="article!lookArticle.action?id=${article.id}">${article.title}</a>
					</h2>
					<p>
						<span class="link_postdate">
						作者:<a  href="article!showAllArticleForPageTestUser.action?username=${article.authorName}">${article.authorName}</a>
						</span>&nbsp;&nbsp;
						作者IP:<span class="link_postdate">${article.authorIP}</span>&nbsp;&nbsp;
						发表时间:<span class="link_postdate">${article.recordTime}</span>&nbsp;&nbsp;
						<span class="link_view" title="阅读次数">${article.dotNumber}人阅读</span>&nbsp;&nbsp;
						<span class="link_comments" title="评论次数">
						<a onclick="_gaq.push(['_trackEvent','function', 'onclick', 'blog_articles_pinglun'])" href="#comments">评论</a>
						(${article.revertNumber})
						</span>
						<br>
						<c:if test="${fn:length(article.content)>100 }">${fn:substring(article.content,3,100)} ... </c:if>
 						<c:if test="${fn:length(article.content)<=100 }">${fn:replace(article.content, "<p>","")}</c:if>
					</p>
					<p>
						<a class="btn" href="article!lookArticle.action?id=${article.id}">View details &raquo;</a>
					</p>
				</div>
			</c:forEach>
				</div>
				
			<div class="pagination" align="center">
				<span style="border-style: solid;border-width: 1px 1px 1px 0;float: left;line-height: 20px;padding: 4px 12px;"> ${pager.total}条数据  共${pager.totalPage}页</span>
					<ul class="pager">
					<c:if test="${pager.pageIndex!=1}">
					<li><a href="article!showAllArticleForPageTest.action?pageIndex=1">首页</a></li>
					<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex-1}">Prev</a></li>
					</c:if>
					<c:if test="${pager.pageIndex>=6}">
					<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex-1}">...</a></li>
					</c:if>
					<c:if test="${pager.pageIndex<=pager.totalPage }">
					<c:choose>
	      			 <c:when test="${pager.pageIndex%5==1}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex}">${pager.pageIndex}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==2}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex-1}">${pager.pageIndex-1}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==3}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex-2}">${pager.pageIndex-2}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==4}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex-3}">${pager.pageIndex-3}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==0}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex-4}">${pager.pageIndex-4}</a></li>
	     			  </c:when>
	      			 <c:otherwise>
		     		 </c:otherwise>
					</c:choose>
					</c:if>
					<c:if test="${pager.pageIndex<=pager.totalPage }">
					<c:choose>
					<c:when test="${pager.pageIndex%5==1 &&pager.pageIndex+1<=pager.totalPage}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+1}">${pager.pageIndex+1}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==2}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex}">${pager.pageIndex}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==3}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex-1}">${pager.pageIndex-1}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==4}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex-2}">${pager.pageIndex-2}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==0}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex-3}">${pager.pageIndex-3}</a></li>
	     			  </c:when>
	      			 <c:otherwise>
		     		 </c:otherwise>
					</c:choose>
					</c:if>
					<c:if test="${pager.pageIndex<=pager.totalPage }">
					<c:choose>
					<c:when test="${pager.pageIndex%5==1 &&pager.pageIndex+2<=pager.totalPage}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+2}">${pager.pageIndex+2}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==2 &&pager.pageIndex+1<=pager.totalPage}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+1}">${pager.pageIndex+1}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==3}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex}">${pager.pageIndex}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==4}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex-1}">${pager.pageIndex-1}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==0}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex-2}">${pager.pageIndex-2}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex+2<=pager.totalPage}">
	     			 <li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+2}">${pager.pageIndex+2}</a></li>
	     			  </c:when>
	      			 <c:otherwise>
					 </c:otherwise>
					</c:choose>
					</c:if>
					<c:if test="${pager.pageIndex<=pager.totalPage }" >
					<c:choose>
					<c:when test="${pager.pageIndex%5==1 &&pager.pageIndex+3<=pager.totalPage}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+3}">${pager.pageIndex+3}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==2 &&pager.pageIndex+2<=pager.totalPage}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+2}">${pager.pageIndex+2}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==3 &&pager.pageIndex+1<=pager.totalPage}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+1}">${pager.pageIndex+1}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==4}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex}">${pager.pageIndex}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==0}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex-1}">${pager.pageIndex-1}</a></li>
	     			  </c:when>
	      			 <c:otherwise >
					 </c:otherwise>
					</c:choose>
					</c:if>
					<c:if test="${pager.pageIndex<=pager.totalPage}">
					<c:choose>
					<c:when test="${pager.pageIndex%5==1 &&pager.pageIndex+4<=pager.totalPage}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+4}">${pager.pageIndex+4}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==2 &&pager.pageIndex+3<=pager.totalPage}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+3}">${pager.pageIndex+3}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==3 &&pager.pageIndex+2<=pager.totalPage}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+2}">${pager.pageIndex+2}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==4 &&pager.pageIndex+1<=pager.totalPage}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+1}">${pager.pageIndex+1}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==0}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex}">${pager.pageIndex}</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex+4<=pager.totalPage}">
	     			 <li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+4}">${pager.pageIndex+4}</a></li>
	     			  </c:when>
	      			 <c:otherwise>
					  </c:otherwise>
					</c:choose>
					</c:if>
					<c:if test="${pager.totalPage>=6}">
					<c:choose>
					<c:when test="${pager.pageIndex%5==1 &&pager.pageIndex+4<pager.totalPage}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+1}">...</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==2 &&pager.pageIndex+3<pager.totalPage}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+1}">...</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==3 &&pager.pageIndex+2<pager.totalPage}">
	              		<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+1}">...</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==4 &&pager.pageIndex+1<pager.totalPage}">
	              	<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+1}">...</a></li>
	     			  </c:when>
	     			  <c:when test="${pager.pageIndex%5==0 &&pager.pageIndex<pager.totalPage}">
	              	<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+1}">...</a></li>
	     			  </c:when>
	      			 <c:otherwise>
					</c:otherwise>
					</c:choose>
					</c:if>
					<c:if test="${pager.pageIndex<pager.totalPage }">
					<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.pageIndex+1}">Next</a></li>
					<li><a href="article!showAllArticleForPageTest.action?pageIndex=${pager.totalPage}">最后一页</a></li>
					</c:if>
					</ul>
			</div>
			<!-- /.row -->
            
			<!-- START THE FEATURETTES -->
			<!--  

			<hr class="featurette-divider">

			<div class="featurette">
				<img class="featurette-image pull-right"
					src="images/browser-icon-chrome.png">
				<h2 class="featurette-heading">
					First featurette headling.
					<span class="muted">It'll blow your mind.</span>
				</h2>
				<p class="lead">
					Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id
					ligula porta felis euismod semper. Praesent commodo cursus magna,
					vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus
					commodo.
				</p>
			</div>

			<hr class="featurette-divider">
			<div class="featurette">
				<img class="featurette-image pull-left"
					src="images/browser-icon-firefox.png">
				<h2 class="featurette-heading">
					Oh yeah, it's that good.
					<span class="muted">See for yourself.</span>
				</h2>
				<p class="lead">
					Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id
					ligula porta felis euismod semper. Praesent commodo cursus magna,
					vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus
					commodo.
				</p>
			</div>

			<hr class="featurette-divider">

			<div class="featurette">
				<img class="featurette-image pull-right"
					src="images/browser-icon-safari.png">
				<h2 class="featurette-heading">
					And lastly, this one.
					<span class="muted">Checkmate.</span>
				</h2>
				<p class="lead">
					Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id
					ligula porta felis euismod semper. Praesent commodo cursus magna,
					vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus
					commodo.
				</p>
			</div>

			<hr class="featurette-divider">
			
			-->
			
			<!-- /END THE FEATURETTES -->


			<!-- FOOTER -->
			<footer>
			<p class="pull-right">
				<a href="#">Back to top</a>
			</p>
			<p align="center">
				&copy; 2013 Company, Inc. &middot;
				<a href="#">Privacy</a> &middot;
				<a href="#">Terms</a>
			</p>
			</footer>

		</div>
		<!-- /.container -->



		<!-- Le javascript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		
		
		
		<script src="js/jquery.js"></script>
		<script src="js/carousel//bootstrap-transition.js"></script>
		<script src="js/carousel//bootstrap-alert.js"></script>
		<script src="js/carousel/bootstrap-modal.js"></script>
		<script src="js/carousel/bootstrap-dropdown.js"></script>
		<script src="js/carousel/bootstrap-scrollspy.js"></script>
		<script src="js/carousel/bootstrap-tab.js"></script>
		<script src="js/carousel/bootstrap-tooltip.js"></script>
		<script src="js/carousel/bootstrap-popover.js"></script>
		<script src="js/carousel/bootstrap-button.js"></script>
		<script src="js/carousel/bootstrap-collapse.js"></script>
		<script src="js/carousel/bootstrap-carousel.js"></script>
		<script src="js/carousel/bootstrap-typeahead.js"></script>
		<script type="text/javascript">
      !function ($) {
        $(function(){
          // carousel demo
          $('#myCarousel').carousel()
        })
      }(window.jQuery)
    </script>
	</body>
</html>
