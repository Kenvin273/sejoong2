package com.tuvi.dao;

public class About {
	private int id;
	private String title;
	private String content;
	private String seo;
	public String getSeo() {
		return seo;
	}
	public void setSeo(String seo) {
		this.seo = seo;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
}
