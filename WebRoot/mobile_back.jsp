<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Carousel Template &middot; Bootstrap</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css"
			type="text/css"></link>
		<link rel="stylesheet" href="bootstrap/css/bootstrap-responsive.css"
			type="text/css"></link>
		<!-- Le styles -->
  <meta name="viewport" content="width=device-width, initial-scale=1"> 
<link rel="stylesheet" href="js/jQueryMobile/jquery.mobile-1.4.2.min.css" type="text/css"></link>
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
		 <link href="css/carousel.css" rel="stylesheet">
	</head>
	<body>



		<!-- NAVBAR
    ================================================== -->
		<div data-role="page">
			<!-- Wrap the .navbar in .container to center it within the absolutely positioned parent. -->
			<div data-role="page">

				<div data-role="page">
					<div data-role="page">
						<!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
						<button type="button" class="btn btn-navbar"
							data-toggle="collapse" data-target=".nav-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="brand" href="#">Project name</a>
						<!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
						<div data-role="page">
							<ul class="nav">
								<li class="active">
									<a href="<%=request.getContextPath() %>/redirectUrl.jsp">Home</a>
								</li>
								<li>
									<a href="#about">About</a>
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
							</ul>
						
							
							<div <c:if test="${user!=null&& user!=''}">style="display: none;"</c:if> data-role="page">
							<form class="navbar-form navbar-right" role="form">
							<div class="form-group" data-role="page">
							<input class="form-control" type="text" placeholder="Email">
							</div>
							<div class="form-group" data-role="page">
							<input class="form-control" type="password" placeholder="Password">
							</div>
							<button class="btn btn-success" type="submit">Sign in</button>
							</form>
							</div>
							
							<div <c:if test="${user==null||user==''}">style="display: none;"</c:if> data-role="page">
								<p class="navbar-text pull-right">
				           		   Logged in as <a href="#" class="navbar-link">Username:<%= (session.getAttribute("user")==null|| session.getAttribute("user")=="")?"请先登录":session.getAttribute("user") %></a>
				           			<span <c:if test="${username==null||username==''}">style="display: none;"</c:if>> <a href="<%=request.getContextPath() %>/login!logout.action">Logout</a></span>
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
		<div id="myCarousel" class="carousel slide" data-role="page"> 
			<div class="carousel-inner" data-role="page">
				<div class="item active" data-role="page">
				<img src="images/examples/slide-01.jpg" alt=""></img>
					<div class="container" data-role="page"> 
						<div class="carousel-caption" data-role="page">
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
				<div class="item" data-role="page">
				<img src="images/examples/slide-02.jpg" alt=""></img>
					<div class="container" data-role="page">
						<div class="carousel-caption" data-role="page">
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
				<div class="item" data-role="page">
				<img src="images/examples/slide-03.jpg" alt=""></img>
					<div class="container" data-role="page">
						<div class="carousel-caption" data-role="page">
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

		<div class="container marketing" data-role="page">

			<!-- Three columns of text below the carousel -->
			<div class="row" data-role="page">
			<c:forEach items="${pager.list}" varStatus="articles" var="article" > 
				<div class="span4" data-role="page">
					<h2>
						<a href="article!lookArticle.action?id=${article.id}">${article.title}</a>
					</h2>
					<p>
						<span class="link_postdate">${article.recordTime}</span>&nbsp;&nbsp;
						<span class="link_view" title="阅读次数">${article.dotNumber}人阅读</span>&nbsp;&nbsp;
						<span class="link_comments" title="评论次数">
						<a onclick="_gaq.push(['_trackEvent','function', 'onclick', 'blog_articles_pinglun'])" href="#comments">评论</a>
						(${article.revertNumber})
						</span>
						<br>
						<c:if test="${fn:length(article.content)>100 }">${ fn:substring( article.content,0,100)} ...</c:if>
 						<c:if test="${fn:length(article.content)<=100 }">${  article.content }</c:if>
					</p>
					<p>
						<a class="btn" href="article!lookArticle.action?id=${article.id}">View details &raquo;</a>
					</p>
				</div>
			</c:forEach>
				</div>
			<div class="pagination" align="center" data-role="page">
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

			<hr class="featurette-divider">

			<div class="featurette" data-role="page">
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

			<hr class="featurette-divider" data-role="page">
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

			<div class="featurette" data-role="page">
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

			<!-- /END THE FEATURETTES -->


			<!-- FOOTER -->
			<footer>
			<p class="pull-right">
				<a href="#">Back to top</a>
			</p>
			<p>
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
		<script src="carousel/js/bootstrap-dropdown.js"></script>
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
