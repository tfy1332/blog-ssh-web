<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=path %>/ckeditor/ckeditor.js"></script>

</head>
<body>
<%
String content=request.getParameter("editor1");
if(content!=null&&!content.equals("")){
out.println(content);
}
%>
<form name="testForm" method="post" action="<%=path %>/index.jsp">
<textarea id="TextArea1" cols="20" rows="2" class="ckeditor"></textarea>
<textarea  cols="80" id="editor1" name="editor1" rows="10">
在此添加内容 strewrtwret
</textarea>
<script type="text/javascript">
CKEDITOR.replace('TextArea1111');

</script>
<script type="text/javascript">
CKEDITOR.replace( 'editor11111',
{
 skin : 'kama',
 language : 'zh-cn'
 });
</script>
</form>
</body>
</html>