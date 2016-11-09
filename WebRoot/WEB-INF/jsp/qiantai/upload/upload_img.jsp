<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/img.upload.js"></script>

<div style="width: auto;height: auto;vertical-align: middle;" align="center">
<form id="uploadImg" action="${pageContext.request.contextPath}/upload/saveImg.htm" method="POST" enctype="multipart/form-data" target="uploadImgFrame">
	<input type="hidden" name="callback" id="img_callback" value="img_callback"/>
	<iframe id="uploadImgFrame" name="uploadImgFrame" style="display: none;"></iframe>
	<table class="editTable">
		<tr>
			<td class="title" style="width:40%">选择图片文件：</td>
			<td class="content">
				<input id="fileid" name="imgFile" type="file" onchange="img_show(this,'preview');"/>
			</td>
			<td style="padding-left: 20px; "><input type="button" onclick="submit_img();" value="提交"/></td>
		</tr>
	</table>
</form>
<div id="preview" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale); width:auto;height:auto;border:solid 1px black;"></div>
</div>
<script>
function submit_img(){
	var form = $('#uploadImg');
	$.messager.progress();
	form.submit();
}
function img_callback(result){
	alert("result=="+result);
	var data = JSON.parse(result);
	alert("data=="+data);
	$.messager.progress('close');
	if(imgCallback) imgCallback(data);
}
</script>