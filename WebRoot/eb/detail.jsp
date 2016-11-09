<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Blank Page - Ace Admin</title>

		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->

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

		<!-- ace settings handler -->
		<script src="<%=request.getContextPath()%>/translator/assets/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="<%=request.getContextPath()%>/translator/assets/js/html5shiv.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/respond.min.js"></script>
		<![endif]-->
		
		
<link rel="stylesheet" href="styles/main.css" type="text/css" />
<link rel="stylesheet" href="styles/detail.css" type="text/css" />
<link rel="stylesheet" href="styles/skin/skin_0.css" type="text/css" id="cssfile" />
<link rel="stylesheet" href="styles/thickbox.css" type="text/css" />
<script src="scripts/jquery-1.3.1.js" type="text/javascript"></script>
<script src="scripts/jquery.cookie.js" type="text/javascript"></script>
<script src="scripts/nav.js" type="text/javascript"></script>
<script src="scripts/changeSkin.js" type="text/javascript"></script>
<script src="scripts/jquery.jqzoom.js" type="text/javascript"></script>
<script src="scripts/use_jqzoom.js" type="text/javascript"></script>
<script src="scripts/jquery.thickbox.js" type="text/javascript"></script>
<script src="scripts/jquery.livequery.js" type="text/javascript"></script>
<script src="scripts/switchImg.js" type="text/javascript"></script>
<script src="scripts/tab.js" type="text/javascript"></script>
<script src="scripts/switchColor.js" type="text/javascript"></script>
<script src="scripts/sizeAndprice.js" type="text/javascript"></script>
<script src="scripts/star.js" type="text/javascript"></script>
<script src="scripts/finish.js" type="text/javascript"></script>
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
								<img class="nav-user-photo" src="<%=request.getContextPath()%>/translator/assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>Welcome,</small>
									Jason
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="ace-icon fa fa-cog"></i>
										Settings
									</a>
								</li>

								<li>
									<a href="profile.html">
										<i class="ace-icon fa fa-user"></i>
										Profile
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="#">
										<i class="ace-icon fa fa-power-off"></i>
										Logout
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
					<li class="">
						<a href="index.html">
							<i class="menu-icon fa fa-tachometer"></i>
							<span class="menu-text"> Dashboard </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text"> UI &amp; Elements </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="#" class="dropdown-toggle">
									<i class="menu-icon fa fa-caret-right"></i>

									Layouts
									<b class="arrow fa fa-angle-down"></b>
								</a>

								<b class="arrow"></b>

								<ul class="submenu">
									<li class="">
										<a href="top-menu.html">
											<i class="menu-icon fa fa-caret-right"></i>
											Top Menu
										</a>

										<b class="arrow"></b>
									</li>

									<li class="">
										<a href="mobile-menu-1.html">
											<i class="menu-icon fa fa-caret-right"></i>
											Default Mobile Menu
										</a>

										<b class="arrow"></b>
									</li>

									<li class="">
										<a href="mobile-menu-2.html">
											<i class="menu-icon fa fa-caret-right"></i>
											Mobile Menu 2
										</a>

										<b class="arrow"></b>
									</li>

									<li class="">
										<a href="mobile-menu-3.html">
											<i class="menu-icon fa fa-caret-right"></i>
											Mobile Menu 3
										</a>

										<b class="arrow"></b>
									</li>
								</ul>
							</li>

							<li class="">
								<a href="typography.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Typography
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="elements.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Elements
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="buttons.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Buttons &amp; Icons
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="treeview.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Treeview
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="jquery-ui.html">
									<i class="menu-icon fa fa-caret-right"></i>
									jQuery UI
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="nestable-list.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Nestable Lists
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="#" class="dropdown-toggle">
									<i class="menu-icon fa fa-caret-right"></i>

									Three Level Menu
									<b class="arrow fa fa-angle-down"></b>
								</a>

								<b class="arrow"></b>

								<ul class="submenu">
									<li class="">
										<a href="#">
											<i class="menu-icon fa fa-leaf"></i>
											Item #1
										</a>

										<b class="arrow"></b>
									</li>

									<li class="">
										<a href="#" class="dropdown-toggle">
											<i class="menu-icon fa fa-pencil"></i>

											4th level
											<b class="arrow fa fa-angle-down"></b>
										</a>

										<b class="arrow"></b>

										<ul class="submenu">
											<li class="">
												<a href="#">
													<i class="menu-icon fa fa-plus"></i>
													Add Product
												</a>

												<b class="arrow"></b>
											</li>

											<li class="">
												<a href="#">
													<i class="menu-icon fa fa-eye"></i>
													View Products
												</a>

												<b class="arrow"></b>
											</li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text"> Tables </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="tables.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Simple &amp; Dynamic
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="jqgrid.html">
									<i class="menu-icon fa fa-caret-right"></i>
									jqGrid plugin
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-pencil-square-o"></i>
							<span class="menu-text"> Forms </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="form-elements.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Form Elements
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="form-wizard.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Wizard &amp; Validation
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="wysiwyg.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Wysiwyg &amp; Markdown
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="dropzone.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Dropzone File Upload
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="widgets.html">
							<i class="menu-icon fa fa-list-alt"></i>
							<span class="menu-text"> Widgets </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="calendar.html">
							<i class="menu-icon fa fa-calendar"></i>

							<span class="menu-text">
								Calendar

								<!-- #section:basics/sidebar.layout.badge -->
								<span class="badge badge-transparent tooltip-error" title="2 Important Events">
									<i class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
								</span>

								<!-- /section:basics/sidebar.layout.badge -->
							</span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="gallery.html">
							<i class="menu-icon fa fa-picture-o"></i>
							<span class="menu-text"> Gallery </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-tag"></i>
							<span class="menu-text"> More Pages </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="profile.html">
									<i class="menu-icon fa fa-caret-right"></i>
									User Profile
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="inbox.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Inbox
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="pricing.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Pricing Tables
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="invoice.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Invoice
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="timeline.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Timeline
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="login.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Login &amp; Register
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

					<li class="active open">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-file-o"></i>

							<span class="menu-text">
								Other Pages

								<!-- #section:basics/sidebar.layout.badge -->
								<span class="badge badge-primary">5</span>

								<!-- /section:basics/sidebar.layout.badge -->
							</span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="faq.html">
									<i class="menu-icon fa fa-caret-right"></i>
									FAQ
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="error-404.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Error 404
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="error-500.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Error 500
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="grid.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Grid
								</a>

								<b class="arrow"></b>
							</li>

							<li class="active">
								<a href="blank.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Blank Page
								</a>

								<b class="arrow"></b>
							</li>
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
							<a href="#">Home</a>
						</li>

						<li>
							<a href="#">Other Pages</a>
						</li>
						<li class="active">Blank Page</li>
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
					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							
							
							
							<!--头部开始-->
							<div id="header">
								<a id="logo" href="#">Jane Shopping</a>
								<ul id="skin">
									<li id="skin_0" title="蓝色" class="selected">蓝色</li>
									<li id="skin_1" title="紫色">紫色</li>
									<li id="skin_2" title="红色">红色</li>
									<li id="skin_3" title="天蓝色">天蓝色</li>
									<li id="skin_4" title="橙色">橙色</li>
									<li id="skin_5" title="淡绿色">淡绿色</li>
								</ul>
							</div>
							<!--头部结束-->
							<!--导航开始-->
							<div id="navigation">
								<ul>
									 <li><a href="#">首 页</a></li>
									 <li><a href="#">衬 衫</a>
											<ul>
												 <li><a href="#">短袖衬衫</a></li>
												 <li><a href="#">长袖衬衫</a></li>
												 <li><a href="#">无袖衬衫</a></li>
											</ul>
									</li>
									<li><a href="#">卫 衣</a>
											<ul>
												 <li><a href="#">开襟卫衣</a></li>
												 <li><a href="#">套头卫衣</a></li>
											</ul>
									 </li>
									<li><a href="#">裤 子</a>
											<ul>
												 <li><a href="#">休闲裤</a></li>
												 <li><a href="#">卡其裤</a></li>
												 <li><a href="#">牛仔裤</a></li>
							                     <li><a href="#">短裤</a></li>
							                </ul>
							         </li>
									 <li><a href="#">联系我们</a></li>
								</ul>
							</div>
							<!--导航结束-->
							<!--主体内容开始-->
							<div id="content" class="global_module">
								<h3>商品信息</h3>
								<div class="pro_detail">
									<div class="pro_detail_left">
										<div class="jqzoom"><img src="images/pro_img/blue_one_small.jpg" class="fs" alt=""  jqimg="images/pro_img/blue_one_big.jpg" id="bigImg"/></div>
										<span>
							                <a href="images/pro_img/blue_one_big.jpg" id="thickImg" title="介绍文字" class="thickbox">
							                   <img alt="点击看大图" src="images/look.gif" />
							                </a>
							            </span>
										<ul class="imgList">
											<li><img src="images/pro_img/blue_one.jpg" alt="" /></li>
											<li><img src="images/pro_img/blue_two.jpg" alt="" /></li>
											<li><img src="images/pro_img/blue_three.jpg" alt="" /></li>
										</ul>
										<div class="tab">
											<div class="tab_menu">
												<ul>
													<li class="selected">产品属性</li>
													<li>产品尺码表</li>
													<li>产品介绍</li>
												</ul>
											</div>
											<div class="tab_box">
												<div>沿用风靡百年的经典全棉牛津纺面料，通过领先的液氨整理技术，使面料的抗皱性能更上一层。延续简约、舒适、健康设计理念，特推出免烫、易打理的精细免烫牛津纺长袖衬衫系列。 
												</div>
												<div class="hide">
												来自新疆无污染的生态棉花，采用紧密纺精梳棉纱，单经双纬的织造组织，造就了颗粒饱满、朴实无华、温润细腻的经典牛津纺，易洗快干、手感丰软、吸湿性好。设计师遵循布料完美肌理，立体剪裁，以直筒明门襟的经典造型、配合圆袋、曲摆的现代人性化裁减，相得益彰，浑然天成。色彩明快的纯色衬衫简洁、自然、为您营造出利落、爽朗的形象，透出热情、优雅的个性；精选白、蓝、淡粉、宽条纹、英国格等10余种明亮、经典花型，色彩缤纷呈现，以适合本季着装，更显自然、舒适境界。
							                    </div>
												<div class="hide">
												世界权威德国科德宝的衬和英国高士缝纫线使成衣领型自然舒展、永不变形，缝线部位平服工整、牢固耐磨；人性化的4片式后背打褶结构设计提供更舒适的活动空间；领尖扣的领型设计戴或不戴领带风格炯同、瞬间呈现；醇正天然设计，只为彰显自然荣耀。
												</div>
											</div>
										</div>
									</div>
									<div class="pro_detail_right">
										<h4>免烫高支棉条纹衬衣</h4>
										<p>全新精品高支棉衬衫再次提升品质，精选100%新疆长绒棉织造而成，平整度好，短绒少； 80-100高支双股经纬交织，带来无与伦比的舒适享受；而且面料反光效果好，具有漂亮的光泽，质感上佳，有利于免烫效果的维持。※不仅如此，深受消费者欢迎的经典款式使精品高支棉衬衫更贴合东方人身型气质，多款衬衫还采用简单且个性鲜明条纹元素，利用最为单纯的几何线条，透过条纹的粗细、宽窄间的重组，带出令人耳目一新的时尚气息，更显出俊朗男士的挺拔身型！</p>
										<p><strong>现价：200元  <del>原价：300元</del></strong></p>
										<p><strong>编号：33313993</strong></p>
										<div class="color_change">
											颜色：<strong>蓝白</strong>
											<ul>
												<li><img src="images/pro_img/blue.jpg" alt="蓝白" /></li>
												<li><img src="images/pro_img/yellow.jpg" alt="黄白" /></li>
												<li><img src="images/pro_img/green.jpg" alt="粉绿" /></li>
											</ul>
										</div>
										<div class="pro_size">
											尺寸：<strong>未选择</strong>
											<ul>
												<li><span>S</span></li>
												<li><span>L</span></li>
												<li><span>SL</span></li>
												<li><span>LL</span></li>
											</ul>
										</div>
										<div class="pro_num">
											数量：
											<select id="num_sort" style="width:40px;" >
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
											</select>
										</div>
										<div class="pro_price">
											总计：<span>200</span>元
										</div>
										<div class="pro_rating">
											给商品评分：
											<ul class="rating nostar">
												<li class="one"><a href="#" title="1分">1</a></li>
												<li class="two"><a href="#" title="2分">2</a></li>
												<li class="three"><a href="#" title="3分">3</a></li>
												<li class="four"><a href="#" title="4分">4</a></li>
												<li class="five"><a href="#" title="5分">5</a></li>
											</ul>
										</div>
										<div id="cart">
											<a href="#"><img src="images/btn_cart.png"/></a>
										</div>
									</div>
								</div>
							</div>
							<!--主体内容结束-->
							
							
							
							
							

							<!-- PAGE CONTENT ENDS -->
						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.page-content -->
			</div><!-- /.main-content -->
			
			
			<div class="main-content">
			<div class="page-content">
			
			<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							
							
							<!--主体内容开始-->
							<div id="content" class="global_module">
								<h3>商品信息</h3>
								<div class="pro_detail">
									<div class="pro_detail_left">
										<div class="jqzoom"><img src="images/pro_img/blue_one_small.jpg" class="fs" alt=""  jqimg="images/pro_img/blue_one_big.jpg" id="bigImg"/></div>
										<span>
							                <a href="images/pro_img/blue_one_big.jpg" id="thickImg" title="介绍文字" class="thickbox">
							                   <img alt="点击看大图" src="images/look.gif" />
							                </a>
							            </span>
										<ul class="imgList">
											<li><img src="images/pro_img/blue_one.jpg" alt="" /></li>
											<li><img src="images/pro_img/blue_two.jpg" alt="" /></li>
											<li><img src="images/pro_img/blue_three.jpg" alt="" /></li>
										</ul>
										<div class="tab">
											<div class="tab_menu">
												<ul>
													<li class="selected">产品属性</li>
													<li>产品尺码表</li>
													<li>产品介绍</li>
												</ul>
											</div>
											<div class="tab_box">
												<div>沿用风靡百年的经典全棉牛津纺面料，通过领先的液氨整理技术，使面料的抗皱性能更上一层。延续简约、舒适、健康设计理念，特推出免烫、易打理的精细免烫牛津纺长袖衬衫系列。 
												</div>
												<div class="hide">
												来自新疆无污染的生态棉花，采用紧密纺精梳棉纱，单经双纬的织造组织，造就了颗粒饱满、朴实无华、温润细腻的经典牛津纺，易洗快干、手感丰软、吸湿性好。设计师遵循布料完美肌理，立体剪裁，以直筒明门襟的经典造型、配合圆袋、曲摆的现代人性化裁减，相得益彰，浑然天成。色彩明快的纯色衬衫简洁、自然、为您营造出利落、爽朗的形象，透出热情、优雅的个性；精选白、蓝、淡粉、宽条纹、英国格等10余种明亮、经典花型，色彩缤纷呈现，以适合本季着装，更显自然、舒适境界。
							                    </div>
												<div class="hide">
												世界权威德国科德宝的衬和英国高士缝纫线使成衣领型自然舒展、永不变形，缝线部位平服工整、牢固耐磨；人性化的4片式后背打褶结构设计提供更舒适的活动空间；领尖扣的领型设计戴或不戴领带风格炯同、瞬间呈现；醇正天然设计，只为彰显自然荣耀。
												</div>
											</div>
										</div>
									</div>
									<div class="pro_detail_right">
										<h4>免烫高支棉条纹衬衣</h4>
										<p>全新精品高支棉衬衫再次提升品质，精选100%新疆长绒棉织造而成，平整度好，短绒少； 80-100高支双股经纬交织，带来无与伦比的舒适享受；而且面料反光效果好，具有漂亮的光泽，质感上佳，有利于免烫效果的维持。※不仅如此，深受消费者欢迎的经典款式使精品高支棉衬衫更贴合东方人身型气质，多款衬衫还采用简单且个性鲜明条纹元素，利用最为单纯的几何线条，透过条纹的粗细、宽窄间的重组，带出令人耳目一新的时尚气息，更显出俊朗男士的挺拔身型！</p>
										<p><strong>现价：200元  <del>原价：300元</del></strong></p>
										<p><strong>编号：33313993</strong></p>
										<div class="color_change">
											颜色：<strong>蓝白</strong>
											<ul>
												<li><img src="images/pro_img/blue.jpg" alt="蓝白" /></li>
												<li><img src="images/pro_img/yellow.jpg" alt="黄白" /></li>
												<li><img src="images/pro_img/green.jpg" alt="粉绿" /></li>
											</ul>
										</div>
										<div class="pro_size">
											尺寸：<strong>未选择</strong>
											<ul>
												<li><span>S</span></li>
												<li><span>L</span></li>
												<li><span>SL</span></li>
												<li><span>LL</span></li>
											</ul>
										</div>
										<div class="pro_num">
											数量：
											<select id="num_sort" style="width:40px;" >
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
											</select>
										</div>
										<div class="pro_price">
											总计：<span>200</span>元
										</div>
										<div class="pro_rating">
											给商品评分：
											<ul class="rating nostar">
												<li class="one"><a href="#" title="1分">1</a></li>
												<li class="two"><a href="#" title="2分">2</a></li>
												<li class="three"><a href="#" title="3分">3</a></li>
												<li class="four"><a href="#" title="4分">4</a></li>
												<li class="five"><a href="#" title="5分">5</a></li>
											</ul>
										</div>
										<div id="cart">
											<a href="#"><img src="images/btn_cart.png"/></a>
										</div>
									</div>
								</div>
							</div>
							<!--主体内容结束-->
							
							
							
							
							
							

							<!-- PAGE CONTENT ENDS -->
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
							Application &copy; 2013-2014
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

		<!-- ace scripts -->
		<script src="<%=request.getContextPath()%>/translator/assets/js/ace-elements.min.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
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
