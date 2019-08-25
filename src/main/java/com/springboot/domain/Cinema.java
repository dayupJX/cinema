package com.springboot.domain;

import java.util.List;

public class Cinema {
	
	private String cid;
	private String cname;
	private List<Hall> halls;
	
	public List<Hall> getHalls() {
		return halls;
	}
	public void setHalls(List<Hall> halls) {
		this.halls = halls;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	@Override
	public String toString() {
		return "Cinema [cid=" + cid + ", cname=" + cname + ", halls=" + halls + "]";
	}
	
	
}
