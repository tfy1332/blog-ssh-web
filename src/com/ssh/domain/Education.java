package com.ssh.domain;

public class Education {
	private Integer id;
    private Integer uid;
    private String school;//学校
    private String profession;//专业
    
    private String start_Date;//起止年月
    private String end_Date;//起止年月
    
    private String educational_history;//学历
    private String country;//国家
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
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
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
	public String getEducational_history() {
		return educational_history;
	}
	public void setEducational_history(String educationalHistory) {
		educational_history = educationalHistory;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
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
