package com.ds4.dto;


public class MMemberDto {

	
	private String mmid;
	private String mmpw;
	private String mmname;
	private String mmemail;
	private String mmdate;
	private String mmtel;
	public MMemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MMemberDto(String mmid, String mmpw, String mmname, String mmemail, String mmdate, String mmtel) {
		super();
		this.mmid = mmid;
		this.mmpw = mmpw;
		this.mmname = mmname;
		this.mmemail = mmemail;
		this.mmdate = mmdate;
		this.mmtel = mmtel;
	}
	public String getMmid() {
		return mmid;
	}
	public void setMmid(String mmid) {
		this.mmid = mmid;
	}
	public String getMmpw() {
		return mmpw;
	}
	public void setMmpw(String mmpw) {
		this.mmpw = mmpw;
	}
	public String getMmname() {
		return mmname;
	}
	public void setMmname(String mmname) {
		this.mmname = mmname;
	}
	public String getMmemail() {
		return mmemail;
	}
	public void setMmemail(String mmemail) {
		this.mmemail = mmemail;
	}
	public String getMmdate() {
		return mmdate;
	}
	public void setMmdate(String mmdate) {
		this.mmdate = mmdate;
	}
	public String getMmtel() {
		return mmtel;
	}
	public void setMmtel(String mmtel) {
		this.mmtel = mmtel;
	}
	
	
	
	
	
}
