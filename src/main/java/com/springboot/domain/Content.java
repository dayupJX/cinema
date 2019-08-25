package com.springboot.domain;

import java.util.Date;

public class Content {
	private String cid;
	private String pic1;
	private String pic2;
	private String pic3;
	private Date created;
	
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getPic1() {
		return pic1;
	}
	public void setPic1(String pic1) {
		this.pic1 = pic1;
	}
	public String getPic2() {
		return pic2;
	}
	public void setPic2(String pic2) {
		this.pic2 = pic2;
	}
	public String getPic3() {
		return pic3;
	}
	public void setPic3(String pic3) {
		this.pic3 = pic3;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	@Override
	public String toString() {
		return "Content [cid=" + cid + ", pic1=" + pic1 + ", pic2=" + pic2 + ", pic3=" + pic3 + ", created=" + created
				+ "]";
	}
	
	
	
}
