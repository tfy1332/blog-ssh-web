<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--

         Worktile v3.0.5，让工作更简单。

`WWWWWWWWWWWWWWW+   `WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW+
`OOOOOOOOOOOOOOO+   `OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO+
`RRRRRRRRRRRRRRR+   `RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR+
`KKKKKKKKKKKKKKK+   `KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK+
`TTTTTTTTTTTTTTT+   `TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT+
`IIIIIIIIIIIIIII+   `IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII+
`LLLLLLLLLLLLLLL+   `LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL+
`EEEEEEEEEEEEEEE+   `EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE+
                                        `WWWWWWWWWWWWWWW+
                                        `TTTTTTTTTTTTTTT+
`WWWWWWWWWWWWWWW+   `WWWWWWWWWWWWWWW+   `WWWWWWWWWWWWWWW+
`OOOOOOOOOOOOOOO+   `OOOOOOOOOOOOOOO+   `OOOOOOOOOOOOOOO+
`RRRRRRRRRRRRRRR+   `RRRRRRRRRRRRRRR+   `RRRRRRRRRRRRRRR+
`KKKKKKKKKKKKKKK+   `KKKKKKKKKKKKKKK+   `KKKKKKKKKKKKKKK+
`TTTTTTTTTTTTTTT+   `TTTTTTTTTTTTTTT+   `TTTTTTTTTTTTTTT+
`IIIIIIIIIIIIIII+   `IIIIIIIIIIIIIII+   `IIIIIIIIIIIIIII+
`LLLLLLLLLLLLLLL+   `LLLLLLLLLLLLLLL+   `LLLLLLLLLLLLLLL+
`EEEEEEEEEEEEEEE+   `EEEEEEEEEEEEEEE+   `EEEEEEEEEEEEEEE+

-->
<html lang="zh-CN">
<head>
    <meta charset="utf-8" />
    <title>注册 - TFY-BLOG</title>
    
    <meta name="author" content="yctech" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="maximum-scale=1.0,width=device-width,initial-scale=1.0" />
    <meta name="keywords" content="团队协同,项目管理,任务管理,项目协作,在线办公,协作办公,SAAS,云协作,企业办公" />
    <meta name="description" content="worktile，让工作更简单。Worktile是一个团队协同工具，通过简单的协作、沟通和分享，实现团队交互与任务管理的轻松协作。工作随身带，多平台、云数据，随时随地与团队一起工作，项目、任务、文件、话题、文档、事件、活动流、通知和日历，一个都不能少。" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/signup.css" />
    <!--[if lt IE 9]>
    <script src="/ycjs/lib/html5shiv/3.6.2/html5shiv.js"></script>
    <script src="/ycjs/lib/respond/1.1.0/respond.js"></script>
    <![endif]-->
    <!--[if lte IE 8]>
    <script src="/ycjs/lib/json/json2.js"></script>
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
		
		
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/signup.js"></script>
    <script src="<%=request.getContextPath() %>/js/jquery.js"></script>
    <script src="<%=request.getContextPath() %>/js/jquery.validate.js"></script>
    <script type="text/javascript">

    $(document).ready(function(){

    	//自定义一个验证方法
    	$.validator.addMethod(
    	"formula", //验证方法名称
    	function(value, element, param) {//验证规则
    		return value == eval(param);
    	}, 
    	'请正确输入数学公式计算后的结果'//验证提示信息
    	);

    	$("#commentForm").validate({
    		rules: {
    			username: {
    				required: true,
    				minlength: 2
    			},
    			email: {
    				required: true,
    				email: true
    			},
    			url:"url",
    			comment: "required",
    			valcode: {
    				formula: "7+9"	
    			}
    		},
    		
    		messages: {
    			username: {
    				required: '请输入姓名',
    				minlength: '请至少输入两个字符'
    			},
    			email: {
    				required: '请输入电子邮件',
    				email: '请检查电子邮件的格式'
    			},
    			url: '请检查网址的格式',
    			comment: '请输入您的评论'
    		},	
    		
    		errorElement: "em",				//用来创建错误提示信息标签
    		success: function(label) {			//验证成功后的执行的回调函数
    			//label指向上面那个错误提示信息标签em
    			label.text(" ")				//清空错误提示消息
    				.addClass("success");	//加上自定义的success类
    		}


    	  });

      });


    
    var flag2=false;
    function isValidMail() {            

    	　　var email = document.getElementById("signup_email").value;            

    	　　var Regex = /^(?:\w+\.?)*\w+@(?:\w+\.)*\w+$/;            

    	　　if (Regex.test(email)){  
        	
			    		$.ajax({
			 			   type: "POST",
			 			   url: "login!validEmail.action",
			 			   data: {email:email},
			 			   async: false,
			 			   success: function(msg){
			 				  // alert(msg);
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
    	　　//alert(true);  
    		//return true;             

    	　　}            
    	　　else {                
    	　　if (email == "") {                    

    	　//alert("请输入电子邮件地址！！");  
    	  $("#usernameMess").html("您好，请输入电子邮件地址！!");                   
    	　　return false;                
    	　　}                

    	　　else {                    

    	　　//alert("您好，你输入的邮箱地址格式不正确，请重新输入；");    
    	 	$("#message").css("display","block");
    		$("#usernameMess").html("您好，你输入的邮箱地址格式不正确，请重新输入!");                

    	    //document.getElementById("signup_email").value = "";                    

    	　　return false;                

    	　　　　}            

    	　　}        

    	} 
    var flag1=false;
	function validUsername(){
		//alert(1234);
		var username=$("#signup_name").val();
		//alert("username="+username);
		if(username==null||username==""||username==undefined){
			
			$("#message").css("display","block");
			//alert(1111);
			$("#usernameMess").html("您好,用户名不能为空,请输入用户名!");
			flag1=false;
			return "";
		}
		$("#message").css("display","none");
		$.ajax({
			   type: "POST",
			   url: "login!validUsername.action",
			   data: {username:username},
			   async: false,
			   success: function(msg){
				   //alert(msg);
				   if(msg==""||msg==null||msg==undefined){
					   //alert(msg);
					   alert("保存失败!");
					   flag1=false;
					   //return false;
				   }else if("用户名已经存在"==msg){
					  
					  $("#message").css("display","block");
					  $("#usernameMess").html("用户名已经存在,请重新输入用户名!");
					  // alert("nihao");
					  // $("#u_mess").html("ff");
					  flag1=false;

					   return ;
					   }
				   flag1=true;
				  // return true;
					//alert("保存成功!");
					//window.location.href="<%=request.getContextPath() %>/redirectUrl.jsp";
			   }
		});
		} 


	 var result=true;
	    function signUp(){
	        //alert(1111);
	    	var username=$("#signup_name").val();
	    	var email=$("#signup_email").val();
			var pwd=$("#signup_password").val();
			validUsername();
			//alert("flag1=="+flag1);
			if(flag1){
				isValidMail();
				//alert("flag2==="+flag2);
				if(flag2){
					if(pwd==null||pwd==""||pwd==undefined){
						//alert("请输入密码!");
						$("#message").css("display","block");
						$("#usernameMess").text("请输入密码!"); 
						return ;
					}else{
						var c_password = $("#pwd").val();
		    			 if(pwd!=c_password){
		    				 $("#message").css("display","block");
		    				$("#usernameMess").text("两次密码必须相同~!"); 
				    	 	return ;
			    	 	}
						}
				}else{
					return;
				}
			}else{
				return ;
			}
			//alert("go ");
			//alert(234);
			//alert(username);
			/*
			if(username==null||username==""||username==undefined){
			 $("#message").css("display","block");
			 $("#usernameMess").text("请输入用户名!!");  
			//alert("请输入用户名!");
			return ;
		}
		$("#message").css("display","none");
			*/
			
			/*
			if(email==null||email==""||email==undefined){
			//alert("请输入邮箱!");
			$("#message").css("display","block");
			$("#usernameMess").text("请输入邮箱!!aaa"); 
			return ;
		}
		$("#message").css("display","none");
			*/

			/*
			var fg=isValidMail();
			if(!fg){
				$("#usernameMess").text("您好，你输入的邮箱地址格式不正确ss，请重新输入!");
				return ;
			}
			if(pwd==null||pwd==""||pwd==undefined){
				//alert("请输入密码!");
				$("#usernameMess").text("请输入密码!"); 
				return ;
			}
			*/
			
			
			
			
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
						//alert("保存成功!");
						window.location.href="<%=request.getContextPath() %>/redirectUrl.jsp";
				   }
			});
			
			
			
		
	        }
    </script>
</head>
<body class="ng-cloak" data-ng-cloak>
<header id="header">
    <!--[if lte IE 9]>
    <div id="warning_info" class="text-warning fade in mb_0">
        <button data-dismiss="alert" class="close" type="button">×</button>
        <strong>您正在使用低版本浏览器，</strong> 在本页面的显示效果可能有差异。
        建议您升级到
        <a href="http://www.google.cn/intl/zh-CN/chrome/" target="_blank">Chrome</a>
        或以下浏览器：
        <a href="www.mozilla.org/en-US/firefox/‎" target="_blank">Firefox</a> /
        <a href="http://www.apple.com.cn/safari/" target="_blank">Safari</a> /
        <a href="http://www.opera.com/" target="_blank">Opera</a> /
        <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie" target="_blank">
            Internet Explorer 10</a>
    </div>
    <![endif]-->

    <nav id="header_outer" class="navbar navbar-inverse navbar-default navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-header-collapse"
                    wt-tracker="Header|Collapse|Toggle Navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a id="header_logo" class="navbar-brand"
               wt-tracker="Header|Logo|Goto Index"
               href="/" title="Worktile">TFY-BLOG</a>
        </div>
        <div class="collapse navbar-collapse navbar-header-collapse">

            <ul id="header_menu" class="nav navbar-nav">
                <li>
                <a wt-tracker="Header|Menu|Goto Index" href="<%=request.getContextPath() %>/index.jsp">首页</a>
                </li>
                <li>
                <a wt-tracker="Header|Menu|Goto Tour" href="/tour">功能特性</a>
                </li>
                <li>
                <a wt-tracker="Header|Menu|Goto Plan" href="/plan">付费方案</a>
                </li>
                <li>
                <a wt-tracker="Header|Menu|Goto Plan" href="/mobile">移动版</a>
                </li>
                <li>
                <a wt-tracker="Header|Menu|Goto Blog" href="/blog">官方博客</a>
                </li>
            </ul>

            <ul class="nav navbar-nav navbar-right" ng-controller="user_ctrl"
            id="header_me">
                <li class="divider-vertical hidden-xs"></li>
                
                <li>
                    <a class="mr_15" wt-tracker="Header|Menu|Goto Signin" href="<%=request.getContextPath() %>/login.jsp">登录</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/signup.jsp" wt-tracker="Header|Menu|Goto Apply">注册</a>
                </li>
                
            </ul>
        </div>
</nav>



</header>
<div id="wrap-all"><div id="main" class="inner">
<div class="other-warp" data-ng-controller="user_signup_ctrl">
    <div data-minheight="58" class="single-panel clearfix">
        <div class="single-panel-inner middle">
            <div class="single-panel-header">
                <h3>注册新用户</h3>
            </div>
            <div class="single-panel-body">
                <div class="single-panel-section" ng-show="show_signup">
                    <form  name="register_form" id="commentForm" novalidate class="form-horizontal wt-form">
                        <div class="form-group">
                            <label class="col-xs-2 control-label">用户名：</label>

                            <div class="col-xs-10">
                                <input id="signup_name" class="form-control" type="text" placeholder="由字母、数字、下划线组成，以字母开头"
                                       name="signup_name" ng-model="signup_name" onblur="validUsername2();"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-2 control-label">邮箱：</label>

                            <div class="col-xs-10">
                                <input id="signup_email" class="form-control" type="email" placeholder="输入常用邮箱"
                                       name="signup_email" ng-model="signup_email" required  onblur="isValidMail2();"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-2 control-label">密码：</label>

                            <div class="col-xs-10">
                                <input id="signup_password" class="form-control" type="password" placeholder="最小长度6位"
                                       name="signup_password" ng-model="signup_password" ng-minlength="6"
                                       required/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-2 control-label">重复密码：</label>

                            <div class="col-xs-10">
                                <input id="pwd" class="form-control" type="password" placeholder="再输入一次"
                                       name="repeated_password" wt-repeat-password="signup_password"
                                       ng-model="repeated_password"/>
                            </div>
                        </div>
                        
                        
                        
                          <span>
										${MESSAGE}
									</span>
                        <div id="message" class="form-group" style="display: none">
                            <label class="col-xs-2 control-label"></label>

                            <div class="col-xs-10">
                                <div class="alert alert-danger">
                                    <i class="icon-remove-sign mr_5"></i> {{register_form.$errors[0]}}
                                    <span id="usernameMess"></span>
                          			<span id="emial_mess"></span>
                          			
                                    
                                </div>
                                 
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-xs-2"></div>
                            <div class="col-xs-10">
                                <button wt-form-submit="js_submit(register_form)" type="button" class="btn btn-success"
                                        data-loading-text="注册中..." loading-status="is_registering" onclick="signUp();">注册新用户
                                </button>
                            </div>
                        </div>
                    </form>
                    
                    
                    <!--  
                    
                     <form class="cmxform" id="commentForm" method="get" action="">
 <fieldset>
   <legend>一个简单的验证带验证提示的评论例子</legend>
   <p>
     <label for="cusername">姓名</label>
     <em>*</em><input id="cusername" name="username" size="25" />
   </p>
   <p>
     <label for="cemail">电子邮件</label>
     <em>*</em><input id="cemail" name="email" size="25"  />
   </p>
   <p>
     <label for="curl">网址</label>
     <em>  </em><input id="curl" name="url" size="25"  value="" />
   </p>
   <p>
     <label for="ccomment">你的评论</label>
     <em>*</em><textarea id="ccomment" name="comment" cols="22"></textarea>
   </p>
   <p>
     <label for="cvalcode">验证码</label>
     <input id="cvalcode" name="valcode" size="25"  value="" />=7+9
   </p>
   <p>
     <input class="submit" type="submit" value="提交"/>
   </p>
 </fieldset>
 </form>
 
 -->
 
                    
                    
                    
                </div>

                <div class="success-panel" ng-show="signup_success">
                    <i class="imgicon-success"></i><br/><br/>
                    <span>恭喜你成功注册TFY-BLOG！</span><br/>
                    <a href="javascript:;" wt-tracker="Signup Page|Success|Goto Team" ng-click="js_goto_team()">点击进入团队首页</a>
                </div>
            </div>

            <div class="single-panel-footer" ng-hide="signup_success">
                <div class="pull-right">点击注册，表明你同意我们的<a href="/terms" wt-tracker="Signup Page|Panel Footer|Goto Terms">服务条款</a></div></div>
        </div>
    </div>
</div>
</div></div>

<script type="text/javascript">
    window.wt = {};

</script>


<script src="<%=request.getContextPath() %>/js/all.js"></script>

<script type="text/javascript">
    angular.element(document).ready(function() {
        initOuterApp();
        angular.bootstrap(document, ['wt']);
    });
</script>

</body>
</html>

