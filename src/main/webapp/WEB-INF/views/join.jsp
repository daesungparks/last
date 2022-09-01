<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
<script type="text/javascript " src="${pageContext.request.contextPath}/resources/js/join.js"></script>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body bgcolor="black">
	<%@ include file="include/header.jsp" %>
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
		<table width="70%" cellspacing="0" border="10" cellpadding="10">
			<tr height="533">
				<td bgcolor=#626060 align=center >
					<table border="0" cellspacing="0" cellpadding="10">
						<form action ="joinOk" method="post" NAME="join_form">
							<h1>회원 가입</h1>
				
				<h4>* 아이디</h4>
				
				<span class="input_area" ><input type="text" maxlength="50" name="mid" onKeydown="inputIdChk()" required></span>
				
				<input type="hidden" name="idDuplication" value="idUncheck">
				
				<h4>* 비밀번호</h4>
				<span class="input_area"><input type="password" maxlength="15" name="mpw" required></span>
				
				<h4>* 비밀번호 확인</h4>
				<span class="input_area"><input type="password" maxlength="15" name="mpw_check" required></span>
				<label id="pwdResult"></label>
				
				<h4>* 이름</h4>
				<span class="input_area"><input type="text" maxlength="5" name="mname" required></span>
				
				<h4>이메일</h4>
				<span class="input_area"><input type="email" name="memail"></span>
				
				
				<h4>연락처</h4>
				<span class="input_area"><input type="tel" maxlength="11" name="mtel"
										placeholder="(-없이)01012345678"></span>
										
				
				<h4>우편번호</h4>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="input_area"><input type="text" name="maddress" class="postcodify_postcode5"></span>
				<button type="button" id="postcodify_search_button">검색</button>
				<h4>도로명주소</h4>
				<span class="input_area"><input type="text" name="maddresss" class="postcodify_address"></span>
				<h4>상세주소</h4>
				<span class="input_area"><input type="text" name="maddressss" class="postcodify_details"></span>
				
				<div class="btnArea">
					<button id="joinBtn">가입하기</button>
					<button id="joinBtn"  onclick="location.href='main'">뒤로가기</button>
				</div>
			</form>
		</div>
	</div>
	
	<!-- 주소 API 스크립트 -->
	<!-- jQuery와 Postcodify를 로딩한다 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
	
	<script>
		function validate(){
			return true;
		}
	</script>
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