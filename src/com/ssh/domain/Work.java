package com.ssh.domain;

public class Work {
	private Integer id;
	private Integer uid;//用户的ID
    private String  company;//公司
    private String position;//职位
    private String start_Date;//起止年月
    private String end_Date;//起止年月
    private String work_summarize;// 工作概述
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
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getStart_Date() {
		return start_Date;
	}
	public void setStart_Date(String startDate) {
		start_Date = startDate;
	}
	public String getEnd_Date() {
		return end_Date;
	}
	public void setEnd_Date(String endDate) {
		end_Date = endDate;
	}
	public String getWork_summarize() {
		return work_summarize;
	}
	public void setWork_summarize(String workSummarize) {
		work_summarize = workSummarize;
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
