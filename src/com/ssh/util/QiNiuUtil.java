package com.ssh.util;

import java.io.InputStream;

import org.json.JSONException;

import com.qiniu.api.auth.AuthException;
import com.qiniu.api.auth.digest.Mac;
import com.qiniu.api.config.Config;
import com.qiniu.api.io.IoApi;
import com.qiniu.api.io.PutExtra;
import com.qiniu.api.io.PutRet;
import com.qiniu.api.rs.PutPolicy;
import com.qiniu.api.rs.RSClient;

public class QiNiuUtil {
	/** QINIU 图片空间 */
	//public static final String QN_IMG_BUCKET_NAME = "microlmj";
	public static final String QN_IMG_BUCKET_NAME = "tfyworld";
	/**QINIU 临时空间*/
	//public static final String QN_IMG_TEMP_BUCKET_NAME = "tempdatas";
	public static final String QN_IMG_TEMP_BUCKET_NAME = "tfytempdatas";
	public static final String QN_IMG_CKEDITOR_BUCKET_NAME = "tfyckeditor";
	
	
	public static final String QN_IMG_ACCESS_KEY = "IyYaVRmL9fNn-cwk5cVKo3UGb_pbgMOv_Tw3QGIV";
	public static final String QN_IMG_SECRET_KEY = "nA6yrDFfMIoFlDSrtaXlMifFN-UT-x7FsVQ6_2bX";
	/**
	 * 获取MAC
	 * @return QINIU MAC
	 */
	public static Mac getQnMac(){
		//Config.ACCESS_KEY = "UrutrtssivfjXSvismFFxxfdNgDP2UYOPCdWK-4f";
        //Config.SECRET_KEY = "9jHSkB_1rql1fbIYhHF8b6OCyaN7Qr1N6Pl6EIoj";
		//tfy
		Config.ACCESS_KEY = "IyYaVRmL9fNn-cwk5cVKo3UGb_pbgMOv_Tw3QGIV";
        Config.SECRET_KEY = "nA6yrDFfMIoFlDSrtaXlMifFN-UT-x7FsVQ6_2bX";
        Mac mac = new Mac(Config.ACCESS_KEY, Config.SECRET_KEY);
        return mac;
	}
	/**
	 * 保存图片
	 * @param imgFileStream
	 * @throws AuthException
	 * @throws JSONException
	 */
	public static PutRet saveFile(InputStream imgFileStream) throws AuthException, JSONException{
		PutPolicy putPolicy = new PutPolicy(QiNiuUtil.QN_IMG_TEMP_BUCKET_NAME);
        String uptoken = putPolicy.token(QiNiuUtil.getQnMac());
        PutExtra extra = new PutExtra();
        String key = String.valueOf(System.currentTimeMillis());
        PutRet ret = IoApi.Put(uptoken, key, imgFileStream, extra);
        return ret;
	}
	
	/**
	 * 保存图片 根据不同的BUCKET_NAME
	 * @param imgFileStream
	 * @throws AuthException
	 * @throws JSONException
	 */
	public static PutRet saveFile(InputStream imgFileStream,String tfyCkeditor) throws AuthException, JSONException{
		PutPolicy putPolicy = new PutPolicy(tfyCkeditor);
        String uptoken = putPolicy.token(QiNiuUtil.getQnMac());
        PutExtra extra = new PutExtra();
        String key = String.valueOf(System.currentTimeMillis());
        PutRet ret = IoApi.Put(uptoken, key, imgFileStream, extra);
        return ret;
	}
	
	/**
	 * 删除图片  默认
	 * @param key
	 */
	public static void deleteImg(String key){
		RSClient client = new RSClient(QiNiuUtil.getQnMac());
        client.delete(QN_IMG_BUCKET_NAME, key);
	}
	
	/**
	 * 删除图片
	 * @param key
	 * @param buckName
	 */
	public static void deleteImg(String key,String buckName){
		RSClient client = new RSClient(QiNiuUtil.getQnMac());
        client.delete(buckName, key);
	}
	
	/**
	 * 移动文件
	 * @param key
	 */
	public static void moveFile(String key){
		RSClient client = new RSClient(QiNiuUtil.getQnMac());
		client.move(QN_IMG_TEMP_BUCKET_NAME, key, QN_IMG_BUCKET_NAME, key);
	}
	
}
