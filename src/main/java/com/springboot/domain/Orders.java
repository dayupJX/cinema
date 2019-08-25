package com.springboot.domain;

public class Orders {
	private String oid;
	private Double total;
	private Integer quantity;
	private Film film;
	private String uid;
	private User user;
	private String seatRow;
	private String seatCol;
	private Play play;
	
	
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
	public Play getPlay() {
		return play;
	}
	public void setPlay(Play play) {
		this.play = play;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Film getFilm() {
		return film;
	}
	public void setFilm(Film film) {
		this.film = film;
	}
	@Override
	public String toString() {
		return "Orders [oid=" + oid + ", total=" + total + ", quantity=" + quantity + ", film=" + film + ", uid=" + uid
				+ ", user=" + user + ", seatRow=" + seatRow + ", seatCol=" + seatCol + "]";
	}
	
	
}
