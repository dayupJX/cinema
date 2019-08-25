package com.springboot.domain;

import java.util.List;

public class Hall {
	private String hid;
	private String hallName;
	private String seatRow;
	private String seatCol;
	//private Cinema cinema;
	private List<Play> plays;
	
	 
	public String getHid() {
		return hid;
	}
	public void setHid(String hid) {
		this.hid = hid;
	}
	public String getHallName() {
		return hallName;
	}
	public void setHallName(String hallName) {
		this.hallName = hallName;
	}
	public String getSeatRow() {
		return seatRow;
	}
	public void setSeatRow(String seatRow) {
		this.seatRow = seatRow;
	}
	public String getSeatCol() {
		return seatCol;
	}
	public void setSeatCol(String seatCol) {
		this.seatCol = seatCol;
	}
	public List<Play> getPlays() {
		return plays;
	}
	public void setPlays(List<Play> plays) {
		this.plays = plays;
	}
	@Override
	public String toString() {
		return "Hall [hid=" + hid + ", hallName=" + hallName + ", seatRow=" + seatRow + ", seatCol=" + seatCol
				+ ", plays=" + plays + "]";
	}
	
}
