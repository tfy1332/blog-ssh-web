function getContextPath(){
	return "/blog0.2";
}
//var imagePath = "http://microlmj.qiniudn.com/";//http://tfyworld.qiniudn.com/
//var tempPath = "http://tempdatas.qiniudn.com/";
var imagePath = "http://tfyworld.qiniudn.com/";
var tempPath = "http://tfytempdatas.qiniudn.com/";
function getImageServerPath(){
	return imagePath;
}
function myLoader(param, success, error){
	var that = $(this);  
    var opts = that.datagrid('options');
    if (!opts.url) {  
        return false;  
    }
   	$.toPost(opts.url, param, success, error);
}

function upload_img(callBack){
	alert(callBack);
	if($('#upload_img_dlg').length < 1) $('body').append('<div id="upload_img_dlg" ></div><script>var imgCallback;</script>');
	
	$('#upload_img_dlg').dialog({
		title:'上传图片',
		width: 660,
		height: 400,
		href:getContextPath()+'/upload!showForwardPage.action',//showForwardPage
		//href:getContextPath()+'/upload/show.htm',//showForwardPage
		left: (window_width-660)/2,
		top: (window_height-400)/2,
		modal:true
	});
	alert(222);
	imgCallback = function(data){
		alert("data==="+data);
		if(data && data.result == 1){
			$('#upload_img_dlg').dialog('close');
		}
		if(callBack) callBack(data);
	};
}

/**
 * 上传图片按钮触发函数
 */
function html_upload_img(id){
	alert(id);
	upload_img(function(data){
		alert(3333);
		if(data && data.result == 1){
			$('#'+id).html('<div><img src="'+tempPath+data.uri+'" value="'+data.uri+'"/>&nbsp;<span onclick="html_img_del(this);" style="cursor: pointer;font-size: 25px;">x</span></div>');
		}
	});
}

function html_img_del(id){
	$(id).parent().remove();
}

function html_show_img(id ,images){
	if(images && images.length > 0 ){
		$((images).split(',')).each(function(i,obj){
	    	$('#'+id).append('<div><img src="'+imagePath+obj+'" value="'+obj+'" />&nbsp;<span onclick="html_img_del(this);" style="cursor:pointer">X</span></div>');
	    });
	}
}

function html_show_img_look(id ,images){
	if(images && images.length > 0 ){
		$((images).split(',')).each(function(i,obj){
	    	$('#'+id).append('<div><img src="'+imagePath+obj+'" value="'+obj+'" /></div>');
	    });
	}
}

function html_input_img(id){
	var imgStr = "";
	$('#'+id+' img').each(function(i,img){
		alert("i=="+i);
		alert("img=="+img);
		imgStr = imgStr+ ','+ $(img).attr('value');
	});
	if(imgStr.length>1)imgStr = imgStr.substring(1);
	return imgStr;
}

function upload_file(callBack,rename){
	if($('#upload_file_dlg').length < 1) $('body').append('<div id="upload_file_dlg" ></div><script>var fileCallback;</script>');
	$('#upload_file_dlg').dialog({
		title:'上传文件',
		width: 550,
		height: 200,
		href:'./html/upload/_upload.html',
		left: (window_width-350)/2,
		top: (window_height-200)/2,
		modal:true
		,onLoad :function(data){
	    	if(rename) $('#file_rename').val(rename);
	    }
	});
	fileCallback = function(data){
		if(data && data.result == 1){
			$('#upload_file_dlg').dialog('close');
		}
		if(callBack) callBack(data);
	};
}

/**
 * 上传文件按钮触发函数
 */
function html_upload_file(id,rename,append){
	upload_file(function(data){
		if(data && data.result == 1){
			var html = '<div><span class="file" value="'+data.uri+'">'+imagePath+data.uri+'</span>&nbsp;<span onclick="html_img_del(this);">X</span></div>';
			if(append) $('#'+id).append(html);
			else $('#'+id).html(html);
		}
	},rename);
}

