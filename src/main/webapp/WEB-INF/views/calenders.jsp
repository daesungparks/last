<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
<script type="text/javascript " src="${pageContext.request.contextPath}/resources/js/join.js"></script>
<meta charset="UTF-8">
<title>락커 대여</title>
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
				<td bgcolor=#626060 align=center >
					<table border="0" cellspacing="0" cellpadding="10">
						<form action ="rentgoOk" method="post" NAME="join_form">
							<h1>락커 대여 신청 확인</h1>
								=============================================================================================
				<table>
				<tr>
				<td>
				<h4> 회원 아이디 </h4>
				<span class="input_area" ><input type="text" maxlength="15" name="rid" value ="${lockDto.rid }"required  readonly></span>
				</td>
				<td>
				<h4> 회원 이름 </h4>
				<span class="input_area"><input type="text" maxlength="15" name="rname" value ="${lockDto.rname }" required readonly></span>
				</td>
				</tr>
				</table>
				<table>
				<tr>
				<td>
				<h4> 회원 전화 번호</h4>
				<span class="input_area"><input type="text" maxlength="15" name="rtel" value ="${lockDto.rtel }"  required readonly ></span>
				</td>
				</tr>
				</table>
				<br>
				<br>
				=============================================================================================
				<table>
				<tr>
				<td>
				<h4> 락커 번호 </h4>
				<span class="input_area"><input type="text" maxlength="15" name="rnum" value ="${lockDto.rnum }"  required readonly></span>
				</td>
				<td>
				<h4> 가격 </h4>
				<span class="input_area"><input type="text" maxlength="15" name="rprice" value ="${lockDto.rprice}"  required readonly></span>
				</td>
				</tr>
				</table>
				<table>
				<tr>
				<td>
				<h4> 시작 날짜 </h4>
				<span class="input_area"><input type="text" maxlength="15" name="rsdate" value ="${lockDto.rsdate}"  required></span>
				</td>
				<td>
				<h4> 종료 날짜 </h4>
				<span class="input_area"><input type="text" maxlength="15" name="redate"  value ="${lockDto.redate}" required></span>
				</td>
				</tr>
				</table>
				
				<div class="btnArea">
					
					<button id="joinBtn" onclick="location.href='rentgoOk'">수정</button>
					<button id="joinBtn" onclick="location.href='rent'">뒤로가기</button>
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