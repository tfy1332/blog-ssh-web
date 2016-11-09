<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html>
<html>
  <head>
   <title>代码改变世界--究天人之际，通古今之变，成一家之言</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Login Page -盖锺子期死，伯牙终身不复鼓琴。何则？士为知己者死，女为悦己者容</title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/font-awesome.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/ace-fonts.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/ace.min.css" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/ace-ie.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/translator/assets/css/ace.onpage-help.css" />

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="<%=request.getContextPath()%>/translator/assets/js/html5shiv.js"></script>
		<script src="<%=request.getContextPath()%>/translator/assets/js/respond.min.js"></script>
		<![endif]-->
   <link rel="stylesheet" href="css/signin.css" type="text/css"></link>
   <link rel="shortcut icon" href="bootstrap-2.3.2/docs/<%=request.getContextPath()%>/translator/assets/ico/favicon.png">
   <link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
   <script src="<%=request.getContextPath() %>/js/jquery.js"></script>

<script type="text/javascript">
function login(){
	var username=$("#username").val();
	var pwd=$("#password").val();
	if(username==null||username==""||username==undefined){
		alert("用户名不能为空!");
		return "";
	}
	if(pwd==null||pwd==""||pwd==undefined){
		alert("密码不能为空!");
		return "";
	}
	var saveTime="";
	if($("#saveTime").is(":checked")){
		saveTime="1";//保存一天 
	}
	$.ajax({
		   type: "POST",
		   url: "login!login.action",
		   data: {username:username,password:pwd,saveTime:saveTime},
		   async: false,
		   success: function(msg){
			   //alert(msg);
			   if(msg==="成功ok"){
				   //alert(1111);
				   window.location.href="<%=request.getContextPath() %>/redirectUrl.jsp";
				   return "";
			   }
			   if(msg==="toMobile"){
				   //alert("mobile");
				   window.location.href="<%=request.getContextPath()%>/mobile.jsp";
				   return;
			   }
			   //alert(222);
			   //alert("${refererUrl}");
			  //alert(msg);
			  window.location.href="${refererUrl}";
		   }
	});
	
}
function signUp(){
    alert(234);
	var username=$("#signup_name").val();
	var email=$("#signup_email").val();
	var pwd=$("#signup_password").val();
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
		   url: "login!signUp.action",
		   data: {username:username,email:email,password:pwd},
		   async: false,
		   success: function(msg){
			   if(msg==""||msg==null||msg==undefined){
				   //alert(msg);
				   alert("保存失败!");
				   return "";
			   }
				alert("保存成功!");
				window.location.href="<%=request.getContextPath() %>/redirectUrl.jsp";
		   }
	});
    }


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
function send(){
	alert("准备发送邮件!");
	var email=$("#email").val();//Jquery #id
	alert(email);
	var Regex = /^(?:\w+\.?)*\w+@(?:\w+\.)*\w+$/;
	if (Regex.test(email)){ 
		alert("提交发送邮件表单!"); 
		document.getElementById("retrievePassword").submit();
			/*
			$.ajax({
				   type: "POST",
				   url: "user!retrievePassword.action",
				   data: {email:email},
				   async: false,
				   success: function(msg){
					  alert(msg);
					   if(msg==""||msg==null||msg==undefined){
						   //alert(msg);
						   alert("保存失败!");
						  flag2=false;
						   return ;
					   }else if("邮箱已经被注册"==msg){
						  
						   $("#message").css("display","block");
						  // alert("nihao==邮箱已经被注册===hello");
						   $("#usernameMess").html("该邮箱已经被注册,请重新输入邮箱地址!");
						  flag2=false;
						   return ;
						   }
					  flag2=true;
						//alert("保存成功!");
						//window.location.href="<%=request.getContextPath() %>/redirectUrl.jsp";
				   }
			});
			*/
		
	}else{
		　if (email == "" || email==undefined) {                    
	    	　	 alert("您好，请输入电子邮件地址!");  
	    	 	 //$("#usernameMess").html("您好，请输入电子邮件地址!");                   
	    	　　	 return "";                
	    	　　}else{
					alert("您好，你输入的邮箱地址格式不正确，请重新输入!");
	    		}
		}
}
</script>
</head>


  <body class="login-layout" onkeydown="on_return();">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="ace-icon fa fa-leaf green"></i>
									<span class="red">Ace</span>
									<span class="white" id="id-text2">Application</span>
								</h1>
								<h4 class="blue" id="id-company-text">&copy; Company Name</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="ace-icon fa fa-coffee green"></i>
												Please Enter Your Information
											</h4>

											<div class="space-6"></div>

											<form>
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input id="username" type="text" class="form-control" placeholder="Username" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input id="password" type="password" class="form-control" placeholder="Password" />
															<i class="ace-icon fa fa-lock"></i>
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
														<label class="inline">
															<input type="checkbox" class="ace" />
															<span class="lbl"> Remember Me</span>
														</label>

														<button id="sub" type="button" class="width-35 pull-right btn btn-sm btn-primary" onclick="login();">
															<i class="ace-icon fa fa-key"></i>
															<span class="bigger-110" >Login</span>
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

											<div class="social-or-login center">
												<span class="bigger-110">Or Login Using</span>
											</div>

											<div class="space-6"></div>

											<div class="social-login center">
												<a class="btn btn-primary">
													<i class="ace-icon fa fa-facebook"></i>
												</a>

												<a class="btn btn-info">
													<i class="ace-icon fa fa-twitter"></i>
												</a>

												<a class="btn btn-danger">
													<i class="ace-icon fa fa-google-plus"></i>
												</a>
											</div>
										</div><!-- /.widget-main -->

										<div class="toolbar clearfix">
											<div>
												<a href="#" data-target="#forgot-box" class="forgot-password-link">
													<i class="ace-icon fa fa-arrow-left"></i>
													忘记密码
													<!-- 
													I forgot my password(忘记密码)
													-->
												</a>
											</div>

											<div>
												<a href="#" data-target="#signup-box" class="user-signup-link">
												去注册
												<!-- 
													I want to register(去注册)
												-->
													<i class="ace-icon fa fa-arrow-right"></i>
												</a>
											</div>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->

								<div id="forgot-box" class="forgot-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header red lighter bigger">
												<i class="ace-icon fa fa-key"></i>
												找回密码
												<!--  
												Retrieve Password(找回密码)
												-->
											</h4>

											<div class="space-6"></div>
											<p>
											输入您的邮箱,接受BLOG系统的指令URL
											<!-- 
												Enter your email and to receive instructions(输入您的邮箱,接受BLOG系统的指令URL)
											-->
											</p>

											<form action="user!toretrievePasswordUI.action" method="post" id="retrievePassword" name="retrievePassword">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input id="email" name="email" type="email" class="form-control" placeholder="Email" />
															<i class="ace-icon fa fa-envelope"></i>
														</span>
													</label>

													<div class="clearfix">
														<button type="button" class="width-35 pull-right btn btn-sm btn-danger" onclick="send();">
															<i class="ace-icon fa fa-lightbulb-o"></i>
															<span class="bigger-110">
															发送
															<!-- 
															Send Me!(发送)
															 -->
															</span>
														</button>
													</div>
												</fieldset>
											</form>
										</div><!-- /.widget-main -->

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link">
											
											返回登录
											<!--  
												Back to login(返回登录)
											-->
												<i class="ace-icon fa fa-arrow-right"></i>
											</a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.forgot-box -->

								<div id="signup-box" class="signup-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header green lighter bigger">
												<i class="ace-icon fa fa-users blue"></i>
												New User Registration
											</h4>

											<div class="space-6"></div>
											<p> Enter your details to begin: </p>

											<form>
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input id="signup_email" type="email" class="form-control" placeholder="Email" />
															<i class="ace-icon fa fa-envelope"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input id="signup_name" type="text" class="form-control" placeholder="Username" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input id="signup_password" type="password" class="form-control" placeholder="Password" />
															<i class="ace-icon fa fa-lock"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="Repeat password" />
															<i class="ace-icon fa fa-retweet"></i>
														</span>
													</label>

													<label class="block">
														<input type="checkbox" class="ace" />
														<span class="lbl">
															I accept the
															<a href="#">User Agreement</a>
														</span>
													</label>

													<div class="space-24"></div>

													<div class="clearfix">
														<button type="reset" class="width-30 pull-left btn btn-sm">
															<i class="ace-icon fa fa-refresh"></i>
															<span class="bigger-110">Reset</span>
														</button>

														<button type="button" class="width-65 pull-right btn btn-sm btn-success" onclick="signUp();">
															<span class="bigger-110">Register</span>

															<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
														</button>
													</div>
												</fieldset>
											</form>
										</div>

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link">
												<i class="ace-icon fa fa-arrow-left"></i>
												Back to login
											</a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.signup-box -->
							</div><!-- /.position-relative -->

							<div class="navbar-fixed-top align-right">
								<br />
								&nbsp;
								<a id="btn-login-dark" href="#">Dark</a>
								&nbsp;
								<span class="blue">/</span>
								&nbsp;
								<a id="btn-login-blur" href="#">Blur</a>
								&nbsp;
								<span class="blue">/</span>
								&nbsp;
								<a id="btn-login-light" href="#">Light</a>
								&nbsp; &nbsp; &nbsp;
							</div>
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
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

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
			 $(document).on('click', '.toolbar a[data-target]', function(e) {
				e.preventDefault();
				var target = $(this).data('target');
				$('.widget-box.visible').removeClass('visible');//hide others
				$(target).addClass('visible');//show target
			 });
			});
			
			
			
			//you don't need this, just used for changing background
			jQuery(function($) {
			 $('#btn-login-dark').on('click', function(e) {
				$('body').attr('class', 'login-layout');
				$('#id-text2').attr('class', 'white');
				$('#id-company-text').attr('class', 'blue');
				
				e.preventDefault();
			 });
			 $('#btn-login-light').on('click', function(e) {
				$('body').attr('class', 'login-layout light-login');
				$('#id-text2').attr('class', 'grey');
				$('#id-company-text').attr('class', 'blue');
				
				e.preventDefault();
			 });
			 $('#btn-login-blur').on('click', function(e) {
				$('body').attr('class', 'login-layout blur-login');
				$('#id-text2').attr('class', 'white');
				$('#id-company-text').attr('class', 'light-blue');
				
				e.preventDefault();
			 });
			 
			});
		</script>
	</body>
  
</html>