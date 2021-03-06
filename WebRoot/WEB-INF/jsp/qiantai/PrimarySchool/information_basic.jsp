<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
	<head>
    <style>
    
.required {
    color: #ff4b33;
    font-weight: bold;
}
    </style>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>用户的基本信息</title>

		<meta name="description" content="Common form elements and layouts" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/jquery-ui.custom.min.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/chosen.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/datepicker.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/bootstrap-timepicker.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/daterangepicker.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/bootstrap-datetimepicker.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/colorpicker.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/ace-fonts.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/ace.min.css" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->
		
		
		<!-- Fav and touch icons 修改网站的小图标 LOGO-->
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
		

		<!-- ace settings handler -->
		<script src="<%=request.getContextPath()%>/translator/assets/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="<%=request.getContextPath()%>/translator/assets/js/html5shiv.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/respond.min.js"></script>
		<![endif]-->

		<script>
		function  add(){

		window.open ('information_language_add.html');
		//window.location.href="information_language_add.html";
		}
		</script>
	</head>

	<body class="no-skin">
		<!-- #section:basics/navbar.layout -->
		<div id="navbar" class="navbar navbar-default">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<!-- #section:basics/sidebar.mobile.toggle -->
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<!-- /section:basics/sidebar.mobile.toggle -->
				<div class="navbar-header pull-left">
					<!-- #section:basics/navbar.layout.brand -->
					<a href="#" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							Ace Admin
						</small>
					</a>

					<!-- /section:basics/navbar.layout.brand -->

					<!-- #section:basics/navbar.toggle -->

					<!-- /section:basics/navbar.toggle -->
				</div>

				<!-- #section:basics/navbar.dropdown -->
				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class="grey">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-tasks"></i>
								<span class="badge badge-grey">4</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-check"></i>
									4 Tasks to complete
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Software Update</span>
											<span class="pull-right">65%</span>
										</div>

										<div class="progress progress-mini">
											<div style="width:65%" class="progress-bar"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Hardware Upgrade</span>
											<span class="pull-right">35%</span>
										</div>

										<div class="progress progress-mini">
											<div style="width:35%" class="progress-bar progress-bar-danger"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Unit Testing</span>
											<span class="pull-right">15%</span>
										</div>

										<div class="progress progress-mini">
											<div style="width:15%" class="progress-bar progress-bar-warning"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Bug Fixes</span>
											<span class="pull-right">90%</span>
										</div>

										<div class="progress progress-mini progress-striped active">
											<div style="width:90%" class="progress-bar progress-bar-success"></div>
										</div>
									</a>
								</li>

								<li class="dropdown-footer">
									<a href="#">
										See tasks with details
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="purple">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-bell icon-animated-bell"></i>
								<span class="badge badge-important">8</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-exclamation-triangle"></i>
									8 Notifications
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
												New Comments
											</span>
											<span class="pull-right badge badge-info">+12</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<i class="btn btn-xs btn-primary fa fa-user"></i>
										Bob just signed up as an editor ...
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
												New Orders
											</span>
											<span class="pull-right badge badge-success">+8</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
												Followers
											</span>
											<span class="pull-right badge badge-info">+11</span>
										</div>
									</a>
								</li>

								<li class="dropdown-footer">
									<a href="#">
										See all notifications
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="green">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
								<span class="badge badge-success">5</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-envelope-o"></i>
									5 Messages
								</li>

								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar">
										<li>
											<a href="#">
												<img src="<%=request.getContextPath()%>/translator/assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Alex:</span>
														Ciao sociis natoque penatibus et auctor ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>a moment ago</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#">
												<img src="<%=request.getContextPath()%>/translator/assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Susan:</span>
														Vestibulum id ligula porta felis euismod ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>20 minutes ago</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#">
												<img src="<%=request.getContextPath()%>/translator/assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Bob:</span>
														Nullam quis risus eget urna mollis ornare ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>3:15 pm</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#">
												<img src="<%=request.getContextPath()%>/translator/assets/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Kate:</span>
														Ciao sociis natoque eget urna mollis ornare ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>1:33 pm</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#">
												<img src="<%=request.getContextPath()%>/translator/assets/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Fred:</span>
														Vestibulum id penatibus et auctor  ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>10:09 am</span>
													</span>
												</span>
											</a>
										</li>
									</ul>
								</li>

								<li class="dropdown-footer">
									<a href="inbox.html">
										See all messages
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<!-- #section:basics/navbar.user_menu -->
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>Welcome(您好),</small>
									${user.username }
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="<%=request.getContextPath() %>/redirectUrl.jsp">
										<i class="ace-icon fa fa-exchange"></i>
										首页-->走你
									</a>
								</li>

								<li>
									<a href="user!showUserBasicInfo?username=<%= session.getAttribute("userID")%> " >
										<i class="ace-icon fa fa-user"></i>
										个人信息
									</a>
								</li>

								<li>

								<a href="#modal-table" role="button"  data-toggle="modal">
								<i class="ace-icon fa fa-key"></i>
								修改密码</a>


								<!-- 
									<a href="information/information_basic.html">
										<i class="ace-icon fa fa-key"></i>
										修改密码
									</a>
								</li>
								-->


								<li class="divider"></li>

								<li>
									<a href="<%=request.getContextPath() %>/login!logout.action">
										<i class="ace-icon fa fa-power-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>

						<!-- /section:basics/navbar.user_menu -->
					</ul>
				</div>

				<!-- /section:basics/navbar.dropdown -->
			</div><!-- /.navbar-container -->
		</div>

		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<!-- #section:basics/sidebar -->
			<div id="sidebar" class="sidebar                  responsive">
				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
				</script>

				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success">
							<i class="ace-icon fa fa-signal"></i>
						</button>

						<button class="btn btn-info">
							<i class="ace-icon fa fa-pencil"></i>
						</button>

						<!-- #section:basics/sidebar.layout.shortcuts -->
						<button class="btn btn-warning">
							<i class="ace-icon fa fa-users"></i>
						</button>

						<button class="btn btn-danger">
							<i class="ace-icon fa fa-cogs"></i>
						</button>

						<!-- /section:basics/sidebar.layout.shortcuts -->
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div>
				</div><!-- /.sidebar-shortcuts -->

					<ul class="nav nav-list">
					<li class="active">
						<a href="<%=request.getContextPath() %>/redirectUrl.jsp">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text"> 我的首页 </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text">我怀念的 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
						<li class="">
								<a href="../tasks/task_pending_list.html">
									<i class="menu-icon fa fa-caret-right"></i>
									六年1班(2003-07-01)
								</a>

								<b class="arrow"></b>
							</li>
							<li class="">
								<a href="../tasks/task_pending_list.html">
									<i class="menu-icon fa fa-caret-right"></i>
									初三1班(2003-09-01)
								</a>

								<b class="arrow"></b>
							</li>



							<li class="">
								<a href="../tasks/task_my_processing_list.html">
									<i class="menu-icon fa fa-caret-right"></i>
									高三4班(2006-09-01)
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="../tasks/task_pending_list.html">
									<i class="menu-icon fa fa-caret-right"></i>
									2009-09-06班(2009-09-01)
								</a>

								<b class="arrow"></b>
							</li>
							
							<li class="">
								<a href="../tasks/task_pending_list.html">
									<i class="menu-icon fa fa-caret-right"></i>
									幸福的乐园--我的家(MyFamily)
								</a>

								<b class="arrow"></b>
							</li>

							

						</ul>
					</li>


					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-users"></i>
							<span class="menu-text"> 我的关系 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>
						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="../users/users_concerned_list.html">
									<i class="menu-icon fa fa-caret-right"></i>
									关注用户
								</a>
								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="../users/users_employer_list.html">
									<i class="menu-icon fa fa-caret-right"></i>
									雇主
								</a>
								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="../users/users_invite_list.html">
									<i class="menu-icon fa fa-caret-right"></i>
									邀请程序员(CODER)
								</a>
								<b class="arrow"></b>
							</li>

						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-book"></i>
							<span class="menu-text"> 开源项目管理 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>
						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="../tasks/task_pending_list.html">
									<i class="menu-icon fa fa-caret-right"></i>
									js库
								</a>
								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="../tasks/task_processing_list.html">
									<i class="menu-icon fa fa-caret-right"></i>
									java库
								</a>
								<b class="arrow"></b>
							</li>

						</ul>
					</li>



					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list-alt"></i>
							<span class="menu-text"> 我的账户</span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="user!showUserBasicInfo?username=<%= session.getAttribute("userID")%> ">
									<i class="menu-icon fa fa-caret-right"></i>
									基本信息
								</a>

								<b class="arrow"></b>
							</li>



							<li class="">
								<a href="../tasks/task_processing_list.html">
									<i class="menu-icon fa fa-caret-right"></i>
									资金账户
								</a>

								<b class="arrow"></b>
							</li>
							
							<li class="">
								<a href="user!showUserBeautifulGallery?username=<%= session.getAttribute("userID")%> ">
									<i class="menu-icon fa fa-caret-right"></i>
									很炫很酷的(图片显示)--LOOK
									
								</a>

								<b class="arrow"></b>
							</li>
							
							<li class="">
								<a href="<%=request.getContextPath() %>/wwwroot/index.html">
									<i class="menu-icon fa fa-caret-right"></i>
									这个不错看看(导航下拉列表)--LOOK
								</a>

								<b class="arrow"></b>
							</li>
							

							<!-- 
							<li class="">
								<a href="tasks/task_unpay_list.html">
									<i class="menu-icon fa fa-caret-right"></i>
									付款信息
								</a>

								<b class="arrow"></b>
							</li>

							-->

						</ul>
					</li>
				</ul><!-- /.nav-list -->

				<!-- #section:basics/sidebar.layout.minimize -->
				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>

				<!-- /section:basics/sidebar.layout.minimize -->
				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
				</script>
			</div>

			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<!-- #section:basics/content.breadcrumbs -->
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
					</script>

					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="#">首页</a>
						</li>
						<li class="active">个人信息</li>
					</ul><!-- /.breadcrumb -->

					<!-- #section:basics/content.searchbox -->
					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon">
								<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
								<i class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div><!-- /.nav-search -->

					<!-- /section:basics/content.searchbox -->
				</div>
                

				<!-- /section:basics/content.breadcrumbs -->

				
			  <div class="page-content"><!-- 原 page-content -->
                
					<!-- #section:settings.box -->
					<div class="ace-settings-container" id="ace-settings-container">
						<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
							<i class="ace-icon fa fa-cog bigger-150"></i>
						</div>

						<div class="ace-settings-box clearfix" id="ace-settings-box">
							<div class="pull-left width-50">
								<!-- #section:settings.skins -->
								<div class="ace-settings-item">
									<div class="pull-left">
										<select id="skin-colorpicker" class="hide">
											<option data-skin="no-skin" value="#438EB9">#438EB9</option>
											<option data-skin="skin-1" value="#222A2D">#222A2D</option>
											<option data-skin="skin-2" value="#C6487E">#C6487E</option>
											<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
										</select>
									</div>
									<span>&nbsp; Choose Skin</span>
								</div>

								<!-- /section:settings.skins -->

								<!-- #section:settings.navbar -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
									<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
								</div>

								<!-- /section:settings.navbar -->

								<!-- #section:settings.sidebar -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
									<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
								</div>

								<!-- /section:settings.sidebar -->

								<!-- #section:settings.breadcrumbs -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
									<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
								</div>

								<!-- /section:settings.breadcrumbs -->

								<!-- #section:settings.rtl -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
									<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
								</div>

								<!-- /section:settings.rtl -->

								<!-- #section:settings.container -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
									<label class="lbl" for="ace-settings-add-container">
										Inside
										<b>.container</b>
									</label>
								</div>

								<!-- /section:settings.container -->
							</div><!-- /.pull-left -->

							<div class="pull-left width-50">
								<!-- #section:basics/sidebar.options -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" />
									<label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" />
									<label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" />
									<label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
								</div>

								<!-- /section:basics/sidebar.options -->
							</div><!-- /.pull-left -->
						</div><!-- /.ace-settings-box -->
					</div><!-- /.ace-settings-container -->

					<!-- /section:settings.box -->
					
                    <div class="page-header">
						<h1>
							个人信息
							<small>
								<i class="ace-icon fa fa-angle-double-right"></i>
								在此处维护用户(程序员)相关个人信息。
							</small>
						</h1>
					</div>
                    
					<div class="row">
						<div class="col-xs-12">
                        
                        <div class="tabbable">
					<ul id="myTab" class="nav nav-tabs">
							<li class="active">
									<a href="user!showUserBasicInfo?username=<%= session.getAttribute("userID")%> " >
									<i class="green ace-icon fa  fa-desktop bigger-120"></i>
									基本信息
									</a>
									</li>
                                    
                                    <!--  
									<li>
									<a href="information/information_language.html" onClick="window.location.href='information_language.html';">
									<i class="green ace-icon fa  fa-globe bigger-120"></i>
                                    语&nbsp;言&nbsp;对
									</a>
									</li>
									
									
                                    
                                    <li>
									<a href="information/information_resume.html" onClick="window.location.href='c.html';">
									<i class="green ace-icon fa  glyphicon-euro bigger-120"></i>
                                    付款信息
									</a>
									</li>
									
									-->
                                    
                                    <li>
									<a href="user!showUserResume?username=<%= session.getAttribute("userID")%> ">
									<i class="green ace-icon fa   fa-info-circle bigger-120"></i>
                                    简&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历
									</a>
									</li>
                                    
                                    <li>
									<a href="user!showUserSelfsetup?username=<%= session.getAttribute("userID")%> ">
									<i class="green ace-icon fa    fa-bolt bigger-120"></i>
                                    个性设置
									</a>
									</li>


									<li>
									<a href="user!showUserCoderInfo?username=<%= session.getAttribute("userID")%> ">
									<i class="green ace-icon fa    fa-bolt bigger-120"></i>
                                    程序员预览
									</a>
									</li>
							</ul>
                            <div class="tab-content">
							<div class="tab-pane in active" id="home">
                            <!-- /.page-header -->
							<!-- PAGE CONTENT BEGINS -->
							<form class="form-horizontal" role="form">
								<!-- #section:elements.form -->
                                <div class="form-group">
                                <div class="col-xs-12 col-sm-2 center">
									  <div>
											<!-- #section:pages/profile.picture -->
											<span class="profile-picture">
												<img src="<%=request.getContextPath()%>/translator/assets/avatars/profile-pic.jpg" alt="Alex's Avatar" class="editable img-responsive editable-click editable-empty" id="avatar"></img>
											</span>

										</div>


									</div>
                                <div class="row col-sm-5">
								<div class="form-group">
						  <div class="col-sm-3 control-label no-padding-right">
															<labe for="form-field-1"> 用户名<span class="required">*</span> 
						  </labe></div>
						  <div class="col-sm-3  control-label"><label class="col-sm-3 no-padding-left" for="form-field-1">${user.username }</label>
															</div>
														</div>
						                                <div class="form-group">
						  <div class="col-sm-3 control-label no-padding-right">
															<labe for="form-field-1"> 电子邮箱<span class="required">*</span> 
						  </labe></div>
								  <div class="col-sm-3 control-label no-padding-right"><label class="col-sm-1 no-padding-left" for="form-field-1">${user.email }</label>
									</div>
								</div>
                                </div>
                                </div>



								<h4 class="pink" align="right">
								
								<a href="#modal-table" role="button" class="green" data-toggle="modal">
								<i class="ace-icon fa fa-key"></i>
								修改密码</a>
								</h4>
                                
                                
                                <div class="hr hr-24"></div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 姓名<span class="required">*</span> </label>

									<div class="col-sm-9">
										<input type="text" id="form-field-1" placeholder="姓" class="col-xs-2" />
                                        <div class="col-xs-1 control-label"></div>
                                        <input type="text" id="form-field-1" placeholder="名" class="col-xs-2" />
                                        
									</div>
								</div>
                                
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 性别</label>

									<div class="col-sm-9">
									  <label class="col-xs-1 no-padding-left"><input type="radio" class="ace" name="form-field-radio" checked><span class="lbl"> 男</span></label>
                                      <label class="col-xs-1  no-padding-left"><input type="radio" class="ace" name="form-field-radio"><span class="lbl"> 女</span></label>
                                        
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 生日</label>

								  <div class="col-sm-9">
										<div class="input-group col-xs-10 col-sm-5">										<input type="text" data-date-format="yyyy-mm-dd" id="id-date-picker-1" class="form-control date-picker"><span class="input-group-addon"><i class="fa fa-calendar bigger-110"></i></span>
										</div>
									</div>
								</div>
                                
                                <div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 展示页显示名 </label>

									<div class="col-sm-9">
										<input type="text" id="form-field-1" placeholder="展示页显示名" class="col-xs-10 col-sm-5" />
									</div>
								</div>
                                
                                <div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 工作年限<span class="required">*</span> </label>

									<div class="col-sm-9">
									  <input type="text" id="form-field-1" placeholder="工作年限" class="col-xs-10 col-sm-5" />
									</div>
								</div>
								
								 <div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">擅长编程语言<span class="required">*</span> </label>

									<div class="col-sm-9">
                                    <div class="input-group col-xs-10 col-sm-5">
										<select class="chosen-select" id="form-field-select-3" data-placeholder="Choose a State...">
							                <option value="JAVA">JAVA</option>
							                <option value="SWIFT">SWIFT</option>
							                <option value="C">C</option>
							                 <option value="C++">C++</option>
							                <option value="PHP">PHP</option>
							                
							                 <option value="Python">Python</option>
							                <option value="SQL">SQL</option>
							                <option value="OBJECT_C">OBJECT_C</option>
							                 <option value="C#">C#</option>
							                <option value=".NET">.NET</option>
							            </select>
                                    </div>
                                    </div>
								</div>
								
								
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">擅长数据库<span class="required">*</span> </label>

									<div class="col-sm-9">
                                    <div class="input-group col-xs-10 col-sm-5">
										<select class="chosen-select" id="form-field-select-3" data-placeholder="Choose a State...">
							                <option value="ORACLE">ORACLE</option>
							                <option value="MYSQL">MYSQL</option>
							                <option value="SQL server">SQL server</option>
							                 <option value="DB2">DB2</option>
							                <option value="Sybase">Sybase</option>
							                
							               
							            </select>
                                    </div>
                                    </div>
								</div>
								
								
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">擅长服务器<span class="required">*</span> </label>

									<div class="col-sm-9">
                                    <div class="input-group col-xs-10 col-sm-5">
										<select class="chosen-select" id="form-field-select-3" data-placeholder="Choose a State...">
							                <option value="Tomcat">Tomcat</option>
							                <option value="WebLogic">WebLogic</option>
							                <option value="JBoss">JBoss</option>
							                 <option value="WebSphere">WebSphere</option>
							                <option value="Apache">Apache</option>
							                
							                 <option value="Nginx">Nginx</option>
							            </select>
                                    </div>
                                    </div>
								</div>
								
								
                                
                                <div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 母语<span class="required">*</span> </label>

									<div class="col-sm-9">
                                    <div class="input-group col-xs-10 col-sm-5">
										<select class="chosen-select" id="form-field-select-3" data-placeholder="Choose a State...">
							                <option value="AL">汉语</option>
							                <option value="AK">法语</option>
							                <option value="AZ">英语（英国）</option>
							                <option value="AZ">英语（美国）</option>
							            </select>
                                    </div>
                                    </div>
								</div>
                                
                                <div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 币种<span class="required">*</span> </label>

									<div class="col-sm-9">
                                    <div class="input-group col-xs-10 col-sm-5">
										<select class="chosen-select" id="form-field-select-3" data-placeholder="Choose a State...">
                           <option value="AUD">澳大利亚元</option><option value="BRL">巴西雷亚尔</option><option value="GBP">英镑</option><option value="CAD">加拿大元</option><option selected="selected" value="CNY">人民币</option><option value="DKK">丹麦克朗</option><option value="EUR">欧元</option><option value="HKD">港元</option><option value="HUF">匈牙利福林</option><option value="INR">印度卢比</option><option value="IDR">印尼盾</option><option value="JPY">日圆</option><option value="MXN">墨西哥比索</option><option value="NZD">新西兰元</option><option value="NOK">挪威克朗</option><option value="PLN">波兰兹罗提</option><option value="RUB">俄罗斯卢布</option><option value="SAR">沙特里亚尔</option><option value="SGD">新加坡元</option><option value="ZAR">南非兰特</option><option value="SEK">瑞典克朗</option><option value="CHF">瑞士法郎</option><option value="TWD">新台币</option><option value="THB">泰铢</option><option value="TRY">土耳其新里拉</option><option value="USD">美元</option><option value="KRW">韩圆</option><option value="VND">越南盾</option><option value="PHP">菲律宾比索</option><option value="RM">马币</option>
                </select>
									</div>
                                    </div>
						        </div>
                                
                                <div class="hr hr-24"></div>
                                
                                <div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 电话</label>

									<div class="col-sm-9">
										<div class="input-group col-xs-10 col-sm-5">
										<span class="input-group-addon">
										<i class="ace-icon fa fa-phone"></i>
										</span>

										<input type="text" id="form-field-mask-2" class="form-control" placeholder="+国家代码 区号电话-电话号码-分机">
										</div>
									</div>
								</div>
                                
                                <div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 手机</label>

									<div class="col-sm-9">
										<div class="input-group col-xs-10 col-sm-5">
										<span class="input-group-addon">
										<i class="ace-icon fa fa-phone"></i>
										</span>

										<input type="text" id="form-field-mask-2" class="form-control" placeholder="+国家代码 手机号码">
										</div>
									</div>
								</div>
                                
                                <div class="hr hr-24"></div>
                                
                                <div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 地址</label>

									<div class="col-sm-9">
										<textarea maxlength="200" id="form-field-9" class="col-xs-10 col-sm-5 limited"></textarea>
									</div>
								</div>
                                
                                <div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 城市<span class="required">*</span> </label>

									<div class="col-sm-9">
										<input type="text" id="form-field-1" placeholder="城市" class="col-xs-10 col-sm-5" />
									</div>
								</div>
                                
                                <div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 国家<span class="required">*</span> </label>

									<div class="col-sm-9">
                                    <div class="input-group col-xs-10 col-sm-5">
										<select class="chosen-select" id="form-field-select-3" data-placeholder="Choose a State...">
                           <option value="ZM_C">赞比亚</option><option value="ZR_C">扎伊尔</option><option value="ZW_C">津巴布韦</option><option value="ZA_C">南非</option><option value="YU_C">南斯拉夫</option><option value="YE_C">也门</option><option value="VN_C">越南</option><option value="UZ_C">乌兹别克斯坦</option><option value="UY_C">乌拉圭</option><option value="US_C">美国</option><option value="UK_C">英国</option><option value="AE_C">阿拉伯联合酋长国</option><option value="UA_C">乌克兰</option><option value="UG_C">乌干达</option><option value="TMM_C">土库曼斯坦</option><option value="TR_C">土耳其</option><option value="TN_C">突尼斯</option><option value="TT_C">特立尼达和多巴哥</option><option value="Tonga_C">汤加</option><option value="TG_C">多哥</option><option value="TH_C">泰国</option><option value="TZ_C">坦桑尼亚</option><option value="TJ_C">塔吉克斯坦</option><option value="TW_C">台湾(中国)</option><option value="SY_C">叙利亚</option><option value="CH_C">瑞士</option><option value="SE_C">瑞典</option><option value="SZ_C">斯威士兰</option><option value="SR_C">苏里南</option><option value="SD_C">苏丹</option><option value="VC_C">圣文森特</option><option value="LC_C">圣卢西亚</option><option value="LK_C">斯里兰卡</option><option value="ES_C">西班牙</option><option value="SO_C">索马里</option><option value="SB_C">所罗门群岛</option><option value="SI_C">斯洛文尼亚</option><option value="SK_C">斯洛伐克</option><option value="SG_C">新加坡</option><option value="SL_C">塞拉利昂</option><option value="Seychelles_C">塞舌尔</option><option value="SN_C">塞内加尔</option><option value="SA_C">沙特阿拉伯</option><option value="ST_C">圣多美和普林西比</option><option value="SM_C">圣马力诺</option><option value="Samoa-W_C">西萨摩亚</option><option value="Samoa-E_C">东萨摩亚(美)</option><option value="VC_C">圣文森特</option><option value="LC_C">圣卢西亚</option><option value="RU_C">俄罗斯</option><option value="RO_C">罗马尼亚</option><option value="Reunion_C">留尼旺</option><option value="QA_C">卡塔尔</option><option value="PR_C">波多黎各</option><option value="PT_C">葡萄牙</option><option value="PF_C">法属玻利尼西亚</option><option value="PL_C">波兰</option><option value="PH_C">菲律宾</option><option value="PE_C">秘鲁</option><option value="PY_C">巴拉圭</option><option value="PG_C">巴布亚新几内亚</option><option value="PA_C">巴拿马</option><option value="PK_C">巴基斯坦</option><option value="OM_C">阿曼</option><option value="NO_C">挪威</option><option value="KP_C">朝鲜</option><option value="NG_C">尼日利亚</option><option value="NE_C">尼日尔</option><option value="NI_C">尼加拉瓜</option><option value="NZ_C">新西兰</option><option value="NL_C">荷兰</option><option value="NL-Antilles_C">荷属安的列斯</option><option value="NP_C">尼泊尔</option><option value="NR_C">瑙鲁</option><option value="NA_C">纳米比亚</option><option value="MZ_C">莫桑比克</option><option value="MA_C">摩洛哥</option><option value="MS_C">蒙特塞拉特岛</option><option value="MN_C">蒙古</option><option value="MC_C">摩纳哥</option><option value="MD_C">摩尔多瓦</option><option value="MX_C">墨西哥</option><option value="MU_C">毛里求斯</option><option value="Martinique_C">马提尼克</option><option value="Mariana_C">马里亚那群岛</option><option value="MT_C">马耳他</option><option value="ML_C">马里</option><option value="MV_C">马尔代夫</option><option value="MY_C">马来西亚</option><option value="MW_C">马拉维</option><option value="MG_C">马达加斯加</option><option value="MO_C">澳门(中国)</option><option value="LU_C">卢森堡</option><option value="LT_C">立陶宛</option><option value="LI_C">列支敦士登</option><option value="LY_C">利比亚</option><option value="LR_C">利比里亚</option><option value="LS_C">莱索托</option><option value="LB_C">黎巴嫩</option><option value="LV_C">拉脱维亚</option><option value="LA_C">老挝</option><option value="KG_C">吉尔吉斯坦</option><option value="KW_C">科威特</option><option value="KR_C">韩国</option><option value="KE_C">肯尼亚</option><option value="KZ_C">哈萨克斯坦</option><option value="KH_C">柬埔寨</option><option value="JO_C">约旦</option><option value="Japan_C">日本</option><option value="JM_C">牙买加</option><option value="IvoryCoast_C">科特迪瓦</option><option value="IT_C">意大利</option><option value="IL_C">以色列</option><option value="IE_C">爱尔兰</option><option value="IQ_C">伊拉克</option><option value="IR_C">伊朗</option><option value="ID_C">印度尼西亚</option><option value="IN_C">印度</option><option value="IS_C">冰岛</option><option value="HU_C">匈牙利</option><option value="HK_C">香港(中国)</option><option value="HN_C">洪都拉斯</option><option value="HT_C">海地</option><option value="GY_C">圭亚那</option><option value="GN_C">几内亚</option><option value="GT_C">危地马拉</option><option value="GU_C">关岛</option><option value="GD_C">格林纳达</option><option value="GR_C">希腊</option><option value="GI_C">直布罗陀</option><option value="GH_C">加纳</option><option value="DE_C">德国</option><option value="GE_C">格鲁吉亚</option><option value="GM_C">冈比亚</option><option value="GA_C">加蓬</option><option value="GF_C">法属圭亚那</option><option value="FR_C">法国</option><option value="FI_C">芬兰</option><option value="FJ_C">斐济</option><option value="ET_C">埃塞俄比亚</option><option value="EE_C">爱沙尼亚</option><option value="SV_C">萨尔瓦多</option><option value="EG_C">埃及</option><option value="EC_C">厄瓜多尔</option><option value="DO_C">多米尼加共和国</option><option value="DJ_C">吉布提</option><option value="DK_C">丹麦</option><option value="CZ_C">捷克</option><option value="CY_C">塞浦路斯</option><option value="CU_C">古巴</option><option value="CR_C">哥斯达黎加</option><option value="CK_C">库克群岛</option><option value="CG_C">刚果</option><option value="CO_C">哥伦比亚</option><option value="CN_C" selected="selected">中国</option><option value="CL_C">智利</option><option value="TD_C">乍得</option><option value="CF_C">中非共和国</option><option value="Cayman_C">开曼群岛</option><option value="CA_C">加拿大</option><option value="CM_C">喀麦隆</option><option value="BI_C">布隆迪</option><option value="MM_C">缅甸</option><option value="BF_C">布基纳法索</option><option value="BG_C">保加利亚</option><option value="BN_C">文莱</option><option value="BR_C">巴西</option><option value="BW_C">博茨瓦纳</option><option value="BO_C">玻利维亚</option><option value="BM_C">百慕大群岛</option><option value="BJ_C">贝宁</option><option value="BZ_C">伯利兹</option><option value="BE_C">比利时</option><option value="BY_C">白俄罗斯</option><option value="BB_C">巴巴多斯</option><option value="BD_C">孟加拉国</option><option value="BH_C">巴林</option><option value="BS_C">巴哈马</option><option value="AZ_C">阿塞拜疆</option><option value="AT_C">奥地利</option><option value="AU_C">澳大利亚</option><option value="Ascension_C">阿森松</option><option value="AM_C">亚美尼亚</option><option value="AR_C">阿根廷</option><option value="AG_C">安提瓜和巴布达</option><option value="AI_C">安圭拉岛</option><option value="Andorra_C">安道尔共和国</option><option value="DZ_C">阿尔及利亚</option><option value="AL_C">阿尔巴尼亚</option><option value="AF_C">阿富汗</option><option value="AO_C">安哥拉</option>
                </select>
									</div>
                                    </div>
						        </div>
                                
                                <div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 时区<span class="required">*</span> </label>

									<div class="col-sm-9">
                                    <div class="input-group col-xs-10 col-sm-5">
										<select class="chosen-select" id="form-field-select-3" data-placeholder="Choose a State...">
                           <option value="selXIM_chzn_o_0">(UTC-11:00) 协调世界时-11</option><option value="selXIM_chzn_o_1">(UTC-11:00) 萨摩亚</option><option value="selXIM_chzn_o_2">(UTC-10:00) 夏威夷</option><option value="selXIM_chzn_o_3">(UTC-09:00) 阿拉斯加</option><option value="selXIM_chzn_o_4">(UTC-08:00) 太平洋时间 (美国和加拿大)</option><option value="selXIM_chzn_o_5">(UTC-08:00) 蒂华纳,下加利福尼亚州</option><option value="selXIM_chzn_o_6">(UTC-07:00) 山地时间 (美国和加拿大)</option><option value="selXIM_chzn_o_7">(UTC-07:00) 奇瓦瓦,拉巴斯,马萨特兰</option><option value="selXIM_chzn_o_8">(UTC-07:00) 马萨特兰</option><option value="selXIM_chzn_o_9">(UTC-07:00) 亚利桑那州</option><option value="selXIM_chzn_o_10">(UTC-06:00) 萨斯喀彻温省的</option><option value="selXIM_chzn_o_11">(UTC-06:00) 中美洲</option><option value="selXIM_chzn_o_12">(UTC-06:00) 中部时间 (美国和加拿大)</option><option value="selXIM_chzn_o_13">(UTC-06:00) 墨西哥城</option><option value="selXIM_chzn_o_14">(UTC-06:00) 蒙特雷</option><option value="selXIM_chzn_o_15">(UTC-05:00) 东部时间 (美国和加拿大)</option><option value="selXIM_chzn_o_16">(UTC-05:00) 波哥大,利马,基多</option><option value="selXIM_chzn_o_17">(UTC-05:00) 利马</option><option value="selXIM_chzn_o_18">(UTC-05:00) 里奥布兰科</option><option value="selXIM_chzn_o_19">(UTC-05:00) 印第安纳州 (东)</option><option value="selXIM_chzn_o_20">(UTC-04:30) 加拉加斯</option><option value="selXIM_chzn_o_21">(UTC-04:00) 大西洋时间 (加拿大)</option><option value="selXIM_chzn_o_22">(UTC-04:00) 马瑙斯</option><option value="selXIM_chzn_o_23">(UTC-04:00) 圣地亚哥</option><option value="selXIM_chzn_o_24">(UTC-04:00) 拉巴斯</option><option value="selXIM_chzn_o_25">(UTC-04:00) 库亚巴</option><option value="selXIM_chzn_o_26">(UTC-04:00) 亚松森</option><option value="selXIM_chzn_o_27">(UTC-03:30) 纽芬兰</option><option value="selXIM_chzn_o_28">(UTC-03:00) 布宜诺斯艾利斯</option><option value="selXIM_chzn_o_29">(UTC-03:00) 巴西利亚</option><option value="selXIM_chzn_o_30">(UTC-03:00) 格陵兰岛</option><option value="selXIM_chzn_o_31">(UTC-03:00) 蒙得维的亚</option><option value="selXIM_chzn_o_32">(UTC-02:00) 中大西洋</option><option value="selXIM_chzn_o_33">(UTC-01:00) 亚速尔群岛</option><option value="selXIM_chzn_o_34">(UTC-01:00) 佛得角是</option><option value="selXIM_chzn_o_35">(UTC) 伦敦,爱丁堡,都柏林,里斯本</option><option value="selXIM_chzn_o_36">(UTC) 协调世界时,格林威治标准时间</option><option value="selXIM_chzn_o_37">(UTC) 蒙罗维亚,雷克雅未克</option><option value="selXIM_chzn_o_38">(UTC) 卡萨布兰卡</option><option value="selXIM_chzn_o_39">(UTC+01:00) 贝尔格莱德,布拉迪斯拉发,布达佩斯,卢布尔雅那,布拉格</option><option value="selXIM_chzn_o_40">(UTC+01:00) 萨拉热窝,斯科普里,华沙,萨格勒布</option><option value="selXIM_chzn_o_41">(UTC+01:00) 布鲁塞尔,哥本哈根,马德里,巴黎</option><option value="selXIM_chzn_o_42">(UTC+01:00) 西中非</option><option value="selXIM_chzn_o_43">(UTC+01:00) 阿姆斯特丹,柏林,伯尔尼,罗马,斯德哥尔摩,维也纳</option><option value="selXIM_chzn_o_44">(UTC+02:00) 明斯克</option><option value="selXIM_chzn_o_45">(UTC+02:00) 开罗</option><option value="selXIM_chzn_o_46">(UTC+02:00) 赫尔辛基,里加,索非亚,塔林,维尔纽斯</option><option value="selXIM_chzn_o_47">(UTC+02:00) 雅典,布加勒斯特</option><option value="selXIM_chzn_o_48">(UTC+02:00) 伊斯坦布尔</option><option value="selXIM_chzn_o_49">(UTC+02:00) 耶路撒冷</option><option value="selXIM_chzn_o_50">(UTC+02:00) 安曼</option><option value="selXIM_chzn_o_51">(UTC+02:00) 贝鲁特</option><option value="selXIM_chzn_o_52">(UTC+02:00) 温得和克</option><option value="selXIM_chzn_o_53">(UTC+02:00) 哈拉雷</option><option value="selXIM_chzn_o_54">(UTC+03:00) 科威特,利雅得</option><option value="selXIM_chzn_o_55">(UTC+03:00) 巴格达</option><option value="selXIM_chzn_o_56">(UTC+03:00) 内罗毕</option><option value="selXIM_chzn_o_57">(UTC+03:30) 德黑兰</option><option value="selXIM_chzn_o_58">(UTC+04:00) 第比利斯</option><option value="selXIM_chzn_o_59">(UTC+04:00) 莫斯科,伏尔加格勒</option><option value="selXIM_chzn_o_60">(UTC+04:00) 阿布扎比,马斯喀特</option><option value="selXIM_chzn_o_61">(UTC+04:00) 巴库</option><option value="selXIM_chzn_o_62">(UTC+04:00) 埃里温</option><option value="selXIM_chzn_o_63">(UTC+05:00) 伊斯兰堡,卡拉奇</option><option value="selXIM_chzn_o_64">(UTC+05:00) 塔什干</option><option value="selXIM_chzn_o_65">(UTC+05:30) 金奈,加尔各答,孟买,新德里</option><option value="selXIM_chzn_o_66">(UTC+05:30) 斯里兰卡</option><option value="selXIM_chzn_o_67">(UTC+05:45) 加德满都</option><option value="selXIM_chzn_o_68">(UTC+06:00) 达卡</option><option value="selXIM_chzn_o_69">(UTC+06:00) 阿拉木图</option><option value="selXIM_chzn_o_70">(UTC+06:00) 叶卡捷琳堡</option><option value="selXIM_chzn_o_71">(UTC+06:30) 仰光</option><option value="selXIM_chzn_o_72">(UTC+07:00) 新西伯利亚</option><option value="selXIM_chzn_o_73">(UTC+07:00) 曼谷,雅加达</option><option value="selXIM_chzn_o_74" selected="selected">(UTC+08:00) 北京,重庆,香港,乌鲁木齐</option><option value="selXIM_chzn_o_75">(UTC+08:00) 克拉斯诺亚尔斯克</option><option value="selXIM_chzn_o_76">(UTC+08:00) 乌兰急红了眼</option><option value="selXIM_chzn_o_77">(UTC+08:00) 吉隆坡,新加坡</option><option value="selXIM_chzn_o_78">(UTC+08:00) 台北</option><option value="selXIM_chzn_o_79">(UTC+08:00) 珀斯</option><option value="selXIM_chzn_o_80">(UTC+09:00) 伊尔库茨克</option><option value="selXIM_chzn_o_81">(UTC+09:00) 首尔</option><option value="selXIM_chzn_o_82">(UTC+09:00) 东京</option><option value="selXIM_chzn_o_83">(UTC+09:30) 达尔文</option><option value="selXIM_chzn_o_84">(UTC+09:30) 阿德莱德</option><option value="selXIM_chzn_o_85">(UTC+10:00) 堪培拉,墨尔本,悉尼</option><option value="selXIM_chzn_o_86">(UTC+10:00) 布里斯班</option><option value="selXIM_chzn_o_87">(UTC+10:00) 霍巴特</option><option value="selXIM_chzn_o_88">(UTC+10:00) 符拉迪沃斯托克</option><option value="selXIM_chzn_o_89">(UTC+10:00) 关岛,莫尔兹比港</option><option value="selXIM_chzn_o_90">(UTC+10:00) 雅库茨克</option><option value="selXIM_chzn_o_91">(UTC+12:00) 斐济</option><option value="selXIM_chzn_o_92">(UTC+12:00) 堪察加</option><option value="selXIM_chzn_o_93">(UTC+12:00) 奥克兰</option><option value="selXIM_chzn_o_94">(UTC+12:00) 马加丹</option><option value="selXIM_chzn_o_95">(UTC+13:00) 努库阿洛法</option>
                </select>
									</div>
                                    </div>
						        </div>
                                
                                
                                
                                
								<div class="clearfix form-actions">
									<div class="col-md-offset-3 col-md-9">
										<button class="btn btn-info" type="button">
											<i class="ace-icon fa fa-check bigger-110"></i>
											保存
										</button>

										&nbsp; &nbsp; &nbsp;
										<button class="btn" type="reset">
											<i class="ace-icon fa fa-undo bigger-110"></i>
											重置
										</button>
									</div>
								</div>

								
							</form>


							<div id="modal-form" class="modal" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="blue bigger">Please fill the following form fields</h4>
										</div>

										<div class="modal-body">
											<div class="row">
												<div class="col-xs-12 col-sm-5">
													<div class="space"></div>

													<input type="file" />
												</div>

												<div class="col-xs-12 col-sm-7">
													<div class="form-group">
														<label for="form-field-select-3">Location</label>

														<div>
															<select class="chosen-select" data-placeholder="Choose a Country...">
																<option value="">&nbsp;</option>
																<option value="AL">Alabama</option>
																<option value="AK">Alaska</option>
																<option value="AZ">Arizona</option>
																<option value="AR">Arkansas</option>
																<option value="CA">California</option>
																<option value="CO">Colorado</option>
																<option value="CT">Connecticut</option>
																<option value="DE">Delaware</option>
																<option value="FL">Florida</option>
																<option value="GA">Georgia</option>
																<option value="HI">Hawaii</option>
																<option value="ID">Idaho</option>
																<option value="IL">Illinois</option>
																<option value="IN">Indiana</option>
																<option value="IA">Iowa</option>
																<option value="KS">Kansas</option>
																<option value="KY">Kentucky</option>
																<option value="LA">Louisiana</option>
																<option value="ME">Maine</option>
																<option value="MD">Maryland</option>
																<option value="MA">Massachusetts</option>
																<option value="MI">Michigan</option>
																<option value="MN">Minnesota</option>
																<option value="MS">Mississippi</option>
																<option value="MO">Missouri</option>
																<option value="MT">Montana</option>
																<option value="NE">Nebraska</option>
																<option value="NV">Nevada</option>
																<option value="NH">New Hampshire</option>
																<option value="NJ">New Jersey</option>
																<option value="NM">New Mexico</option>
																<option value="NY">New York</option>
																<option value="NC">North Carolina</option>
																<option value="ND">North Dakota</option>
																<option value="OH">Ohio</option>
																<option value="OK">Oklahoma</option>
																<option value="OR">Oregon</option>
																<option value="PA">Pennsylvania</option>
																<option value="RI">Rhode Island</option>
																<option value="SC">South Carolina</option>
																<option value="SD">South Dakota</option>
																<option value="TN">Tennessee</option>
																<option value="TX">Texas</option>
																<option value="UT">Utah</option>
																<option value="VT">Vermont</option>
																<option value="VA">Virginia</option>
																<option value="WA">Washington</option>
																<option value="WV">West Virginia</option>
																<option value="WI">Wisconsin</option>
																<option value="WY">Wyoming</option>
															</select>
														</div>
													</div>

													<div class="space-4"></div>

													<div class="form-group">
														<label for="form-field-username">Username</label>

														<div>
															<input class="input-large" type="text" id="form-field-username" placeholder="Username" value="alexdoe" />
														</div>
													</div>

													<div class="space-4"></div>

													<div class="form-group">
														<label for="form-field-first">Name</label>

														<div>
															<input class="input-medium" type="text" id="form-field-first" placeholder="First Name" value="Alex" />
															<input class="input-medium" type="text" id="form-field-last" placeholder="Last Name" value="Doe" />
														</div>
													</div>
												</div>
											</div>
										</div>

										<div class="modal-footer">
											<button class="btn btn-sm" data-dismiss="modal">
												<i class="ace-icon fa fa-times"></i>
												Cancel
											</button>

											<button class="btn btn-sm btn-primary">
												<i class="ace-icon fa fa-check"></i>
												Save
											</button>
										</div>
									</div>
								</div>


























							</div><!-- PAGE CONTENT ENDS -->
                            </div><!-- /.tab-pane in active -->
                            </div><!-- /.tab-content -->
						</div><!-- /.tabbable -->






						<div id="modal-table" class="modal fade" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header no-padding">
											<div class="table-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
													<span class="white">&times;</span>
												</button>
												请输入新密码
											</div>
										</div>

										<div class="modal-body no-padding">

										<form class="form-horizontal" role="form">
											<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">新密码<span class="required">*</span> </label>

									<div class="col-sm-9">
									  <input type="password" id="form-field-1" placeholder="新密码" class="col-xs-10 col-sm-5" />
									</div>
								</div>


								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">确认密码<span class="required">*</span> </label>

									<div class="col-sm-9">
									  <input type="password" id="form-field-1" placeholder="确认密码" class="col-xs-10 col-sm-5" />
									</div>
								</div>


								
								

								<div class="clearfix form-actions">
									<div style="text-align:right">
									
							


										<button class="btn btn-info" type="button">
											<i class="ace-icon fa fa-check bigger-110"></i>
											保存
										</button>

										&nbsp; &nbsp; &nbsp;
										<button class="btn" type="reset">
											<i class="ace-icon fa fa-undo bigger-110"></i>
											重置
										</button>

										
									</div>
								</div>

											</form>

											
										</div>

										
									</div><!-- /.modal-content -->
								</div><!-- /.modal-dialog -->
                        
						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.page-content -->
                
                
                
                
                
			</div><!-- /.main-content -->

			<div class="footer">
				<div class="footer-inner">
					<!-- #section:basics/footer -->
					<div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">Ace</span>
							Application &copy; Copyright 2014 TFY(2013-4-23)程序员的成长之路,路漫漫其修远兮,吾将上下而求索!天问。
						</span>

						&nbsp; &nbsp;
						<span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
							</a>
						</span>
					</div>

					<!-- /section:basics/footer -->
				</div>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='<%=request.getContextPath()%>/translator/assets/js/jquery.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='<%=request.getContextPath()%>/translator/assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='<%=request.getContextPath()%>/translator/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="<%=request.getContextPath()%>/translator/assets/js/excanvas.min.js"></script>
		<![endif]-->
		<script src="<%=request.getContextPath()%>/translator/assets/js/jquery-ui.custom.min.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/chosen.jquery.min.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/fuelux/fuelux.spinner.min.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/date-time/bootstrap-timepicker.min.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/date-time/moment.min.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/date-time/daterangepicker.min.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/date-time/bootstrap-datetimepicker.min.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/bootstrap-colorpicker.min.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/jquery.knob.min.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/jquery.autosize.min.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/jquery.maskedinput.min.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/bootstrap-tag.min.js"></script>

		<!-- ace scripts -->
		<script src="<%=request.getContextPath()%>/translator/assets/js/ace-elements.min.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				$('#id-disable-check').on('click', function() {
					var inp = $('#form-input-readonly').get(0);
					if(inp.hasAttribute('disabled')) {
						inp.setAttribute('readonly' , 'true');
						inp.removeAttribute('disabled');
						inp.value="This text field is readonly!";
					}
					else {
						inp.setAttribute('disabled' , 'disabled');
						inp.removeAttribute('readonly');
						inp.value="This text field is disabled!";
					}
				});
			
			
				$('.chosen-select').chosen({allow_single_deselect:true}); 
				//resize the chosen on window resize
				$(window).on('resize.chosen', function() {
					var w = $('.chosen-select').parent().width();
					$('.chosen-select').next().css({'width':w});
				}).trigger('resize.chosen');
			
				$('#chosen-multiple-style').on('click', function(e){
					var target = $(e.target).find('input[type=radio]');
					var which = parseInt(target.val());
					if(which == 2) $('#form-field-select-4').addClass('tag-input-style');
					 else $('#form-field-select-4').removeClass('tag-input-style');
				});
			
			
				$('[data-rel=tooltip]').tooltip({container:'body'});
				$('[data-rel=popover]').popover({container:'body'});
				
				$('textarea[class*=autosize]').autosize({append: "\n"});
				$('textarea.limited').inputlimiter({
					remText: '%n character%s remaining...',
					limitText: 'max allowed : %n.'
				});
			
				$.mask.definitions['~']='[+-]';
				$('.input-mask-date').mask('99/99/9999');
				$('.input-mask-phone').mask('(999) 999-9999');
				$('.input-mask-eyescript').mask('~9.99 ~9.99 999');
				$(".input-mask-product").mask("a*-999-a999",{placeholder:" ",completed:function(){alert("You typed the following: "+this.val());}});
			
			
			
				$( "#input-size-slider" ).css('width','200px').slider({
					value:1,
					range: "min",
					min: 1,
					max: 8,
					step: 1,
					slide: function( event, ui ) {
						var sizing = ['', 'input-sm', 'input-lg', 'input-mini', 'input-small', 'input-medium', 'input-large', 'input-xlarge', 'input-xxlarge'];
						var val = parseInt(ui.value);
						$('#form-field-4').attr('class', sizing[val]).val('.'+sizing[val]);
					}
				});
			
				$( "#input-span-slider" ).slider({
					value:1,
					range: "min",
					min: 1,
					max: 12,
					step: 1,
					slide: function( event, ui ) {
						var val = parseInt(ui.value);
						$('#form-field-5').attr('class', 'col-xs-'+val).val('.col-xs-'+val);
					}
				});
			
			
				
				//"jQuery UI Slider"
				//range slider tooltip example
				$( "#slider-range" ).css('height','200px').slider({
					orientation: "vertical",
					range: true,
					min: 0,
					max: 100,
					values: [ 17, 67 ],
					slide: function( event, ui ) {
						var val = ui.values[$(ui.handle).index()-1] + "";
			
						if( !ui.handle.firstChild ) {
							$("<div class='tooltip right in' style='display:none;left:16px;top:-6px;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>")
							.prependTo(ui.handle);
						}
						$(ui.handle.firstChild).show().children().eq(1).text(val);
					}
				}).find('a').on('blur', function(){
					$(this.firstChild).hide();
				});
				
				
				$( "#slider-range-max" ).slider({
					range: "max",
					min: 1,
					max: 10,
					value: 2
				});
				
				$( "#slider-eq > span" ).css({width:'90%', 'float':'left', margin:'15px'}).each(function() {
					// read initial values from markup and remove that
					var value = parseInt( $( this ).text(), 10 );
					$( this ).empty().slider({
						value: value,
						range: "min",
						animate: true
						
					});
				});
				
				$("#slider-eq > span.ui-slider-purple").slider('disable');//disable third item
			
				
				$('#id-input-file-1 , #id-input-file-2').ace_file_input({
					no_file:'No File ...',
					btn_choose:'Choose',
					btn_change:'Change',
					droppable:false,
					onchange:null,
					thumbnail:false //| true | large
					//whitelist:'gif|png|jpg|jpeg'
					//blacklist:'exe|php'
					//onchange:''
					//
				});
				//pre-show a file name, for example a previously selected file
				//$('#id-input-file-1').ace_file_input('show_file_list', ['myfile.txt'])
			
			
				$('#id-input-file-3').ace_file_input({
					style:'well',
					btn_choose:'Drop files here or click to choose',
					btn_change:null,
					no_icon:'ace-icon fa fa-cloud-upload',
					droppable:true,
					thumbnail:'small'//large | fit
					//,icon_remove:null//set null, to hide remove/reset button
					/**,before_change:function(files, dropped) {
						//Check an example below
						//or examples/file-upload.html
						return true;
					}*/
					/**,before_remove : function() {
						return true;
					}*/
					,
					preview_error : function(filename, error_code) {
						//name of the file that failed
						//error_code values
						//1 = 'FILE_LOAD_FAILED',
						//2 = 'IMAGE_LOAD_FAILED',
						//3 = 'THUMBNAIL_FAILED'
						//alert(error_code);
					}
			
				}).on('change', function(){
					//console.log($(this).data('ace_input_files'));
					//console.log($(this).data('ace_input_method'));
				});
				
			
				//dynamically change allowed formats by changing allowExt && allowMime function
				$('#id-file-format').removeAttr('checked').on('change', function() {
					var whitelist_ext, whitelist_mime;
					var btn_choose
					var no_icon
					if(this.checked) {
						btn_choose = "Drop images here or click to choose";
						no_icon = "ace-icon fa fa-picture-o";
			
						whitelist_ext = ["jpeg", "jpg", "png", "gif" , "bmp"];
						whitelist_mime = ["image/jpg", "image/jpeg", "image/png", "image/gif", "image/bmp"];
					}
					else {
						btn_choose = "Drop files here or click to choose";
						no_icon = "ace-icon fa fa-cloud-upload";
						
						whitelist_ext = null;//all extensions are acceptable
						whitelist_mime = null;//all mimes are acceptable
					}
					var file_input = $('#id-input-file-3');
					file_input
					.ace_file_input('update_settings',
					{
						'btn_choose': btn_choose,
						'no_icon': no_icon,
						'allowExt': whitelist_ext,
						'allowMime': whitelist_mime
					})
					file_input.ace_file_input('reset_input');
					
					file_input
					.off('file.error.ace')
					.on('file.error.ace', function(e, info) {
						//console.log(info.file_count);//number of selected files
						//console.log(info.invalid_count);//number of invalid files
						//console.log(info.error_list);//a list of errors in the following format
						
						//info.error_count['ext']
						//info.error_count['mime']
						//info.error_count['size']
						
						//info.error_list['ext']  = [list of file names with invalid extension]
						//info.error_list['mime'] = [list of file names with invalid mimetype]
						//info.error_list['size'] = [list of file names with invalid size]
						
						
						/**
						if( !info.dropped ) {
							//perhapse reset file field if files have been selected, and there are invalid files among them
							//when files are dropped, only valid files will be added to our file array
							e.preventDefault();//it will rest input
						}
						*/
						
						
						//if files have been selected (not dropped), you can choose to reset input
						//because browser keeps all selected files anyway and this cannot be changed
						//we can only reset file field to become empty again
						//on any case you still should check files with your server side script
						//because any arbitrary file can be uploaded by user and it's not safe to rely on browser-side measures
					});
				
				});
			
				$('#spinner1').ace_spinner({value:0,min:0,max:200,step:10, btn_up_class:'btn-info' , btn_down_class:'btn-info'})
				.on('change', function(){
					//alert(this.value)
				});
				$('#spinner2').ace_spinner({value:0,min:0,max:10000,step:100, touch_spinner: true, icon_up:'ace-icon fa fa-caret-up', icon_down:'ace-icon fa fa-caret-down'});
				$('#spinner3').ace_spinner({value:0,min:-100,max:100,step:10, on_sides: true, icon_up:'ace-icon fa fa-plus smaller-75', icon_down:'ace-icon fa fa-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
				//$('#spinner1').ace_spinner('disable').ace_spinner('value', 11);
				//or
				//$('#spinner1').closest('.ace-spinner').spinner('disable').spinner('enable').spinner('value', 11);//disable, enable or change value
				//$('#spinner1').closest('.ace-spinner').spinner('value', 0);//reset to 0
			
			
				//datepicker plugin
				//link
				$('.date-picker').datepicker({
					autoclose: true,
					todayHighlight: true
				})
				//show datepicker when clicking on the icon
				.next().on(ace.click_event, function(){
					$(this).prev().focus();
				});
			
				//or change it into a date range picker
				$('.input-daterange').datepicker({autoclose:true});
			
			
				//to translate the daterange picker, please copy the "examples/daterange-fr.js" contents here before initialization
				$('input[name=date-range-picker]').daterangepicker({
					'applyClass' : 'btn-sm btn-success',
					'cancelClass' : 'btn-sm btn-default',
					locale: {
						applyLabel: 'Apply',
						cancelLabel: 'Cancel',
					}
				})
				.prev().on(ace.click_event, function(){
					$(this).next().focus();
				});
			
			
				$('#timepicker1').timepicker({
					minuteStep: 1,
					showSeconds: true,
					showMeridian: false
				}).next().on(ace.click_event, function(){
					$(this).prev().focus();
				});
				
				$('#date-timepicker1').datetimepicker().next().on(ace.click_event, function(){
					$(this).prev().focus();
				});
				
			
				$('#colorpicker1').colorpicker();
			
				$('#simple-colorpicker-1').ace_colorpicker();
				//$('#simple-colorpicker-1').ace_colorpicker('pick', 2);//select 2nd color
				//$('#simple-colorpicker-1').ace_colorpicker('pick', '#fbe983');//select #fbe983 color
				//var picker = $('#simple-colorpicker-1').data('ace_colorpicker')
				//picker.pick('red', true);//insert the color if it doesn't exist
			
			
				$(".knob").knob();
				
				
				var tag_input = $('#form-field-tags');
				try{
					tag_input.tag(
					  {
						placeholder:tag_input.attr('placeholder'),
						//enable typeahead by specifying the source array
						source: ace.vars['US_STATES'],//defined in ace.js >> ace.enable_search_ahead
						/**
						//or fetch data from database, fetch those that match "query"
						source: function(query, process) {
						  $.ajax({url: 'remote_source.php?q='+encodeURIComponent(query)})
						  .done(function(result_items){
							process(result_items);
						  });
						}
						*/
					  }
					);
			
					//programmatically add a new
					var $tag_obj = $('#form-field-tags').data('tag');
					$tag_obj.add('Programmatically Added');
				}
				catch(e) {
					//display a textarea for old IE, because it doesn't support this plugin or another one I tried!
					tag_input.after('<textarea id="'+tag_input.attr('id')+'" name="'+tag_input.attr('name')+'" rows="3">'+tag_input.val()+'</textarea>').remove();
					//$('#form-field-tags').autosize({append: "\n"});
				}
				
				
				
			
				/////////
				$('#modal-form input[type=file]').ace_file_input({
					style:'well',
					btn_choose:'Drop files here or click to choose',
					btn_change:null,
					no_icon:'ace-icon fa fa-cloud-upload',
					droppable:true,
					thumbnail:'large'
				})
				
				//chosen plugin inside a modal will have a zero width because the select element is originally hidden
				//and its width cannot be determined.
				//so we set the width after modal is show
				$('#modal-form').on('shown.bs.modal', function () {
					$(this).find('.chosen-container').each(function(){
						$(this).find('a:first-child').css('width' , '210px');
						$(this).find('.chosen-drop').css('width' , '210px');
						$(this).find('.chosen-search input').css('width' , '200px');
					});
				})
				/**
				//or you can activate the chosen plugin after modal is shown
				//this way select element becomes visible with dimensions and chosen works as expected
				$('#modal-form').on('shown', function () {
					$(this).find('.modal-chosen').chosen();
				})
				*/
			
			});
		</script>

		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/ace.onpage-help.css" />
		<link rel="stylesheet" href="../docs/assets/js/themes/sunburst.css" />

		<script type="text/javascript"> ace.vars['base'] = '..'; </script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/ace/ace.onpage-help.js"></script>
		<script src="../docs/assets/js/rainbow.js"></script>
		<script src="../docs/assets/js/language/generic.js"></script>
		<script src="../docs/assets/js/language/html.js"></script>
		<script src="../docs/assets/js/language/css.js"></script>
		<script src="../docs/assets/js/language/javascript.js"></script>
	</body>
</html>
