<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>
浏览文章</title>
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
<script type="text/javascript" src="<%=request.getContextPath() %>/ckeditor/ckeditor.js"></script>
<link href="<%=request.getContextPath() %>/css/ssh.css" rel="stylesheet">
<style type="text/css">
.panel_head {
background: url(images/tit_bg.gif) repeat-x top;
color: #333;
font: bold 12px/30px Arial;
text-indent: 5px;
}
.comment_body {
    line-height: 20px;
    margin-left: 50px;
    min-height: 35px;
    padding: 5px;
}
.comment_userface {
    float: left;
    margin: 4px;
}
.comment_head, .commentform_title {
    background: none repeat scroll 0 0 #F1F1F1;
    border-radius: 5px;
    clear: both;
    color: #888888;
    padding: 1px 4px;
}
.left {
    display: block;
    float: left;
    width: 80px;
}
li {
    list-style-type: none;
    margin: 0;
}
.commentform ul {
    clear: both;
    font: 12px/24px Arial,Helvetica,sans-serif;
    margin: 0 20px 5px;
}
.commentform .left {
    display: block;
    float: left;
    width: 80px;
}
.commentform .right {
    display: block;
    margin-left: 90px;
}
.commentform textarea {
    border: 1px solid #DDDDDD;
    color: #555555;
    font: 14px/24px Arial,Helvetica,sans-serif;
    padding: 5px;
}
.commentform .comment_btn {
    background: url("images/submit_bg.gif") no-repeat scroll 0 0 rgba(0, 0, 0, 0);
    border: medium none;
    color: #666666;
    font: 12px/26px Arial,Helvetica,sans-serif;
    height: 26px;
    margin: 10px 0 0 90px;
    text-align: center;
    width: 85px;
}
a.cmt_btn {
    background-position: left top;
    background-repeat: no-repeat;
    display: inline-block;
    height: 16px;
    margin-bottom: -5px;
    overflow: hidden;
    padding: 1px;
    text-indent: -2000px;
    width: 16px;
}
a.cmt_btn:hover {
    border: 1px solid #CCCCCC;
    padding: 0;
}
a.reply {
    background-image: url("images/ico_reply.png");
}
a.quote {
    background-image: url("images/ico_quote.png");
}
a.report {
    background-image: url("images/ico_report.png");
}
a.delete {
    background-image: url("images/ico_del.png");
}
.article_manage {
    color: #999999;
    font: 12px/24px Arial;
    padding: 5px 0;
    text-align: right;
}
.article_manage span {
    margin: 0 5px;
}
.article_manage .link_postdate {
    margin: 0 5px 0 0;
}
.article_manage .link_view {
    background: url("images/ico_view.png") no-repeat scroll left center rgba(0, 0, 0, 0);
    padding: 0 0 0 14px;
}
.article_manage .link_comments {
    background: url("images/ico_comm.png") no-repeat scroll left center rgba(0, 0, 0, 0);
    padding: 0 0 0 14px;
}
.article_manage .link_categories {
    float: left;
}
</style>
<script type="text/javascript">
$(document).ready(init);
function saveUserpw(id,password){
	var newPassword=document.getElementById('password').value;
	$.ajax({
		   type: "POST",
		   url: "user!saveUserpw.action",
		   data:{id:id,password:newPassword},
		   async: false,
		   success: function(msg){
					alert("保存成功!");
		   }
	});
	window.parent.document.getElementById('updatediv').style.display=(window.parent.document.getElementById('updatediv').style.display=='none')?'':'none';
}
function validatePassword(){
	var pwd=$("#password").val();
	var confirmPwd=$("#Confirmpassword").val();
	if(pwd!=undefined&&confirmPwd!=undefined&&pwd!=null&&confirmPwd!=null&&pwd!=confirmPwd){
		alert("两次输入密码不一致,请重新输入!");
		$("#password").val("");
		$("#Confirmpassword").val("");
	}
}
function revertArticle(id){
	var comment_content=$("#comment_content").val();
	 if(comment_content==""||comment_content==null||comment_content==undefined){
		 alert(" 评论内容没有填写!");
		 return "";
	 }
	//alert(" comment_content="+comment_content+"  articles_id="+id);
	$.ajax({
		   type: "POST",
		   url: "article!revertArticle.action",
		   data: {articles_id:id,comment_content:comment_content},
		   async: false,
		   success: function(msg){
			   //alert(msg);
			   if(msg==""||msg==null||msg==undefined){
				   //alert(msg);
				   alert("保存失败!");
				   return "";
			   }
				//alert("保存成功!");
				window.location.href="article!lookArticle.action?id="+id;
		   }
	});
}
function init(){
	$(".comment_item").mouseover(function () {
	        $(".comment_manage", $(this)).eq(0).show();
	    }).mouseout(function () {
	        $(".comment_manage", $(this)).eq(0).hide();
	    });
	 //添加按钮事件
    setBtnEvent();
}
//引用评论
function quoteComment(commentId, list) {
    var comment = getComment(commentId, list);
    var content = comment.Content;
    if (comment.Content.length > 50) {
        content = comment.Content.substring(0, 50) + "...";
    }
    editor.val("[quote=" + (comment.UserName == null ? "游客" : comment.UserName) + "]" + content + "[/quote]\r\n");
}
//回复评论
function replyComment(commentId, list) {
    var comment = getComment(commentId, list);
    editor.val('[reply]' + comment.UserName + "[/reply]\r\n");
    $("#comment_replyId").val(commentId);
}
//举报评论
function reportComment(commentId, e) {
    report(commentId, 3, e);
}
//删除评论
function deleteComment(commentId) {
    if (!confirm("你确定要删除这篇评论吗？")) return;

    var delUrl = blog_address + "/comment/delete?commentid=" + commentId + "&filename=" + fileName;
    $.get(delUrl, function (data) {
        if (data.result == 1) {
            $("#comment_item_" + commentId).hide().remove();
        } else {
            alert("你没有删除该评论的权限！");
        }
    });
}

function setBtnEvent() {
    $("#load_comments").click(function () {
        var page = $(this).attr("page");
        loadList(page);
    });

    //评论按钮点击
    $(".comment_head a").click(function () {
        var action = $(this).attr("href");

        action = action.substring(action.lastIndexOf('#'));

        var commentId = $(this).parent().attr("commentid");
        switch (action) {
            case "#reply":
                if (currentUserName) {
                    commentId = $(".comment_manage", $(this).parent()).attr("commentid");
                    replyComment(commentId, list);
                    setEditorFocus();
                }
                return true;
            case "#quote":
                if (currentUserName) {
                    quoteComment(commentId, list);
                    setEditorFocus();
                }
                return true;
            case "#report":
                reportComment(commentId, this);
                break;
            case "#delete":
                deleteComment(commentId);
                break;
            default:
                return true;
        }
        return false;
    });

    $(".comment_item").mouseover(function () {
        $(".comment_manage", $(this)).eq(0).show();
    }).mouseout(function () {
        $(".comment_manage", $(this)).eq(0).hide();
    });
}
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
				    			   		alert(msg);
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
</script>
<!-- Fav and touch icons -->
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="bootstrap-2.3.2/docs/assets/ico/apple-touch-icon-144-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="bootstrap-2.3.2/docs/assets/ico/apple-touch-icon-114-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="bootstrap-2.3.2/docs/assets/ico/apple-touch-icon-72-precomposed.png">
		<link rel="apple-touch-icon-precomposed" href="bootstrap-2.3.2/docs/assets/ico/apple-touch-icon-57-precomposed.png">
		<link rel="shortcut icon" href="bootstrap-2.3.2/docs/assets/ico/favicon.png">
</head>
<body>
<%@include file="/common/header.jsp" %>

    <div class="container-fluid" id="left">
      <div class="row-fluid">
        <%@include file="/common/menu.jsp" %>
        <!-- DIY -->
        <div class="span9"  id="rightMain" >
       			 <div>
				原创
				</div>
			<p class="subtit">${article.title}&nbsp;&nbsp;</p>
			<div class="article_manage">
			<span class="link_postdate">${article.recordTime}</span>
			<span class="link_view" title="阅读次数">${article.dotNumber}人阅读</span>
			<span class="link_comments" title="评论次数">
			<a onclick="_gaq.push(['_trackEvent','function', 'onclick', 'blog_articles_pinglun'])" href="#comments">评论</a>
			(${article.revertNumber})
			</span>
			<span class="link_collect">
			<a title="收藏" onclick="javascript:_gaq.push(['_trackEvent','function', 'onclick', 'blog_articles_shoucang']);collectArticle('as','${article.id}');return false;" href="javascript:void(0);">收藏</a>
			</span>
			<span class="link_edit">
			<a title="编辑" href="article!toUpdateUI.action?id=${article.id}">编辑</a>
			</span>
			<span class="link_delete">
			<a title="删除" onclick="javascript:delArticle('${article.id}');return false;" href="javascript:void(0);">删除</a>
			</span>
			</div>
			 	<div>
				文章内容
				</div>
				<p class="subtit"><span id="autosave_note">${article.content}(hello world)</span></p>
				<div id="comment_title" class="panel_head">
					查看评论
				<c:if test="${revertList==null}">
				  <div>
				  暂无评论
				  </div>
				</c:if>
				<c:forEach items="${revertList}" varStatus="reverts" var="revert" >
				<dl  id="comment_item_3695183" class="comment_item comment_topic">
				<dt class="comment_head" floor="3">
				${reverts.count} 楼
				<span class="user">
				<a class="username" target="_blank" href="/tfy1332">${revert.revertName}</a>
				<span class="ptime"> ${revert.recordTime}发表</span>
				<a class="cmt_btn reply" title="回复" href="#reply">[回复]</a>
				<span class="comment_manage" username="tfy1332" commentid="3695433" style="display: none;">
				<a class="cmt_btn quote" title="引用" href="#quote">[引用]</a>
				<a class="cmt_btn report" title="举报" href="#report">[举报]</a>
				<a class="cmt_btn delete" title="删除" href="#delete">[删除]</a>
				</span>
				</span>
				</dt>
				
				<dd class="comment_userface">
				<a target="_blank" href="user!showUserBasicInfo?id=<%= session.getAttribute("userID")%>" >
				
				<c:if test="${revert.revertImage==null||revert.revertImage==''}">
					<img width="40" height="40" src="<%=request.getContextPath()%>/translator/assets/avatars/profile-pic.jpg" alt="Alex's Avatar" 					class="editable img-responsive editable-click editable-empty" id="avatar" ></img>
				</c:if>
				
				<c:if test="${revert.revertImage != '' && revert.revertImage !=null}">
					<img width="40" height="40" src="http://tfyworld.qiniudn.com/${revert.revertImage}" alt="Alex's Avatar" class="editable img-						responsive editable-click editable-empty" id="avatar" ></img>
				</c:if>	
				
				<!-- 
				<img width="40" height="40" src="images/3_tfy1332.gif">
				 
			    -->
			    
				</a>
				</dd>
				
				
				<dd>${revert.revertName}</dd>
				<dd class="comment_body">${revert.revertContent}</dd>
				</dl>
				</c:forEach>
				</div>
				<div class="clear">
					<div class="commentform">
					<div class="panel_head">发表评论</div>
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
					<c:if test="${username==null ||username==''}">
					  <div>
					  	<p style="text-align:center; margin-top:30px;margin-bottom:0px;">
						<a style="background-color:white;" href="login!loginUI.action">
						<img style="vertical-align:middle; margin-right: 10px;" src="<%=request.getContextPath() %>/images/login_icon.png">
						</a>
						<a href="login!loginUI.action"> 您还没有登录,请您登录后再发表评论 </a>
						</p>
					  </div>
					</c:if>
					<div <c:if test="${username==null||username==''}">style="display: none;"</c:if>>
					<ul>
					<li class="left">用 户 名：</li>
					<li class="right"><%= (session.getAttribute( "user" )==null)?"请先登录":session.getAttribute( "user" ) %></li>
					</ul>
					<ul>
					<li class="left">评论内容：</li>
					<li class="right" style="position:relative;">
					<div id="ubbtools">
					</div>
					<textarea id="comment_content" class="comment_content" style="width: 400px; height: 200px;" name="comment_content"></textarea>
					</li>
					</ul>
					<ul>
					<input id="comment_replyId" type="hidden" name="comment_replyId">
					<input id="comment_userId" type="hidden" value="521203" name="comment_userId">
					<input id="commentId" type="hidden" value="" name="commentId">
					<input class="comment_btn" type="submit" value="提交"  onclick="revertArticle('${article.id}');">
					<span id="tip_comment" style="color: Red; display: none;">还能输入1000个字符</span>
					</ul>
					</div>
					</div>
					</div>
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
			<!-- DIY -->
      </div><!--/row-->
      <%@include file="/common/footer.jsp" %>
    </div>
</body>
</html>