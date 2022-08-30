<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    HOME | 
  <%
     String sessionId = (String)session.getAttribute("sessionId");    
   if(sessionId == null) { 
  
  %>
  LOGIN | 
 <%
   } else {
 %>
  <a href="logout">LOGOUT | </a>
  <%
   }
  %>
  <a href="member_join">JOIN</a>
  NOTICE


</body>
</html>