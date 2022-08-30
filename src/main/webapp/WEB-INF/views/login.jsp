<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
<script type="text/javascript " src="${pageContext.request.contextPath}/resources/js/login.js"></script>
<meta charset="UTF-8">
<title>로그인</title>
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
		<table width="40%" cellspacing="0" border="10" cellpadding="10">
			<tr height="533">
				<td bgcolor="#626060" align=center >
					<table border="0" cellspacing="0" cellpadding="10">
						<form action ="loginOk" method="post" name="login_form">
							<h1>회원 로그인</h1>
    			<h4>아이디</h4>
    			<span class="input_area">
    				<input type="text" name="mid" id="userId" placeholder="아이디를 입력하세요"></span>
    				
    				<button type="button" id=findBtn onclick="location.href='find_id_form'">아이디찾기</button>
    					
    			<h4>비밀번호</h4>
    			<span class="input_area">
    				<input type="password" name="mpw" id="userPwd" placeholder="비밀번호를 입력하세요" >
    			</span>
    			<button type="button" id=findBtn onclick="location.href='find_pw_form'">비밀번호찾기</button>
    			<h5>
    			
    			</h5>
    			<td colspan="2" align=center>
    			<span class="input_area">
    				<input type="submit" value="로그인" onclick="loginCheck()">&nbsp;&nbsp;
    				<input type="button" value="회원가입" onclick="location.href='join'">
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