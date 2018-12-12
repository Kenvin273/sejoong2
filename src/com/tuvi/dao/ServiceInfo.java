package com.tuvi.dao;

public class ServiceInfo {
	private int serviceId;
	private String serviceName;
	private String content;
	private String seo;
	public String getSeo() {
		return seo;
	}
	public void setSeo(String seo) {
		this.seo = seo;
	}
	public int getServiceId() {
		return serviceId;
	}
	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
