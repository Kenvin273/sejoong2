package com.tuvi.dao;

import java.sql.Time;
import java.sql.Timestamp;

public class News {
	private int newsId;
	private String image;
	private String title;
	private String content;
	private Timestamp timeCreated;
	private String seo;
	public String getSeo() {
		return seo;
	}
	public void setSeo(String seo) {
		this.seo = seo;
	}
	public int getNewsId() {
		return newsId;
	}
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
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
	public Timestamp getTimeCreated() {
		return timeCreated;
	}
	public void setTimeCreated(Timestamp timeCreated) {
		this.timeCreated = timeCreated;
	}
}
