package com.ssh.domain;

public class Certificate {
	private Integer id;
	private Integer uid;//用户的ID
    private String  certificate_title;//证书名称
    private String awarding_body;//授予机构
    private String awarded_Date;//授予年份
    //private String end_Date;//起止年月
    private String  certificates_describe;// 证书描述
    private String record_time;//记录时间
    private String loginIP;//最后 登录IP
    private String lastupdate_time;//最后修改时间
    
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	
	public String getCertificate_title() {
		return certificate_title;
	}
	public void setCertificate_title(String certificateTitle) {
		certificate_title = certificateTitle;
	}
	public String getAwarding_body() {
		return awarding_body;
	}
	public void setAwarding_body(String awardingBody) {
		awarding_body = awardingBody;
	}
	public String getAwarded_Date() {
		return awarded_Date;
	}
	public void setAwarded_Date(String awardedDate) {
		awarded_Date = awardedDate;
	}
	public String getCertificates_describe() {
		return certificates_describe;
	}
	public void setCertificates_describe(String certificatesDescribe) {
		certificates_describe = certificatesDescribe;
	}
	public String getRecord_time() {
		return record_time;
	}
	public void setRecord_time(String recordTime) {
		record_time = recordTime;
	}
	public String getLoginIP() {
		return loginIP;
	}
	public void setLoginIP(String loginIP) {
		this.loginIP = loginIP;
	}
	public String getLastupdate_time() {
		return lastupdate_time;
	}
	public void setLastupdate_time(String lastupdateTime) {
		lastupdate_time = lastupdateTime;
	}
	
    
}
