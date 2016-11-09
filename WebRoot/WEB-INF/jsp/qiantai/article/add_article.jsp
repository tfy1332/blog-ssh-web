<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>
发表文章</title>
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

<link href="<%=request.getContextPath() %>/ckeditor/plugins/codesnippet/lib/highlight/styles/default.css" rel="stylesheet">

<style type="text/css">
</style>
<script type="text/javascript">
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
function saveArticle(){
	
	
	var txtTitle=$("#txtTitle").val();
	var selType=$("#selType").val();
	//alert(selType);
	var ckeditContent_html=CKEDITOR.instances.ckedit.getData();
	var ckeditContent=removeHTMLTag(ckeditContent_html);
	var articleType=$('input[name="radChl"]:checked').val();
	//alert(articleType);
	if(txtTitle==null||txtTitle==""||txtTitle==undefined){
		alert("请输入文章标题!");
		return "";
	}
	if(selType=="0"||selType==null||selType==""||selType==undefined){
		alert("请选择文章类型!");
		return "";
	}
	if(ckeditContent==null||ckeditContent==""||ckeditContent==undefined){
		alert("请输入文章内容!");
		return "";
	}
	if(articleType==null||articleType==""||articleType==undefined){
		alert("请输入文章分类!");
		return "";
	}
	//alert(" txtTitle="+txtTitle+" selType="+selType+" ckeditContent="+ckeditContent+" articleType="+articleType);
	$.ajax({
		   type: "POST",
		   url: "article!saveArticle.action",
		   data: {title:txtTitle,selType:selType,content:ckeditContent,content_html:ckeditContent_html,articleType:articleType},
		   async: false,
		   success: function(msg){
			   if(msg==""||msg==null||msg==undefined||msg=="fail"){
				   //alert(msg);
				   alert("保存失败!");
				   return "";
			   }
				alert("保存成功!");
				window.location.href="article!showAllArticleForPageByUsername.action";
		   }
	});
}
function removeHTMLTag(str) {
    str = str.replace(/<\/?[^>]*>/g,''); //去除HTML tag
    str = str.replace(/[ | ]*\n/g,'\n'); //去除行尾空白
    //str = str.replace(/\n[\s| | ]*\r/g,'\n'); //去除多余空行
    str=str.replace(/&nbsp;/ig,'');//去掉&nbsp;
    return str;
}
</script>
</head>
<body>
<%@include file="/common/header.jsp" %>

    <div class="container-fluid" id="left">
      <div class="row-fluid">
        <%@include file="/common/menu.jsp" %>
        <!-- DIY -->
        <div class="span9"  id="rightMain" >
			<h1 align="center">发表文章!</h1>
			<p class="subtit">文章标题<span style="color: green; margin-left: 18px; display: none">尊重原创，请保证您的文章为原创作品</span></p>
				<div>
				<select id="selType"><option value="0">请选择</option><option value="1">原创</option><option value="2">转载</option><option value="4">翻译</option></select>
				<input type="text" id="txtTitle" style="width:560px; height:20px; float:left;" maxlength="100" />
				<span style="display:inline-block; padding:4px 0 0 10px;">*只有原创和翻译文章才能推荐到首页</span>
				</div>
				<p class="subtit">文章内容<span style="color:#ff9900;font-weight:normal;display:none;"></span><span id="autosave_note"></span></p>
				<div class="section">
				</div>
				<textarea id="ckedit" cols="20" rows="2" class="ckeditor"></textarea>
				<script type="text/javascript">
				CKEDITOR.replace( 'editor1',
				{
				 skin : 'kama',
				 language : 'zh-cn'
				 });
				</script>
				
				<div >
				<p class="subtit">文章分类（到分类首页）</p>
				<div class="radioBox channel">
				<input type='radio' name='radChl' id='radChl1' value='1' style="display: inline;"/><label for='radChl1' style="display: inline;">移动开发</label>
				<input type='radio' name='radChl' id='radChl2' value='14' style="display: inline;"/><label for='radChl2' style="display: inline;">Web前端</label>
				<input type='radio' name='radChl' id='radChl3' value='15' style="display: inline;"/><label for='radChl3' style="display: inline;">架构设计</label>
				<input type='radio' name='radChl' id='radChl4' value='16' style="display: inline;"/><label for='radChl4' style="display: inline;">编程语言</label>
				<input type='radio' name='radChl' id='radChl5' value='17' style="display: inline;"/><label for='radChl5' style="display: inline;">互联网</label>
				<input type='radio' name='radChl' id='radChl6' value='6' style="display: inline;"/><label for='radChl6' style="display: inline;">数据库</label>
				<input type='radio' name='radChl' id='radChl7' value='12' style="display: inline;"/><label for='radChl7' style="display: inline;">系统运维</label>
				<input type='radio' name='radChl' id='radChl8' value='2' style="display: inline;"/><label for='radChl8' style="display: inline;">云计算</label>
				<input type='radio' name='radChl' id='radChl9' value='3' style="display: inline;"/><label for='radChl9' style="display: inline;">研发管理</label>
				<input type='radio' name='radChl' id='radChl10' value='7' style="display: inline;"/><label for='radChl10' style="display: inline;">综合</label>
				<input type='radio' name='radChl' id='radChl11' value='4' style="display: inline;"/><label for='radChl11' style="display: inline;">Hadoop</label>
				</div>
				<p id="p_comment" class="subtit" style="display:none;">是否允许评论</p>
				<div id="d_comment" class="radioBox" style="display:none;">
				<input type="radio" name="radComment" id="radComment2" value="2" checked="checked" /><label for="radComment2">允许评论</label>
				<input type="radio" name="radComment" id="radComment1" value="1" /><label for="radComment1">禁止评论</label>
				</div>
				</div>
				<p></p>
				<p></p>
				<div class="btn_area_1" align="center">
				<input id="btnPublish" type="button" class="btn btn-primary" value="发表文章" title="保存并跳转" style="display: inline;" onclick="saveArticle();"/>
				<input id="btnDraft" type="button" class="btn btn-primary" value="立即保存" title="保存文章并留在当前页" style="display: inline;"/>
				<input id="btnCancel" type="button" class="btn btn-primary" value="舍弃" style="display: inline;"/>
				<span id="sp_note" class="savenote" style="display:none;"></span>
				</div>
				<div class="clear"></div>
				<p id="p_n" style="display:none;">提示：文章内容有<b>1</b>分钟的缓存，更改之后不会立即生效。</p>

			</div>
			<!-- DIY -->
      </div><!--/row-->
      <%@include file="/common/footer.jsp" %>
    </div>
</body>
</html>