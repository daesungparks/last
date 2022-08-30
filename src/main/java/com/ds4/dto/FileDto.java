package com.ds4.dto;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


public class FileDto {

	private int filenum;//파일의 고유번호(시퀀스)
	private int boardnum;//파일이 첨부된 게시글의 번호
	private String filename;//랜덤으로 변경된 파일의 이름
	private String orifilename;//파일의 원래 이름
	private String fileurl;//파일의 저장 경로
	private String fileextension;//파일의 확장자
	public FileDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FileDto(int filenum, int boardnum, String filename, String orifilename, String fileurl,
			String fileextension) {
		super();
		this.filenum = filenum;
		this.boardnum = boardnum;
		this.filename = filename;
		this.orifilename = orifilename;
		this.fileurl = fileurl;
		this.fileextension = fileextension;
	}
	public int getFilenum() {
		return filenum;
	}
	public void setFilenum(int filenum) {
		this.filenum = filenum;
	}
	public int getBoardnum() {
		return boardnum;
	}
	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getOrifilename() {
		return orifilename;
	}
	public void setOrifilename(String orifilename) {
		this.orifilename = orifilename;
	}
	public String getFileurl() {
		return fileurl;
	}
	public void setFileurl(String fileurl) {
		this.fileurl = fileurl;
	}
	public String getFileextension() {
		return fileextension;
	}
	public void setFileextension(String fileextension) {
		this.fileextension = fileextension;
	}
	
	
	
	
	
}
