package com.ds4.cal;

public class Calendar {

	private int calendarNo;
	private String calendarTitle;
	private String calendarMemo;
	private String calendarStart;
	private String calendarEnd;
	public Calendar() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Calendar(int calendarNo, String calendarTitle, String calendarMemo, String calendarStart,
			String calendarEnd) {
		super();
		this.calendarNo = calendarNo;
		this.calendarTitle = calendarTitle;
		this.calendarMemo = calendarMemo;
		this.calendarStart = calendarStart;
		this.calendarEnd = calendarEnd;
	}
	public int getCalendarNo() {
		return calendarNo;
	}
	public void setCalendarNo(int calendarNo) {
		this.calendarNo = calendarNo;
	}
	public String getCalendarTitle() {
		return calendarTitle;
	}
	public void setCalendarTitle(String calendarTitle) {
		this.calendarTitle = calendarTitle;
	}
	public String getCalendarMemo() {
		return calendarMemo;
	}
	public void setCalendarMemo(String calendarMemo) {
		this.calendarMemo = calendarMemo;
	}
	public String getCalendarStart() {
		return calendarStart;
	}
	public void setCalendarStart(String calendarStart) {
		this.calendarStart = calendarStart;
	}
	public String getCalendarEnd() {
		return calendarEnd;
	}
	public void setCalendarEnd(String calendarEnd) {
		this.calendarEnd = calendarEnd;
	}
	
	
	
	
}
