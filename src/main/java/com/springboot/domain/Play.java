package com.springboot.domain;

import java.util.Date;

public class Play {
	
	private String pid;
	private Film film;
	private Hall hall;
	private Date playDate;
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public Film getFilm() {
		return film;
	}
	public void setFilm(Film film) {
		this.film = film;
	}
	public Hall getHall() {
		return hall;
	}
	public void setHall(Hall hall) {
		this.hall = hall;
	}
	public Date getPlayDate() {
		return playDate;
	}
	public void setPlayDate(Date playDate) {
		this.playDate = playDate;
	}
	@Override
	public String toString() {
		return "Play [pid=" + pid + ", film=" + film + ", hall=" + hall + ", playDate=" + playDate + "]";
	}
	
	
}
