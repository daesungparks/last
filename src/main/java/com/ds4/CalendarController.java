package com.ds4;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("calendar.do")
public class CalendarController {
	@Autowired(required = false)
	private CalenService service;

	@GetMapping(params="method=list")
	public String list() {
		return "fullcalendar.jsp";
	}
	@GetMapping(params = "method=data")
	public String data(Model d) {
		d.addAttribute("list", service.calenList());
		return "pageJsonReport";
	}

}
