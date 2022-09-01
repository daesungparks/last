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
<title>PT 예약 등록</title>
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
		<table width="90%" cellspacing="0" border="10" cellpadding="10">
			
			<tr height="533" align="center">
				
				<td bgcolor="#626060" align=center >
				<span class="content_text"> ★PT 예약!★ </span><br><br>
				
					<table width="100%"border="0" cellspacing="0" cellpadding="10">
					<tr>
						
						  <form action="mcallist">
						 <td  id="search_select" align="right" colspan="10">
						 
					          <select name="searchOption">
					            <option value="title">제목</option>
					            <option value="content">내용</option>
					            <option value="writer">운동</option>
					          </select> 
					        
					        <input type="text" name="searchKeyword">
					        <input type="submit" value="검색" ></td>
						</tr>
						</form>
						<tr>
							<td class="board_title">번호</td>
							<td class="board_title">아이디</td>
							<td class="board_title">이름</td>
							<td class="board_title">전화번호</td>
							
							<td class="board_title">이름</td>
							<td class="board_title">시작</td>
							<td class="board_title">종료</td>
							<td class="board_title">락커대여</td>
						</tr>
						</tr>
						<c:forEach items="${lrdto}" var="rldto">
						<tr>
							<td class="board_content">${rldto.rnum }</td>
							<td class="board_content">${rldto.rid }</td>
							<td class="board_content">${rldto.rname }</td>
							<td class="board_content">${rldto.rtel }</td>
							<td class="board_content">${rldto.rprice }</td>
							<td class="board_content">
								<c:out value="${fn:substring(rldto.rsdate,0,20) }"></c:out></td>
							<td class="board_content">
								<c:out value="${fn:substring(rldto.redate,0,20) }"></c:out></td>
							<td class="board_content" ><button onclick="location.href='mrent'">대여관리</button></td>
							
						
						</tr>
						</c:forEach>
							
						
						<tr>
							<td colspan="10" align="right">
								<input class="button" value="예약하기" onclick="location.href='checktest'">
								<input class="button" value="뒤로가기" onclick="location.href='index'">
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