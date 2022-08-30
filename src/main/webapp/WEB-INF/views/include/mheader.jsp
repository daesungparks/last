<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<title>header</title>
</head>
<body>
	
	<table width="100%" cellspacing="0" border="0" cellpadding="0">
		<tr height="50" bgcolor="#ff0000">
			<td width="60%">&nbsp;</td>
			<td class="header_menu" width="4%">
			<%
				String sessionId = (String)session.getAttribute("msid");
               if(sessionId != null){
            %>
            <a href="mindex">홈</a>
            <%
               }else{
            %>
            <a href="index">홈</a>
            <%
               }
            %>

			</td>
			<td class="header_menu" width="6%">
				<%	
					
				if(sessionId == null) {
					
				%>
				<a href="login">로그인</a>
				<%
					}else {	
				%>
				<a href="mlogout">로그아웃</a>
				<%
					}
				%>
			</td>
			<td class="header_menu" width="8%">
				<%
					if(sessionId == null) {
				%>
				<a href="join">회원가입</a>
				<%
					}else {
				%>
				<a href="minfomodify">회원정보수정</a>
				<%
					}
				%>
			</td>
			<td class="header_menu" width="8%">
				 <%               
               if(sessionId == null){
            %>
               <a href="callist">PT 예약 등록</a>
            <%
               }else{
            %>
               <a href="mcallist">PT 예약 관리</a>
            <%
               }
            %>
			</td>
			<td class="header_menu" width="7%">
				 <%               
               if(sessionId == null){
            %>
               <a href="list">고객문의</a>
            <%
               }else{
            %>
               <a href="mlist">고객문의</a>
            <%
               }
            %>

			</td>
			<td class="header_menu" width="6%">
				<a href=address>오시는길</a>
			</td>
		</tr>
		<tr height="40" >
			<td>&nbsp;</td>
		</tr>
		<tr height="40">
			<%
				String msname = (String)session.getAttribute("msname");
				if(msname != null) {
			%>
			<td colspan="8" align="right">
				<span class="login_text"><b><%=msname %></b>(관리자)님 로그인 중입니다.&nbsp;&nbsp;&nbsp; </span>
			</td>
			<%
				}
			%>
	</table>
</body>
</html>