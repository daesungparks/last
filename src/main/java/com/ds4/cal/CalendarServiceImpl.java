package com.ds4.cal;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("calendarService")
public class CalendarServiceImpl implements CalendarService{

	@Autowired
	private CalendarDao calendardao;
	
	@Override
	public List<Calendar> getCalendar() throws Exception {
		return calendardao.getCalendar();
	}
  }