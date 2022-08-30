<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
<script type="text/javascript " src="${pageContext.request.contextPath}/resources/js/join.js"></script>

<meta charset="UTF-8">
<title>회원 정보 수정</title>
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
		<table width="70%" cellspacing="0" border="10" cellpadding="10">
			<tr height="533">
				<td bgcolor="#626060" align=center >
					<table border="0" cellspacing="0" cellpadding="10">
						<form action ="infomodifyOk" method="post" name="join_form">
							<h4>* 아이디</h4>
				<span class="input_area" ><input type="text" maxlength="13" name="mid" value="${memberDto.mid}" required readonly></span>
				
				
				<h4>* 비밀번호</h4>
				<span class="input_area"><input type="password" maxlength="15" name="mpw" value="${memberDto.mpw}" required ></span>
				
				<h4>* 비밀번호 확인</h4>
				<span class="input_area"><input type="password" maxlength="15" name="mpw_check" required></span>
				<label id="pwdResult"></label>
				
				<h4>* 이름</h4>
				<span class="input_area"><input type="text" maxlength="5" name="mname" value="${memberDto.mname}" required ></span>
				
				<h4>이메일</h4>
				<span class="input_area"><input type="email" name="memail" value="${memberDto.memail}"></span>
				
				<h4>전화번호</h4>
				<span class="input_area"><input type="tel" name="mtel" value="${memberDto.mtel}"></span>
				
										
				<br><br>
			
				<td colspan="3" align=center>
    			<span class="input_area">
    				<input type="submit" value="회원정보수정"  onclick ="joinCheck()">&nbsp;
    				<input type="submit" value="홈으로" onclick="location.href='index'">
    				<input type="button" value="회원탈퇴" onclick="location.href='mdelete'">
    			</span>
    			</td>
						</form>
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