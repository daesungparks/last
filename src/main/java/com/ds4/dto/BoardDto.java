package com.ds4.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

public class BoardDto {

	private int qnum;
	private String qid;
	private String qname;
	private String qcontent;
	private String qemail;
	private String qdate;
	private String qhit;
	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	
	
	
	
}
	public BoardDto(int qnum, String qid, String qname, String qcontent, String qemail, String qdate, String qhit) {
		super();
		this.qnum = qnum;
		this.qid = qid;
		this.qname = qname;
		this.qcontent = qcontent;
		this.qemail = qemail;
		this.qdate = qdate;
		this.qhit = qhit;
	}
	public int getQnum() {
		return qnum;
	}
	public void setQnum(int qnum) {
		this.qnum = qnum;
	}
	public String getQid() {
		return qid;
	}
	public void setQid(String qid) {
		this.qid = qid;
	}
	public String getQname() {
		return qname;
	}
	public void setQname(String qname) {
		this.qname = qname;
	}
	public String getQcontent() {
		return qcontent;
	}
	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}
	public String getQemail() {
		return qemail;
	}
	public void setQemail(String qemail) {
		this.qemail = qemail;
	}
	public String getQdate() {
		return qdate;
	}
	public void setQdate(String qdate) {
		this.qdate = qdate;
	}
	public String getQhit() {
		return qhit;
	}
	public void setQhit(String qhit) {
		this.qhit = qhit;
	}
	
}
