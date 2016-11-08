package com.ssh.domain;

public class User {
	private Integer id;
    private String username;//用户名
    private String password;//密码
    private String email;//邮箱
    private String sex;//性别
    private String image;//用户头像
    
    
    private String  last_name;//姓
    private String first_name;//名
    private String birthday;//生日
    private String show_name;//显示名
    
    private String work_years;//工作年限
    private String programming_language;//擅长编程语言
    private String good_at_database;//擅长数据库
    private String server;//擅长服务器
    
    
    private String  native_language;//母语
    private String currency;//币种
    private String telephone;//电话

    private String mobile_phone;//手机
    
    private String address;//地址
    private String city;//城市
    private String country;//国家
    private String time_zone;//国家
    
    
    private String articles_number;//文章数量
    private String registration_time;//注册时间
    private String loginIP;//最后 登录IP
    private String lastLogin;//最后登录时间
    
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getArticles_number() {
		return articles_number;
	}
	public void setArticles_number(String articlesNumber) {
		articles_number = articlesNumber;
	}
	public String getRegistration_time() {
		return registration_time;
	}
	public void setRegistration_time(String registrationTime) {
		registration_time = registrationTime;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLoginIP() {
		return loginIP;
	}
	public void setLoginIP(String loginIP) {
		this.loginIP = loginIP;
	}
	public String getLastLogin() {
		return lastLogin;
	}
	public void setLastLogin(String lastLogin) {
		this.lastLogin = lastLogin;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String lastName) {
		last_name = lastName;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String firstName) {
		first_name = firstName;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getShow_name() {
		return show_name;
	}
	public void setShow_name(String showName) {
		show_name = showName;
	}
	public String getWork_years() {
		return work_years;
	}
	public void setWork_years(String workYears) {
		work_years = workYears;
	}
	public String getProgramming_language() {
		return programming_language;
	}
	public void setProgramming_language(String programmingLanguage) {
		programming_language = programmingLanguage;
	}
	
	public String getGood_at_database() {
		return good_at_database;
	}
	public void setGood_at_database(String goodAtDatabase) {
		good_at_database = goodAtDatabase;
	}
	public String getServer() {
		return server;
	}
	public void setServer(String server) {
		this.server = server;
	}
	public String getNative_language() {
		return native_language;
	}
	public void setNative_language(String nativeLanguage) {
		native_language = nativeLanguage;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getMobile_phone() {
		return mobile_phone;
	}
	public void setMobile_phone(String mobilePhone) {
		mobile_phone = mobilePhone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getTime_zone() {
		return time_zone;
	}
	public void setTime_zone(String timeZone) {
		time_zone = timeZone;
	}
	
    
}
