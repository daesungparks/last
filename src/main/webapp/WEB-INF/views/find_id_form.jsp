<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
<script type="text/javascript " src="${pageContext.request.contextPath}/resources/js/login.js"></script>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<script>


</script>
</head>
<body bgcolor="black">
	<%@ include file="include/header2.jsp" %>
	<center>
	<table width="75%" cellspacing="0" border="0" cellpadding="20">
	<tr>
		<td align="center">
			<a href=""><span class="index_title01">EPIC PROJECT FITNESS</span></a>
		</td>
	</tr>
	<tr>
		<td align="center">
			<span class="index_title02">You have to exercise, or at some point you'll just break down..</span>
		</td>
	</tr>
	<tr>
		<table width="35%" cellspacing="0" border="10" cellpadding="10">
			<tr height="533">
				<td bgcolor="#626060" align=center >
					<table border="0" cellspacing="0" cellpadding="10">
						<form action="find_id" method="post" name="login_form">
				<div >
					<h3>아이디 찾기</h3>
				</div>
				<div>
					<span class="input_area">
						<label>이름 :</label>
						<input type="text" id="email" name="mname" required>
					</span>
				</div>
				<br>
				<div>
					<span class="input_area">
						<label>이메일 :</label>
						<input type="text" id="email" name="memail" required>
					</span>
					<p >
						<button type="submit" id=findBtn>찾기</button>
						<button type="button" onclick="history.go(-1);" >취소</button>
					</p>
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