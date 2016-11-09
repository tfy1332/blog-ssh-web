<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户信息列表(EasyUI)</title>
<script src="<%=request.getContextPath() %>/js/jquery.js"></script>
<!--
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.6/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.6/datagrid-detailview.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.6/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/json2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/util.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.blockUI.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/jquery-easyui-1.3.6/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/jquery-easyui-1.3.6/themes/icon.css" type="text/css"></link>
</head>
<body>
<div id="uploadUserDialog"></div>
<div class="menuBtn">
	<form id="user_search" method="post" style="padding: 5px;"><%--
	
		分类:<select name="category" class="easyui-combobox" data-options="panelHeight:'auto',width:100,editable:false">
							<option value="">所有应用</option>
							<option value="1">热门应用</option>
							<option value="2">游戏</option>
						</select>
	           操作系统:<select name="platType" class="easyui-combobox" data-options="panelHeight:'auto',width:100,editable:false">
							<option value="">所有系统</option>
							<option value="0">IOS</option>
							<option value="1">安卓</option>
							<option value="2">IOS和安卓</option>
						</select>
		 上线状态:<select name="online" class="easyui-combobox" data-options="panelHeight:'auto',width:100,editable:false">
			<option value="">全部</option>
			<option value="1">上线</option>
			<option value="0">下线</option>
		</select>
		应用名称：<input type="text" name="name"/>
 		<a href="javascript:void()" class="easyui-linkbutton" iconCls="icon-search" onclick="user_search();">搜索</a>
 		
	--%></form>
</div>

<div id="user_grid"></div>

<div id="user_editDlg" class="easyui-dialog" align="center">
	<div id="user_editLayout" class="easyui-layout" data-options="fit:true">
		<div data-options="region:'center'">
		<br/>
		<form id="user_editForm" action="/user/save.htm" method="post" enctype="multipart/form-data">
			<input type="hidden" name="id" />
			<table class="editTable">
				<tr>
					<td class="title">用户名:</td>
					<td class="content">
						<input name="username" class="easyui-validatebox" required="true"/>
					</td>
				</tr>
				<tr>
					<td class="title">密码:</td>
					<td class="content">
						<input name="password" class="easyui-validatebox" required="true"/>
					</td>
				</tr>
				<tr>
					<td class="title">状态:</td>
					<td class="content">
						<select name="enable" id="enable" class="easyui-combobox" data-options="panelHeight:'auto',required:true,width:100,editable:false">
							<option value="true">启用</option>
							<option value="false">禁用</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="title">邮箱:</td>
					<td class="content">
						<input name="email" class="easyui-validatebox" required="true"/>
					</td>
				</tr>
				<tr>
					<td class="title">头像:</td>
					<td class="content">
						<a class="easyui-linkbutton" data-options="iconCls:'icon-add'" onclick="upload_img_user('user_image');">上传图片</a>
						<div id="user_image"></div>
						<input type="hidden" name="image"/>
					</td>
				</tr>
			</table>
		</form>
		</div>
	</div>
</div>

<div id="user_showObj" class="easyui-dialog" title="查看"
    data-options="resizable:true,modal:true,closed:true,width: 900,height: 700,left: 100,top:20">
    <table style="font-size: 15px;">
    	<tr>
    		<td>应用名称：</td>
    		<td id="mobileAppShowName"></td>
    	</tr>
    	<tr>
    		<td>应用图标：</td>
    		<td id="mobileAppShowIcon"></td>
    	</tr>
    	<tr>
    		<td>顺序号：</td>
    		<td id="mobileAppShowOrderNum"></td>
    	</tr>
    	<tr>
    		<td>介绍：</td>
    		<td>
    			<textarea rows="5" cols="50" id="mobileAppShowDescription" readonly="readonly"></textarea>
    		</td>
    	</tr>
    	<tr>
    		<td>上线：</td>
    		<td id="mobileAppShowOnline"></td>
    	</tr>
    	<tr>
    		<td>类型：</td>
    		<td id="mobileAppShowCategory"></td>
    	</tr>
    	<tr>
    		<td>发布平台：</td>
    		<td id="mobileAppShowPlatType"></td>
    	</tr>
    	<tr>
    		<td>二维码：</td>
    		<td id="mobileAppShowQrcodeImg"></td>
    	</tr>
    	<tr>
    		<td>截屏图片：</td>
    		<td>&nbsp;(建议尺寸640x960或320x480)</td>
    	</tr>
    	<tr>
    		<td>图片1：</td>
    		<td id="mobileAppShowPic1"></td>
    	</tr>
    	<tr>
    		<td>图片2：</td>
    		<td id="mobileAppShowPic2"></td>
    	</tr>
    	<tr>
    		<td>图片3：</td>
    		<td id="mobileAppShowPic3"></td>
    	</tr>
    	<tr>
    		<td>图片4：</td>
    		<td id="mobileAppShowPic4"></td>
    	</tr>
    	<tr>
    		<td>图片5：</td>
    		<td id="mobileAppShowPic5"></td>
    	</tr>
    </table>
</div>

<script type="text/javascript">
$(function(){	
	$('#user_grid').datagrid({
	    rownumbers: true,
        title:'用户列表',
        animate: true,
        collapsible: true,
        fitColumns: true,
        pagination:true,
        singleSelect:true,
        sortName:'id',
        sortOrder:'desc',
        url: '${pageContext.request.contextPath}/user!showAllUserForPageAdminEasyUI.action',
        loader: function (param, success, error){
        	var that = $(this);  
            var opts = that.datagrid('options');
            if (!opts.url) {  
                return false;  
            }
            var searchParam = $('#user_search').form('getData');
        	param.others = searchParam;
        	$.toPost(opts.url, param, success, error);
        },
        columns: [[
            {field:'id',title:'ID',width:25},
            {field:'username',title:'用户名',width:25},
            {field:'image',title:'头像',width:25,formatter:function(value){
            	if(value.length>0){
					return '<img src="'+imagePath+value+'" width="100px" height="100px" style="padding:5px;"/>';
       			}
           	}},
            {field:'_operate',title:'操作',width:25,formatter:operaterFunction}
            ]],
          toolbar: [{
          	text:'新建用户',
      		iconCls: 'icon-add',
      		handler: function(){
      			user_addObj();
      		}
      	  }]
	});
	$('#uploadUserDialog').dialog({
		title: '上传图片',
		width: 400,
		height: 200,
		closed: true,
		cache: false,
		href: '${pageContext.request.contextPath}/upload/show.htm',
		modal: true
	});
	
	
	$('#user_editDlg').dialog({
		width: 330,
		height: 300,
		left: 300,
		top:120,
		closed:true,
		modal:true,
		resizable:true,
		buttons:[{
			text:'保存',
			handler:function(){
				if(!$('#user_editForm').form('validate')) return;
				var form = $('#user_editForm');
				$.toPgSubmit(form, function(result){
					if(result.result == '1'){
						$.messager.alert('提示','操作成功!','info');
						$('#user_editDlg').dialog('close');
						$('#user_grid').datagrid('reload');
					}else if(result.message!=""){
						$.messager.alert('提示',result.message,'info');
					}else{
						$.messager.alert('提示','操作失败!','info');
					}
				});
			}
		},{
			text:'取消',
			handler:function(){
				$('#user_editDlg').dialog('close');
			}
		}]
	});
	$('#user_editLayout').layout();
});
//添加
function  user_addObj(){
	$.parser.parse('#user_editForm');
	$('#user_editForm').form('clear');
	$("#enable").combobox("select","true");
	$("#user_editDlg").dialog('open').dialog('setTitle','新建用户');
}
//查看
function user_showObj(value,row,index){
	$("#mobileAppShowIcon").html('');
	$("#mobileAppShowQrcodeImg").html('');
	$("#mobileAppShowPic1").html('');
	$("#mobileAppShowPic2").html('');
	$("#mobileAppShowPic3").html('');
	$("#mobileAppShowPic4").html('');
	$("#mobileAppShowPic5").html('');
	$('#user_grid').datagrid('selectRow',index);
	var row = $('#user_grid').datagrid('getSelected');
	if(row){
		$("#mobileAppShowName").html(row.name);
		html_show_img_look('mobileAppShowIcon',row.icon);
		$("#mobileAppShowOrderNum").html(row.orderNum);
		$("#mobileAppShowDescription").html(row.description);
		$("#mobileAppShowOnline").html(row.onlineCN);
		$("#mobileAppShowCategory").html(row.categoryCN);
		$("#mobileAppShowPlatType").html(row.platTypeCN);
		html_show_img_look('mobileAppShowQrcodeImg',row.qrcodeImg);
		html_show_img_look('mobileAppShowPic1',row.pic1);
		html_show_img_look('mobileAppShowPic2',row.pic2);
		html_show_img_look('mobileAppShowPic3',row.pic3);
		html_show_img_look('mobileAppShowPic4',row.pic4);
		html_show_img_look('mobileAppShowPic5',row.pic5);
		$('#user_showObj').dialog('open');
	}
}
//编辑
function user_editObj(value,row,index){
	$('#user_grid').datagrid('selectRow',index);
	var row = $('#user_grid').datagrid('getSelected');
	if(row){
		$.parser.parse('#user_editForm');
		$('#user_editForm').form('clear');
		$('#user_icon_show').html('');
		$("#user_qrcodeImg_show").html('');
		$("#user_pic1_show").html('');
		$("#user_pic2_show").html('');
		$("#user_pic3_show").html('');
		$("#user_pic4_show").html('');
		$("#user_pic5_show").html('');
		$('#user_editForm').form('load',row);
		html_show_img('user_icon_show',row.icon);
		html_show_img('user_qrcodeImg_show',row.qrcodeImg);
		html_show_img('user_pic1_show',row.pic1);
		html_show_img('user_pic2_show',row.pic2);
		html_show_img('user_pic3_show',row.pic3);
		html_show_img('user_pic4_show',row.pic4);
		html_show_img('user_pic5_show',row.pic5);
		$("#user_editDlg").dialog('open').dialog('setTitle','编辑');
	}
}
//删除
function user_delObj(value,row,index){
	$('#user_grid').datagrid('selectRow',index);
	var row = $('#user_grid').datagrid('getSelected');
	if(row){
		$.messager.confirm('确认','确认要删除所选信息么?',function(r){
	        if (r){
				$.toPgPost("${pageContext.request.contextPath}/mobileApp/del.htm",{id:row.id},function(data){
					if(data && data.result){
						$.messager.alert('提示','删除成功!','info');
						$('#user_grid').datagrid('reload');
					}else{ $.messager.alert('提示','删除失败!','info'); }
				});
	        }
	    });
	}
}
//搜索
function user_search(){
    $('#user_grid').datagrid('reload',{pageNumber:1});
	
}
/**
 * 格式化“操作”列
 */
function operaterFunction(value,row,index){
 	return '　<a onclick="user_showObj(\''+value+'\',\''+row+'\',\''+index+'\')" href="javascript:void(0)"><span style="color: #0000FF;">查看</span></a>'
 	+ '　<a onclick="user_editObj(\''+value+'\',\''+row+'\',\''+index+'\')" href="javascript:void(0)"><span style="color: #0000FF;">编辑</span></a>　'
 	+'<a onclick="user_delObj(\''+value+'\',\''+row+'\',\''+index+'\')" href="javascript:void(0)"><span style="color: #0000FF;">删除</span></a>';
}

function upload_img_user(divName){
	$("#uploadUserDialog").dialog('open');
}

function page123(data){
	alert(data);
}

</script>
</body>
</html>