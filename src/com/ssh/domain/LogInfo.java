package com.ssh.domain;

public class LogInfo {
	/*
	 * 
		loginIP   lookIP  username  文章ID 和 标题  RecordTime
		1、文章被谁 看过 注册的用户 记录登录时间 IP 用户名  没有注册的访问者 记录 iP 访问时间
		2、登录的用户 也要往日志表插入一条记录 

 	注册的用户 记录登录时间 IP 用户名   
	loginIP   username  RecordTime
	 */
	private Integer id;
    
    private String loginIP;
    private String lookIP;
    private String userName;
    private String title;
    private String articleID;
    private String recordTime;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLoginIP() {
		return loginIP;
	}
	public void setLoginIP(String loginIP) {
		this.loginIP = loginIP;
	}
	public String getLookIP() {
		return lookIP;
	}
	public void setLookIP(String lookIP) {
		this.lookIP = lookIP;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getArticleID() {
		return articleID;
	}
	public void setArticleID(String articleID) {
		this.articleID = articleID;
	}
	public String getRecordTime() {
		return recordTime;
	}
	public void setRecordTime(String recordTime) {
		this.recordTime = recordTime;
	}
    
    
	
    
}
