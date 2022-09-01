<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
<meta charset="UTF-8">
<title> 로그인 완료</title>
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
			<tr height="533">
				<td bgcolor="#878686" align="center" >
					<c:choose>
						<c:when test="${checkId == '0'}">
							<script type="text/javascript">
								alert("입력하신 아이디는 존재하지 않는 아이디입니다. 다시 확인해주세요.");
								history.go(-1);								
							</script>						
						</c:when>						
						<c:when test="${checkIdPw == '0' }">
							<script type="text/javascript">
								alert("입력하신 비밀번호가 맞지 않습니다. 다시 확인해주세요.");
								history.go(-1);								
							</script>
						</c:when>						
						<c:otherwise>					
							<span class="content_text">
							${mmname }님 안녕하세요. 반갑습니다.<br>
							아이디 ${mmid }로 로그인에 성공하셨습니다.<br>														
							</span>						
						</c:otherwise>						
						</c:choose>
						<div><button onclick="location.href='mindex'">홈으로</button></div>
				</td>
			</tr>
		</table>
	</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>