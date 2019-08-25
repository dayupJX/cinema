package com.springboot.domain;

import java.util.Date;

public class Film {
	private String fid;
	private String fname;
	private String fdirector;
	private Date dateToOn;//上映时间
	private String mainStar;
	private String type;
	private String country;
	private String filmLength;
	private String fdesc;
	private String mainImage;//主宣传图
	private String trailer;//预告
	private String fimage1;//剧照1
	private String fimage2;
	private String fimage3;
	private String isHot;//是否热门
	private String isOn;//是否上映
	private Double price;
	
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFdirector() {
		return fdirector;
	}
	public void setFdirector(String fdirector) {
		this.fdirector = fdirector;
	}
	public Date getDateToOn() {
		return dateToOn;
	}
	public void setDateToOn(Date dateToOn) {
		this.dateToOn = dateToOn;
	}
	public String getMainStar() {
		return mainStar;
	}
	public void setMainStar(String mainStar) {
		this.mainStar = mainStar;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getFilmLength() {
		return filmLength;
	}
	public void setFilmLength(String filmLength) {
		this.filmLength = filmLength;
	}
	public String getFdesc() {
		return fdesc;
	}
	public void setFdesc(String fdesc) {
		this.fdesc = fdesc;
	}
	public String getMainImage() {
		return mainImage;
	}
	public void setMainImage(String mainimage) {
		this.mainImage = mainimage;
	}
	public String getTrailer() {
		return trailer;
	}
	public void setTrailer(String trailer) {
		this.trailer = trailer;
	}
	public String getFimage1() {
		return fimage1;
	}
	public void setFimage1(String fiamge1) {
		this.fimage1 = fiamge1;
	}
	public String getFimage2() {
		return fimage2;
	}
	public void setFimage2(String fimage2) {
		this.fimage2 = fimage2;
	}
	public String getFimage3() {
		return fimage3;
	}
	public void setFimage3(String fimage3) {
		this.fimage3 = fimage3;
	}
	public String getIsHot() {
		return isHot;
	}
	public void setIsHot(String isHot) {
		this.isHot = isHot;
	}
	public String getIsOn() {
		return isOn;
	}
	public void setIsOn(String isOn) {
		this.isOn = isOn;
	}
	@Override
	public String toString() {
		return "Film [fid=" + fid + ", fname=" + fname + ", fdirector=" + fdirector + ", dateToOn=" + dateToOn
				+ ", mainStar=" + mainStar + ", type=" + type + ", country=" + country + ", filmLength=" + filmLength
				+ ", fdesc=" + fdesc + ", mainImage=" + mainImage + ", trailer=" + trailer + ", fimage1=" + fimage1
				+ ", fimage2=" + fimage2 + ", fimage3=" + fimage3 + ", isHot=" + isHot + ", isOn=" + isOn + ", price="
				+ price + "]";
	}
	
	  
}
