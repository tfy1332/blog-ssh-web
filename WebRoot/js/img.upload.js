
/**
 * 校验图片类型
 * @param fileName
 * @returns {Boolean}
 */
function img_checkIsImage(fileName){
    if(!fileName){
    	alert('请选择需要上传的图片文件！');
    	return false;
    }
    var fileType = fileName.substr(fileName.lastIndexOf('.') + 1, fileName.length);
    var inputType = new Array("jpg","jpeg","gif","bmp","png");
    var isTrueFile = false;
    $(inputType).each(function(i,type){
        if(fileType.toLowerCase() == type.toLowerCase()){
        	isTrueFile = true;
        	return;
        }	
    });
    if(!isTrueFile) alert('文件类型错误,请选择正确的图片文件！');
    return isTrueFile;
}

/**
 * 显示图片
 * @param fileid
 * @param imgid
 */
function img_show(file,preview,initImg) {
	alert("file==="+file);
	var fileNnme = $(file).val();
	if(img_checkIsImage(fileNnme)){
		if (typeof FileReader == 'undefined') {
		} else{
			var reader = new FileReader();
			var picpreview = document.getElementById(preview);  
			reader.onload = function(e) {
				alert("this=="+this);
				alert("this.result=="+this.result);
				picpreview.innerHTML="<img src='"+this.result+"' style='' />";
			};
			reader.readAsDataURL(($(file)[0]).files[0]);
		}
		if(initImg)initImg();
	}
}

//获取本地上传的照片路径  
function img_getPath(obj) {
	if (obj){
		if (window.navigator.userAgent.indexOf("MSIE") >= 1) {  
			obj.select(); // IE下取得图片的本地路径  
			return document.selection.createRange().text;  
		}//firefox  
        else if (window.navigator.userAgent.indexOf("Firefox") >= 1) {  
        	if (obj.files) {// Firefox下取得的是图片的数据  
        		return obj.files.item(0).getAsDataURL();  
        	}  
        	return obj.value;
        }  
		return obj.value;
	}
}

//显示图片
function img_previewPhoto(){
    var picsrc=getPath(document.all.fileid);  
    var picpreview=document.getElementById("preview");  
    if(!picsrc){ return;  }
    if(window.navigator.userAgent.indexOf("MSIE") >= 1) {  
         if(picpreview) {  
          try{  
        	  picpreview.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = picsrc;  
           }catch(ex){  
        	   alert("文件路径非法，请重新选择！") ;  
        	   return false;
          }  
     }else{   
        picpreview.innerHTML="<img src='"+picsrc+"' />";  
     }  
   }  
}  