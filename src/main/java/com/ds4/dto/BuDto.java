package com.ds4.dto;

public class BuDto {

	private int bnum;
	private String bid;
	private String bname;
	private String bstart;
	private String bend;
	private String brent;
	public BuDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BuDto(int bnum, String bid, String bname, String bstart, String bend, String rent) {
		super();
		this.bnum = bnum;
		this.bid = bid;
		this.bname = bname;
		this.bstart = bstart;
		this.bend = bend;
		this.brent = rent;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBstart() {
		return bstart;
	}
	public void setBstart(String bstart) {
		this.bstart = bstart;
	}
	public String getBend() {
		return bend;
	}
	public void setBend(String bend) {
		this.bend = bend;
	}
	public String getRent() {
		return brent;
	}
	public void setRent(String rent) {
		this.brent = rent;
	}
	
	
	
}
