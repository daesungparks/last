package com.ds4;

import java.util.ArrayList;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class CalenService {
	@Autowired(required = false)
	private A04_CalenDao dao;
	
	public ArrayList<Calendar> calenList(){
		return dao.calenList();
	}
}
