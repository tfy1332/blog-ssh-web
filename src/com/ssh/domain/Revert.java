package com.ssh.domain;

public class Revert {
	private Integer id;
	private Integer articles_id;
    private String revertContent;
    private String revertIP;
    private String revertID;
    
    private String revertName;
    
    private String recordTime;
    
    
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getArticles_id() {
		return articles_id;
	}
	public void setArticles_id(Integer articles_id) {
		this.articles_id = articles_id;
	}
	public String getRecordTime() {
		return recordTime;
	}
	public void setRecordTime(String recordTime) {
		this.recordTime = recordTime;
	}
	public String getRevertContent() {
		return revertContent;
	}
	public void setRevertContent(String revertContent) {
		this.revertContent = revertContent;
	}
	public String getRevertIP() {
		return revertIP;
	}
	public void setRevertIP(String revertIP) {
		this.revertIP = revertIP;
	}
	public String getRevertID() {
		return revertID;
	}
	public void setRevertID(String revertID) {
		this.revertID = revertID;
	}
	public String getRevertName() {
		return revertName;
	}
	public void setRevertName(String revertName) {
		this.revertName = revertName;
	}
	
    
}
