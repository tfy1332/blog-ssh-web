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
		<title>程序员(CODER) -简历信息</title>

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
		
		
		<!-- Fav and touch icons -->
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
		function add(){
			//alert("#modal-table");
		// window.location.href="index.html";
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
									<a href="user!showUserBasicInfo?username=<%= session.getAttribute("userID")%> ">
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
									2009-09-06-班(2009-09-01)
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="../tasks/task_pending_list.html">
									<i class="menu-icon fa fa-caret-right"></i>
									避风的港湾-幸福的乐园->我的家(MyFamily)
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
				<div class="page-content">
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
								在此处维护程序员(Coder)相关个人信息。
							</small>
						</h1>
					</div><!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">


						 <div class="tabbable">
					<ul id="myTab" class="nav nav-tabs">
							<li>
									<a href="user!showUserBasicInfo?username=<%= session.getAttribute("userID")%> "  >
									<i class="green ace-icon fa  fa-desktop bigger-120"></i>
									基本信息
									</a>
									</li>
									<!--  
                                    
									<li>
									<a href="javascript:;" onClick="window.location.href='information_language.html';">
									<i class="green ace-icon fa  fa-globe bigger-120"></i>
                                    语&nbsp;言&nbsp;对
									</a>
									</li>
                                    
                                    <li>
									<a href="javascript:;" onClick="window.location.href='information_pay.html';">
									<i class="green ace-icon fa  glyphicon-euro bigger-120"></i>
                                    付款信息
									</a>
									</li>
									
									-->
                                    
                                    <li class="active">
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
                                    译员预览
									</a>
									</li>
							</ul>
						<div class="tab-content">
							<div class="tab-pane in active" id="home">
							<!-- /.page-header -->



							<!-- PAGE CONTENT BEGINS -->
							<form class="form-horizontal" role="form">
								<!-- #section:elements.form -->



				<div class="widget-box">

						<div>
							<label for="form-field-11">请在下方填写个人简介信息</label>

							<textarea id="form-field-11" class="autosize-transition form-control"></textarea>
							

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

								</div>
				</div>












		<!-- /section:settings.box -->
					<div class="page-header">
						<h1>
							工作经验信息
							<small>
								<i class="ace-icon fa fa-angle-double-right"></i>
								请在下方填写工作经验信息
							</small>
						</h1>
					</div><!-- /.page-header -->

							<!-- PAGE CONTENT BEGINS -->
							<div class="row">
								<div class="col-xs-12">
									<table id="sample-table-1" class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												
												<th>公司</th>
												<th>职位</th>
												<th class="hidden-480">起止年月</th>

												<th>
													<i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
													工作概述
												</th>
												<th class="hidden-480">操作</th>

												
											</tr>
										</thead>

										<tbody>
											<tr>
												

												<td>
													<a href="#">中国民航大学</a>
												</td>
												<td>科研人员</td>
												<td class="hidden-480">2010年03月 至 2012年08月</td>
												<td>设备开发、专利翻译和技术资料翻译。设备开发、专利翻译和技术资料翻译。设备开发、专利翻译和技术资料翻译</td>

												<td class="hidden-480">
													<span class="label label-sm label-warning">删除</span>
												</td>

												
											</tr>

											<tr>
												

												<td>
													<a href="#">律师事务所</a>
												</td>
												<td>律师</td>
												<td class="hidden-480">2012年09月 至 2014年08月</td>
												<td>法律事务</td>

												<td class="hidden-480">
													<span class="label label-sm label-warning">删除</span>
												</td>

												
											</tr>



											
										</tbody>
									</table>
								</div><!-- /.span -->

							</div><!-- /.row -->

							<div class="clearfix form-actions">
									<div style="text-align:right">
										<button href="#modal-table" class="btn btn-info" type="button" data-toggle="modal">
											<i class="ace-icon fa fa-check bigger-110"></i>
											添加
										</button>
									</div>
							</div>








<!-- /section:settings.box -->
					<div class="page-header">
						<h1>
							教育信息
							<small>
								<i class="ace-icon fa fa-angle-double-right"></i>
								请在下方填写教育信息
							</small>
						</h1>
					</div><!-- /.page-header -->

							<!-- PAGE CONTENT BEGINS -->
							<div class="row">
								<div class="col-xs-12">
									<table id="sample-table-1" class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												
												<th>学校</th>
												<th>专业</th>
												<th class="hidden-480">起止年月</th>

												<th>
													<i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
													学历
												</th>
												<th>国家</th>
												<th class="hidden-480">操作</th>
											
												
											</tr>
										</thead>

										<tbody>
											<tr>
												

												<td>
													<a href="#">耶鲁大学</a>
												</td>
												<td>国际翻译学</td>
												<td class="hidden-480">2010年03月 至 2012年08月</td>
												<td>博士</td>
												<td>美国</td>
											
												
												<td class="hidden-480">
													<span class="label label-sm label-warning">删除</span>
												</td>

												
											</tr>

											<tr>
												

												<td>
													<a href="#">北京大学</a>
												</td>
												<td>材料工程</td>
												<td class="hidden-480">2003年09月 至 2006年06月</td>
												<td>硕士</td>
												<td>中国</td>
												<td class="hidden-480">
													<span class="label label-sm label-warning">删除</span>
												</td>

												
											</tr>



											
										</tbody>
									</table>
								</div><!-- /.span -->
							</div><!-- /.row -->
							<div class="clearfix form-actions">
									<div style="text-align:right">
									<button href="#modal-table2" class="btn btn-info" type="button" data-toggle="modal">
											<i class="ace-icon fa fa-check bigger-110"></i>
											添加
										</button>
										
										
									</div>
								</div>










								<!-- /section:settings.box -->
					
					<div class="page-header">
						<h1>
							资质证书信息
							<small>
								<i class="ace-icon fa fa-angle-double-right"></i>
								请在下方填写资质证书信息
							</small>
						</h1>
					</div><!-- /.page-header -->

							<!-- PAGE CONTENT BEGINS -->
							<div class="row">
								<div class="col-xs-12">
									<table id="sample-table-1" class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												
												<th>证书名称</th>
												<th>授予机构</th>
												<th class="hidden-480">授予年份</th>

												<th>
													<i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
													证书描述
												</th>
												<th class="hidden-480">操作</th>

												
											</tr>
										</thead>

										<tbody>
											<tr>
												

												<td>
													<a href="#">商务英语翻译证书四级翻译证书</a>
												</td>
												<td>商务部</td>
												<td class="hidden-480">2008年09月</td>
												<td>全国外语翻译证书（NAETI)是由教育部考试中心与北京外国语大学合作举办，在全国实施的面向社会的非学历证书考试，主要测试应试者外语笔译和口译能力</td>

												<td class="hidden-480">
													<span class="label label-sm label-warning">删除</span>
												</td>

												
											</tr>

											<tr>
												

												<td>
													<a href="#">联合国语言培训体系认证P1</a>
												</td>
												<td>unitar</td>
												<td class="hidden-480">2014年02月</td>
												<td>根据联合国大会1963年12月11日1934号（ⅩⅧ）决议成立于1965年，是联合国专门专注于培训和培训相关研究的机构。</td>

												<td class="hidden-480">
													<span class="label label-sm label-warning">删除</span>
												</td>

												
											</tr>



											
										</tbody>
									</table>
								</div><!-- /.span -->

							</div><!-- /.row -->
							

							<div class="clearfix form-actions">
									<div style="text-align:right">
										
											<button href="#modal-table3" class="btn btn-info" type="button" data-toggle="modal">
											<i class="ace-icon fa fa-check bigger-110"></i>
											添加
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

						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.page-content -->
			</div><!-- /.main-content -->


			<div id="modal-table" class="modal fade" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header no-padding">
											<div class="table-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
													<span class="white">&times;</span>
												</button>
												添加工作经验信息 
											</div>
										</div>

										<div class="modal-body no-padding">
											<form class="form-horizontal" role="form">
											<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 公司<span class="required">*</span> </label>

									<div class="col-sm-9">
									  <input type="text" id="form-field-1" placeholder="公司" class="col-xs-10 col-sm-5" />
									</div>
								</div>


								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 职位<span class="required">*</span> </label>

									<div class="col-sm-9">
									  <input type="text" id="form-field-1" placeholder="职位" class="col-xs-10 col-sm-5" />
									</div>
								</div>



								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 起止年月<span class="required">*</span> </label>

									<div class="col-sm-9">
									  <input type="text" id="form-field-1" placeholder="起止年月" class="col-xs-10 col-sm-5" />
									</div>
								</div>


									

													
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">工作概述</label>

									<div class="col-sm-9">
										<textarea maxlength="200" id="form-field-9" class="col-xs-10 col-sm-5 limited"></textarea>
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
								</div>





							<div id="modal-table2" class="modal fade" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header no-padding">
											<div class="table-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
													<span class="white">&times;</span>
												</button>
												添加教育信息
											</div>
										</div>

										<div class="modal-body no-padding">
											<form class="form-horizontal" role="form">

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">学校<span class="required">*</span> </label>

									<div class="col-sm-9">
									  <input type="text" id="form-field-1" placeholder="学校" class="col-xs-10 col-sm-5" />
									</div>
								</div>


								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 专业<span class="required">*</span> </label>

									<div class="col-sm-9">
									  <input type="text" id="form-field-1" placeholder="专业" class="col-xs-10 col-sm-5" />
									</div>
								</div>



								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 起止年月<span class="required">*</span> </label>

									<div class="col-sm-9">
									  <input type="text" id="form-field-1" placeholder="起止年月" class="col-xs-10 col-sm-5" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">学历<span class="required">*</span> </label>

									<div class="col-sm-9">
									  <input type="text" id="form-field-1" placeholder="学历" class="col-xs-10 col-sm-5" />
									</div>


								</div><div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">国家<span class="required">*</span> </label>

									<div class="col-sm-9">
									  <input type="text" id="form-field-1" placeholder="国家" class="col-xs-10 col-sm-5" />
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
								</div>


							<div id="modal-table3" class="modal fade" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header no-padding">
											<div class="table-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
													<span class="white">&times;</span>
												</button>
												添加资质证书信息
											</div>
										</div>

										<div class="modal-body no-padding">
											<form class="form-horizontal" role="form">
											<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">证书名称<span class="required">*</span> </label>

									<div class="col-sm-9">
									  <input type="text" id="form-field-1" placeholder="证书名称" class="col-xs-10 col-sm-5" />
									</div>
								</div>


								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 授予机构<span class="required">*</span> </label>

									<div class="col-sm-9">
									  <input type="text" id="form-field-1" placeholder="授予机构" class="col-xs-10 col-sm-5" />
									</div>
								</div>



								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">授予年份<span class="required">*</span> </label>

									<div class="col-sm-9">
									  <input type="text" id="form-field-1" placeholder="授予年份" class="col-xs-10 col-sm-5" />
									</div>
								</div>


									

													
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">证书描述</label>

									<div class="col-sm-9">
										<textarea maxlength="200" id="form-field-9" class="col-xs-10 col-sm-5 limited"></textarea>
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
								</div>



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
