<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.util.List"%>



<!DOCTYPE html>
<html>
<head>

<meta charset='utf-8' />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
<script type="text/javascript " src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<script>
 function click_add(){
	 var url = "schedulePopup";
	 var name = "schedulePopup";
	 var option = "width =600 , height=800 left =100, top=50 , location=no";
	 window.open(url,name,option)
 };
 
 
 
  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      	plugins:['interaction','dayGrid','timeGrid','list'],
    	header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
        	
      },
     
      navLinks: true, // can click day/week names to navigate views
      businessHours: true, // display business hours
      editable: true,
      events:[
   
    	  
    
    			{
    				title: 'default',
    				start : "2019-01-01",
    				end: "2019-01-01"
    			}
    	  
      ]
      
    });
    
    calendar.render();
  });
      
      

</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 1100px;
    margin: 0 auto;
  }

</style>
  <title>MyCalendar</title>
</head>

<body>
<%@ include file="include/header.jsp" %>

<div id='calendar' >
	<div>
		<button class ="add-button" type = "button"
		onclick="click_add();"> 일정추가 </button>
	</div>
  	
	</div>
  	

  <%@ include file="include/footer.jsp" %>
</body>
</html>

