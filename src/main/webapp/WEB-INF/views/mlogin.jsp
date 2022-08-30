<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
<script type="text/javascript " src="${pageContext.request.contextPath}/resources/js/login.js"></script>
<meta charset="UTF-8">
<title>** profile</title>
</head>
<body bgcolor="black">
	<%@ include file="include/header2.jsp" %>
	<center>
	<table width="75%" cellspacing="0" border="0" cellpadding="20">
	<tr>
		<td align="center">
			<span class="index_title01">EPIC PROJECT FITNESS</span>
		</td>
	</tr>
	<tr>
		<td align="center">
			<span class="index_title02">You have to exercise, or at some point you'll just break down..</span>
		</td>
	</tr>
	<tr>
		<table width="40%" cellspacing="0" border="10" cellpadding="10">
			<tr height="533">
				<td bgcolor="#626060" align=center >
					<table border="0" cellspacing="0" cellpadding="10">
						<form action ="mloginOk" method="post" name="login_form">
							<h1>관리자 로그인</h1>
    			<h4>아이디</h4>
    			<span class="input_area">
    				<input type="text" name="mmid" id="userId" placeholder="아이디를 입력하세요">
    			</span>
    			<h4>비밀번호</h4>
    			<span class="input_area">
    				<input type="password" name="mmpw" id="userPwd" placeholder="비밀번호를 입력하세요">
    			</span>
    			<h5>
    			
    			</h5>
    			<td colspan="2" align=center>
    			<span class="input_area">
    				<input type="submit" value="로그인" onclick="mloginCheck()">&nbsp;&nbsp;
    				<input type="button" value="뒤로가기" onclick="location.href='main'">&nbsp;&nbsp;
    			</span>
    			</td>
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