package com.ssh.domain;

public class Image {
	private Integer id;
	//上传图片成功后返回的结果
	//{"hash":"FmM4R2AtYjz2wJDSlHEAxI4rmUZ5","key":"7347c7ed-f13c-435a-9cc7-851c67601503"}
    private String img_hash;
    private String img_key;
    private String img_usernmae;
    private String upload_time;//上传时间
    private String loginIP;//最后 登录IP 记录上传的IP
    
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	public String getImg_hash() {
		return img_hash;
	}
	public void setImg_hash(String imgHash) {
		img_hash = imgHash;
	}
	public String getImg_key() {
		return img_key;
	}
	public void setImg_key(String imgKey) {
		img_key = imgKey;
	}
	public String getUpload_time() {
		return upload_time;
	}
	public void setUpload_time(String uploadTime) {
		upload_time = uploadTime;
	}
	public String getLoginIP() {
		return loginIP;
	}
	public void setLoginIP(String loginIP) {
		this.loginIP = loginIP;
	}
	public String getImg_usernmae() {
		return img_usernmae;
	}
	public void setImg_usernmae(String imgUsernmae) {
		img_usernmae = imgUsernmae;
	}
	
}