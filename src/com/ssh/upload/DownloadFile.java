package com.ssh.upload;

import com.qiniu.api.auth.digest.Mac;
import com.qiniu.api.config.Config;
import com.qiniu.api.rs.GetPolicy;
import com.qiniu.api.rs.URLUtils;

public class DownloadFile {

    public static void main(String[] args) throws Exception {
        //Config.ACCESS_KEY = "<YOUR APP ACCESS_KEY>";
        //Config.SECRET_KEY = "<YOUR APP SECRET_KEY>";
    	
    	 Config.ACCESS_KEY = "IyYaVRmL9fNn-cwk5cVKo3UGb_pbgMOv_Tw3QGIV";
	     Config.SECRET_KEY = "nA6yrDFfMIoFlDSrtaXlMifFN-UT-x7FsVQ6_2bX";
        Mac mac = new Mac(Config.ACCESS_KEY, Config.SECRET_KEY);
        //  String url = "http://tfyworld.qiniudn.com" + "/" + "%5DBUVP%7B%5BF5)%60PI6MN%7DSG%7DB5Q.jpg";
        String domain="http://tfyworld.qiniudn.com";
        String key="%5DBUVP%7B%5BF5)%60PI6MN%7DSG%7DB5Q.jpg";
        String baseUrl = URLUtils.makeBaseUrl("http://tfyworld.qiniudn.com", "%5DBUVP%7B%5BF5)%60PI6MN%7DSG%7DB5Q.jpg");
        //String baseUrl = URLUtils.makeBaseUrl("<domain>", "<key>");
        GetPolicy getPolicy = new GetPolicy();
        String downloadUrl = getPolicy.makeRequest(baseUrl, mac);
        System.out.println("downloadUrl==="+downloadUrl);
    }
}
