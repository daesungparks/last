package com.ds4.dto;

public class CalDto {

	private int cnum;
	private String cid;
	private String cname;
	private String cstartdate;
	private String cenddate;
	private String cenjoy;
	private String ctech;
	private String cmemo;
	public CalDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CalDto(int cnum, String cid, String cname, String cstartdate, String cenddate, String cenjoy, String ctech,
			String cmemo) {
		super();
		this.cnum = cnum;
		this.cid = cid;
		this.cname = cname;
		this.cstartdate = cstartdate;
		this.cenddate = cenddate;
		this.cenjoy = cenjoy;
		this.ctech = ctech;
		this.cmemo = cmemo;
	}
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
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
	public String getCstartdate() {
		return cstartdate;
	}
	public void setCstartdate(String cstartdate) {
		this.cstartdate = cstartdate;
	}
	public String getCenddate() {
		return cenddate;
	}
	public void setCenddate(String cenddate) {
		this.cenddate = cenddate;
	}
	public String getCenjoy() {
		return cenjoy;
	}
	public void setCenjoy(String cenjoy) {
		this.cenjoy = cenjoy;
	}
	public String getCtech() {
		return ctech;
	}
	public void setCtech(String ctech) {
		this.ctech = ctech;
	}
	public String getCmemo() {
		return cmemo;
	}
	public void setCmemo(String cmemo) {
		this.cmemo = cmemo;
	}
	
	
	
}
