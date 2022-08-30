package com.ds4.dto;

public class LockDto {

	private String lnum;
	private int lprice;
	private int use;
	public LockDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LockDto(String lnum, int lprice, int use) {
		super();
		this.lnum = lnum;
		this.lprice = lprice;
		this.use = use;
	}
	public String getLnum() {
		return lnum;
	}
	public void setLnum(String lnum) {
		this.lnum = lnum;
	}
	public int getLprice() {
		return lprice;
	}
	public void setLprice(int lprice) {
		this.lprice = lprice;
	}
	public int getUse() {
		return use;
	}
	public void setUse(int use) {
		this.use = use;
	}

	
}
