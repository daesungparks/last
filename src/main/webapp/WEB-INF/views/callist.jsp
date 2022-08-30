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
	<%@ include file="include/header.jsp" %>
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
						
						  <form action="callist">
						 <td  id="search_select" align="right" colspan="10">
						 
					          <select name="searchOption">
					            <option value="title">이름</option>
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
							<td class="board_title">종목</td>
							<td class="board_title">트레이너</td>
							<td class="board_title" width="40%">건의사항</td>
							<td class="board_title">이름</td>
							<td class="board_title">시작</td>
							<td class="board_title">종료</td>
							<td class="board_title">락커대여</td>
						</tr>
						</tr>
						<c:forEach items="${callist}" var="caldto">
						<tr>
							<td class="board_content">${caldto.cnum }</td>
							<td class="board_content">${caldto.cid }</td>
							<td class="board_content">${caldto.cenjoy }</td>
							<td class="board_content">${caldto.ctech }</td>
							<td class="board_content" style="text-align: left;">
							<a href="calqview?cnum=${caldto.cnum}" style="color:black">
							<c:choose>
							<c:when test="${fn:length(caldto.cmemo) > 25}">
								<c:out value="${fn:substring(caldto.cmemo,0,25)}">					
								</c:out>
							</c:when>
							<c:otherwise>
								<c:out value="${caldto.cmemo }"></c:out>
							</c:otherwise>
							</c:choose>
							</a>
							</td>
							<td class="board_content">${caldto.cname }</td>
							<td class="board_content">
								<c:out value="${fn:substring(caldto.cstartdate,0,20) }"></c:out></td>
							<td class="board_content">
								<c:out value="${fn:substring(caldto.cenddate,0,20) }"></c:out></td>
							<td class="board_content" ><button onclick="location.href='rent'">대여신청</button></td>
							
						
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