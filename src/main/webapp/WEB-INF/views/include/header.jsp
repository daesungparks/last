<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<script type="text/javascript " src="${pageContext.request.contextPath}/resources/js/loginno.js"></script>
<title>header</title>
</head>
<body>
	<table width="100%" cellspacing="0" border="0" cellpadding="0">
		<tr height="50" bgcolor="#ff0000">
			<td width="60%">&nbsp;</td>
			<td class="header_menu" width="4%">
				<a href="index">홈</a>
			</td>
			<td class="header_menu" width="6%">
				<%	
					String sessionId = (String)session.getAttribute("sid");
				if(sessionId == null) {
					
				%>
				<a href="main">로그인</a>
				<%
					}else {	
				%>
				<a href="logout">로그아웃</a>
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
				<a href="infomodify">회원정보수정</a>
				<%
					}
				%>
			</td>
			<%
					if(sessionId != null) {
				%>
			<td class="header_menu" width="8%">
				
				<a href="callist">PT 예약 등록</a>
			</td>
			<%
				}else{
			%>
			 <td class="header_menu" width="10%">
               <a href="alert">PT 예약 등록</a>
            </td>
            <%
               }
            %>
			<td class="header_menu" width="7%">
				<a href="list">자유 게시판</a>
			</td>
			<td class="header_menu" width="6%">
				<a href="address">오시는길</a>
			</td>
		</tr>
		<tr height="40" >
			<td>&nbsp;</td>
		</tr>
		<tr height="40">
			<%
				String sname = (String)session.getAttribute("sname");
				if(sname != null) {
			%>
			<td colspan="8" align="right">
				<span class="login_text"><b><%= sname %></b>님 로그인 중입니다.&nbsp;&nbsp;&nbsp; </span>
			</td>
			<%
				}
			%>
	</table>
</body>
</html>