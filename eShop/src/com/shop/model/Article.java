package com.shop.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="article")
@Entity
public class Article {
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private Integer uid;
	
	private String title;
	
	private String content;
	
	private String userId;
	
	private String userName;
	
	private String date;
	
	private String strDate;
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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









	public String getUserName() {
		return userName;
	}





	public void setUserName(String userName) {
		this.userName = userName;
	}





	public String getDate() {
		return date;
	}





	public void setDate(String date) {
		this.date = date;
	}





	public String getStrDate() {
		return strDate;
	}





	public void setStrDate(String strDate) {
		this.strDate = strDate;
	}
	
	private String code;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	
	@Override
	public String toString() {
		return "Article [uid=" + uid + ", title=" + title + ", content=" + content + ", userId="
				+ userId + ", userName=" + userName + ", date=" + date + ", strDate=" + strDate 
				+ ",code="+code+ "]";
	}
}












