<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/qlist.css">
<meta charset="UTF-8">
<title>게시판 관리</title>
</head>
<body bgcolor="black">
	<%@ include file="include/mheader.jsp" %>
	<center>
	<table width="75%" cellspacing="0" border="0" cellpadding="20">
	<tr>
		<td align="center">
			<a href="index"><span class="index_title01">EPIC PROJECT FITNESS</span></a>
		</td>
	</tr>
	<tr>
		<td align="center">
			<span class="index_title02">You have to exercise, or at some point you'll just break down..</span>
		</td>
	</tr>
	<tr>
		<table width="70%" cellspacing="0" border="10" cellpadding="10">
			
			<tr height="533" align="center">
				
				<td bgcolor="#626060" align=center >
				<span class="content_text"> ★QUESTION BOARD★ </span><br><br>
				
					<table width="85%"border="0" cellspacing="0" cellpadding="10">
						<tr>
							<td class="board_title">번호</td>
							<td class="board_title">아이디</td>
							<td class="board_title" width="40%">내용</td>
							<td class="board_title">이름</td>
							<td class="board_title">날짜</td>
						</tr>
						</tr>
						<c:forEach items="${mlist}" var="dto">
						<tr>
							<td class="board_content">${dto.qnum }</td>
							<td class="board_content">${dto.qid }</td>
							<td class="board_content" style="text-align: left;">
							<a href="mqview?qnum=${dto.qnum}" style="color:black">
							<c:choose>
							<c:when test="${fn:length(dto.qcontent) > 25}">
								<c:out value="${fn:substring(dto.qcontent,0,25)}">					
								</c:out>
							</c:when>
							<c:otherwise>
								<c:out value="${dto.qcontent }"></c:out>
							</c:otherwise>
							</c:choose>
							</a>
							</td>
							<td class="board_content">${dto.qname }</td>
							<td class="board_content">
								<c:out value="${fn:substring(dto.qdate,0,20) }"></c:out></td>
						</tr>
						</c:forEach>
						
						<tr>
							<td colspan="5" align="right">
								<input class="button" value="WRITE" onclick="location.href='mquestion'">
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>