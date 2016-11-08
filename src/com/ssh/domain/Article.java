package com.ssh.domain;

public class Article {
	private Integer id;
	private Integer articles_id;
    private String title;
    private String content;//文章内容  纯文本内容
    private String content_html;//文章内容 包含html标签 内容可以包含图片 
    private String article_Type;//文章类型
    
    private String infoFlag;
    private String originalFlag;//文章是否原创־
    private String isHasImg;
    
    private String authorIP;
    private String authorId;
    private String authorName;
    private String recordTime;
    
    private String dotNumber="0";
    private String revertNumber="0";
    private String revertTime;
    
    private String articleState;
    private String topID;
    
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	public String getContent_html() {
		return content_html;
	}
	public void setContent_html(String contentHtml) {
		content_html = contentHtml;
	}
	public String getArticle_Type() {
		return article_Type;
	}
	public void setArticle_Type(String article_Type) {
		this.article_Type = article_Type;
	}
	public String getInfoFlag() {
		return infoFlag;
	}
	public void setInfoFlag(String infoFlag) {
		this.infoFlag = infoFlag;
	}
	public String getOriginalFlag() {
		return originalFlag;
	}
	public void setOriginalFlag(String originalFlag) {
		this.originalFlag = originalFlag;
	}
	public String getIsHasImg() {
		return isHasImg;
	}
	public void setIsHasImg(String isHasImg) {
		this.isHasImg = isHasImg;
	}
	public String getAuthorIP() {
		return authorIP;
	}
	public void setAuthorIP(String authorIP) {
		this.authorIP = authorIP;
	}
	public String getAuthorId() {
		return authorId;
	}
	public void setAuthorId(String authorId) {
		this.authorId = authorId;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public String getRecordTime() {
		return recordTime;
	}
	public void setRecordTime(String recordTime) {
		this.recordTime = recordTime;
	}
	public String getDotNumber() {
		return dotNumber;
	}
	public void setDotNumber(String dotNumber) {
		this.dotNumber = dotNumber;
	}
	public String getRevertNumber() {
		return revertNumber;
	}
	public void setRevertNumber(String revertNumber) {
		this.revertNumber = revertNumber;
	}
	public String getRevertTime() {
		return revertTime;
	}
	public void setRevertTime(String revertTime) {
		this.revertTime = revertTime;
	}
	public String getArticleState() {
		return articleState;
	}
	public void setArticleState(String articleState) {
		this.articleState = articleState;
	}
	public String getTopID() {
		return topID;
	}
	public void setTopID(String topID) {
		this.topID = topID;
	}
    
}
