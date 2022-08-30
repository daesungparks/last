package com.ds4.dto;

public class LockrentDto {

	private String rid;
	private String rname;
	private String rtel;
	private String rnum;
	private String rprice;
	private String rsdate;
	private String redate;
	private int rent;
	public LockrentDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LockrentDto(String rid, String rname, String rtel, String rnum, String rprice, String rsdate, String redate,
			int rent) {
		super();
		this.rid = rid;
		this.rname = rname;
		this.rtel = rtel;
		this.rnum = rnum;
		this.rprice = rprice;
		this.rsdate = rsdate;
		this.redate = redate;
		this.rent = rent;
	}
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRtel() {
		return rtel;
	}
	public void setRtel(String rtel) {
		this.rtel = rtel;
	}
	public String getRnum() {
		return rnum;
	}
	public void setRnum(String rnum) {
		this.rnum = rnum;
	}
	public String getRprice() {
		return rprice;
	}
	public void setRprice(String rprice) {
		this.rprice = rprice;
	}
	public String getRsdate() {
		return rsdate;
	}
	public void setRsdate(String rsdate) {
		this.rsdate = rsdate;
	}
	public String getRedate() {
		return redate;
	}
	public void setRedate(String redate) {
		this.redate = redate;
	}
	public int getRent() {
		return rent;
	}
	public void setRent(int rent) {
		this.rent = rent;
	}
	
	
	
	
	
}



