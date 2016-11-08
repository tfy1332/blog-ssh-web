package com.ssh.upload;

import com.qiniu.api.auth.digest.Mac;
import com.qiniu.api.config.Config;
import com.qiniu.api.rs.PutPolicy;

public class Uptoken {

	    public static void main(String[] args) throws Exception {
	       // Config.ACCESS_KEY = "<YOUR APP ACCESS_KEY>";
	      //  Config.SECRET_KEY = "<YOUR APP SECRET_KEY>";
	        Config.ACCESS_KEY = "IyYaVRmL9fNn-cwk5cVKo3UGb_pbgMOv_Tw3QGIV";
	        Config.SECRET_KEY = "nA6yrDFfMIoFlDSrtaXlMifFN-UT-x7FsVQ6_2bX";
	        Mac mac = new Mac(Config.ACCESS_KEY, Config.SECRET_KEY);
	        // 请确保该bucket已经存在
	        //String bucketName = "Your bucket name";
	        String bucketName = "tfyworld";
	        PutPolicy putPolicy = new PutPolicy(bucketName);
	        String uptoken = putPolicy.token(mac);
	        System.out.println("uptoken=="+uptoken);
	    }

}
