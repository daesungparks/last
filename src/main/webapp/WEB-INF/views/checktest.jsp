<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
<script type="text/javascript " src="${pageContext.request.contextPath}/resources/js/join.js"></script>
<meta charset="UTF-8">
<title>pt 예약 신청</title>
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
			<tr height="533">
				<td bgcolor=#626060 align=center >
					<table border="0" cellspacing="0" cellpadding="10">
						<form action ="calwrite" method="post" NAME="join_form">
							<h1>PT 예약</h1>
				
				<h4>* 아이디</h4>
				
				<span class="input_area" ><input type="text" maxlength="50" name="cid" value="${sid}" readonly onKeydown="inputIdChk()" required></span>
				
				<input type="hidden" name="idDuplication" value="idUncheck">
					
				<h4>* 이름</h4>
				<span class="input_area"><input type="text" maxlength="5" name="cname" value="${sname}" readonly required ></span>
				
				<table>
				<tr>
					<td>
					<h4>* 종목</h4>
				<span class="input_area">
					<select  name="cenjoy">  
						<option value="헬스">헬스</option>			         
						 <option value="PT">PT</option>				  
						<option value="필라테스">필라테스</option>			         
						 <option value="스피닝">스피닝</option>				  
						 <option value="댄스">댄스</option>     
					</select>
				</span>
					</td>
					<td width="30"></td>
					<td>
						<h4>* 트레이너</h4>
				<span class="input_area"><select name="ctech">  
				<option value="주정훈">주정훈(남)</option>			         
				 <option value="김민준">김민준(남)</option>				  
				<option value="이진수">이진수(남)</option>			         
				 <option value="김예지">김예지(여)</option>				  
				 <option value="홍자영">홍자영(여)</option>     
				</select></span>
					</td>
				</tr>
				
				</table>
				
				<h4>* 시작</h4>
				<span class="input_area"><input type="date" maxlength="20" name="cstartDate" required></span>
				<h4>* 종료</h4>
				<span class="input_area"><input type="date" maxlength="20" name="cendDate" required></span>
			
				<h4>* 건의사항</h4>
				
				<span class="input_area"><input type="text" maxlength="100" name="cmemo" required placeholder=" 입력해주세요"></span>
				
				

			
				
										
				<div class="btnArea" >
				
					<button  id="joinBtn">예약하기</button><button id="joinBtn" onclick="location.href='callist'">뒤로가기</button>
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