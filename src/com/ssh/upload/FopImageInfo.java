package com.ssh.upload;

import com.qiniu.api.fop.ImageInfo;
import com.qiniu.api.fop.ImageInfoRet;
import org.apache.http.entity.StringEntity;  

public class FopImageInfo {

    public static void main(String[] args) {
    	//其中<domain>是bucket所对应的域名。七牛云存储为每一个bucket提供一个默认域名。
    	//默认域名可以到七牛云存储开发者平台中，空间设置的域名设置一节查询。
    	//用户也可以将自有的域名绑定到bucket上，通过自有域名访问七牛云存储。

    	//注意： key必须采用utf8编码，如使用非utf8编码访问七牛云存储将反馈错误
    	//key  <domain>   value   http://tfyworld.qiniudn.com/
    	
    	//<key>  %5DBUVP%7B%5BF5)%60PI6MN%7DSG%7DB5Q
    	String domain="";
    	String key="";
    	//String url = "<domain>" + "/" + "<key>";
        String url = "http://tfyworld.qiniudn.com" + "/" + "%5DBUVP%7B%5BF5)%60PI6MN%7DSG%7DB5Q.jpg";
        ImageInfoRet ret = ImageInfo.call(url);
        System.out.println("url==="+url);
        System.out.println("ret==="+ret);
    }
}
