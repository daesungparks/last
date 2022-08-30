<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
<script type="text/javascript " src="${pageContext.request.contextPath}/resources/js/join.js"></script>
<meta charset="UTF-8">
<title>** profile</title>
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
				<td bgcolor=#626060 align=center >
					<table border="0" cellspacing="0" cellpadding="10">
						<form action ="mjoinOk" method="post" NAME="join_form">
							<h1>관리자 회원 가입</h1>
				
				<h4>* 아이디</h4>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="input_area" ><input type="text" maxlength="50" name="mmid" onKeydown="inputIdChk()" required></span>
				<button id="idCheck" type="button" onclick="openIdChk()">중복확인</button>
				<input type="hidden" name="idDuplication" value="idUncheck">
				
				<h4>* 비밀번호</h4>
				<span class="input_area"><input type="password" maxlength="15" name="mmpw" required></span>
				
				<h4>* 비밀번호 확인</h4>
				<span class="input_area"><input type="password" maxlength="15" name="mmpw_check" required></span>
				<label id="pwdResult"></label>
				
				<h4>* 이름</h4>
				<span class="input_area"><input type="text" maxlength="5" name="mmname" required></span>
				
				<h4>이메일</h4>
				<span class="input_area"><input type="email" name="mmemail"></span>
				
				
				<h4>연락처</h4>
				<span class="input_area"><input type="tel" maxlength="11" name="mmtel"
										placeholder="(-없이)01012345678"></span>
										
				<div class="btnArea">
					<button id="joinBtn">가입하기</button>
				</div>
			
				
			</form>
		</div>
	</div>

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