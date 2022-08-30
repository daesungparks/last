package com.ds4.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


public class MemberDto {
	
	
	
	private String mid;
	private String mpw;
	private String mname;
	private String memail;
	private String mdate;
	private String mtel;
	private String maddress;
	private String maddresss;
	private String maddressss;
	
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberDto(String mid, String mpw, String mname, String memail, String mdate, String mtel, String maddress,
			String maddresss, String maddressss) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.memail = memail;
		this.mdate = mdate;
		this.mtel = mtel;
		this.maddress = maddress;
		this.maddresss = maddresss;
		this.maddressss = maddressss;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpw() {
		return mpw;
	}

	public void setMpw(String mpw) {
		this.mpw = mpw;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getMdate() {
		return mdate;
	}

	public void setMdate(String mdate) {
		this.mdate = mdate;
	}

	public String getMtel() {
		return mtel;
	}

	public void setMtel(String mtel) {
		this.mtel = mtel;
	}

	public String getMaddress() {
		return maddress;
	}

	public void setMaddress(String maddress) {
		this.maddress = maddress;
	}

	public String getMaddresss() {
		return maddresss;
	}

	public void setMaddresss(String maddresss) {
		this.maddresss = maddresss;
	}

	public String getMaddressss() {
		return maddressss;
	}

	public void setMaddressss(String maddressss) {
		this.maddressss = maddressss;
	}

	

}
