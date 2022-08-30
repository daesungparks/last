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
<title>락커대여</title>
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
		<table width="50%" cellspacing="0" border="10" cellpadding="10">
			
			<tr height="533" align="center">
				
				<td bgcolor="#626060" align=center >
				<span class="content_text"> 락커 대여 </span><br><br>
				
					<table width="70%"border="0" cellspacing="0" cellpadding="10">
						
						<input type="hidden" name="mid" value="${mdto.mid }">
						<input type="hidden" name="mname" value="${mdto.mname }">
						<input type="hidden" name="mtel" value="${mdto.mtel }">
						
						
						<tr>
							<td class="board_title">번호</td>
						
							<td class="board_title">가격</td>
							<td class="board_title">사용유무</td>
							
							<td class="board_title">상세정보</td>
							
						</tr>
						</tr>
						<c:forEach items="${ldto}" var="rentdto">
						<input type="hidden" name="use" value="${rentdto.use }">
						<input type="hidden" name="lnum" value="${rentdto.lnum }">
						<input type="hidden" name="lprice" value="${rentdto.lprice }">
						<tr>
							<td class="board_content">${rentdto.lnum }</td>
							<td class="board_content">${rentdto.lprice }</td>
							<c:choose>
								<c:when test="${rentdto.use == '1'}">
									<td class="board_content">사용가능</td>
								</c:when>
								<c:otherwise>
									<td class="board_contents">사용중</td>
								</c:otherwise>
							</c:choose>
							
							<td class="board_content"><input class="button" type="button" value="보기" onclick="location.href='calenders?num='+${rentdto.lnum}"></td>
							
							
				
							
						
						</tr>
						</c:forEach>
							
						
						<tr>
							<td colspan="5" align="right">
								
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