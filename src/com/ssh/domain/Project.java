package com.ssh.domain;

public class Project {
	private Integer id;
	private Integer uid;
    private String project_name;//项目名称
    private String development_language;//开发语言
    private String development_tool;//开发工具
    private String development_database;//数据库
    private String server;//服务器
    
    
    
    private String framework;//使用框架或者技术
    private String function_Introduction;// 功能介绍
    private String  developing_functional;//参与开发功能
    private String development_address;//开发地点
    private String team_size;//团队人数
    
    
    private String  online_time;//上线时间  
    private String project_cost;//项目费用
    private String  is_intelnet_access;//外网是否能访问
    private String intelnet_URL;//外网访问地址 
    
    private String start_Date;//项目起止时间
    private String end_Date;//项目起止时间
    
    
    private String record_time;//记录时间
    private String loginIP;//最后 登录IP
    private String lastupdate_time;//最后修改时间
    
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		System.out.println("创建表project！");
		this.id = id;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String projectName) {
		project_name = projectName;
	}
	public String getDevelopment_language() {
		return development_language;
	}
	public void setDevelopment_language(String developmentLanguage) {
		development_language = developmentLanguage;
	}
	public String getDevelopment_tool() {
		return development_tool;
	}
	public void setDevelopment_tool(String developmentTool) {
		development_tool = developmentTool;
	}
	
	
	public String getDevelopment_database() {
		return development_database;
	}
	public void setDevelopment_database(String developmentDatabase) {
		development_database = developmentDatabase;
	}
	
	
	
	public String getServer() {
		return server;
	}
	public void setServer(String server) {
		this.server = server;
	}
	public String getFramework() {
		return framework;
	}
	public void setFramework(String framework) {
		this.framework = framework;
	}
	public String getFunction_Introduction() {
		return function_Introduction;
	}
	public void setFunction_Introduction(String functionIntroduction) {
		function_Introduction = functionIntroduction;
	}
	
	public String getDeveloping_functional() {
		return developing_functional;
	}
	public void setDeveloping_functional(String developingFunctional) {
		developing_functional = developingFunctional;
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
	public String getDevelopment_address() {
		return development_address;
	}
	public void setDevelopment_address(String developmentAddress) {
		development_address = developmentAddress;
	}
	public String getTeam_size() {
		return team_size;
	}
	public void setTeam_size(String teamSize) {
		team_size = teamSize;
	}
	public String getOnline_time() {
		return online_time;
	}
	public void setOnline_time(String onlineTime) {
		online_time = onlineTime;
	}
	public String getProject_cost() {
		return project_cost;
	}
	public void setProject_cost(String projectCost) {
		project_cost = projectCost;
	}
	public String getIs_intelnet_access() {
		return is_intelnet_access;
	}
	public void setIs_intelnet_access(String isIntelnetAccess) {
		is_intelnet_access = isIntelnetAccess;
	}
	public String getIntelnet_URL() {
		return intelnet_URL;
	}
	public void setIntelnet_URL(String intelnetURL) {
		intelnet_URL = intelnetURL;
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
