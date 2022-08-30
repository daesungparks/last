<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
<meta charset="UTF-8">
<title>정보 수정 완료</title>
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
							<tr>
								<td colspan="2"><span class="content_text" >${memberDto.mname }님의 회원정보를 수정하였습니다.</span></td>
							</tr>
							<tr>
								<td><span class="content_text" >MEMBER ID :</span></td>
								<td><span class="info_text">${memberDto.mid }</span></td>
							</tr>
							<tr>
								<td><span class="content_text" >PASSWORD :</span></td>
								<td><span class="info_text">${memberDto.mpw }</span></td>
							</tr>
							<tr>
								<td><span class="content_text" >NAME :</span></td>
								<td><span class="info_text">${memberDto.mname }</span></td>
							</tr>
							<tr>
								<td><span class="content_text" >EMAIL :</span></td>
								<td><span class="info_text">${memberDto.memail }</span></td>
							</tr>
								<tr>
								<td><span class="content_text" >Etel :</span></td>
								<td><span class="info_text">${memberDto.mtel }</span></td>
							</tr>
								<tr>
								<td><span class="content_text" >Eaddress :</span></td>
								<td><span class="info_text">${memberDto.maddress }</span></td>
							</tr>
							<tr>
								<td><span class="content_text" >JOINDATE :</span></td>
								<td><span class="info_text">${memberDto.mdate }</span></td>
							</tr>
							<tr>
								<td colspan="2" align=center>
									<input class="button" type="submit" value="회원정보수정" onclick="location.href='infomodify'">
									<input class="button" type="button" value="홈으로" onclick="location.href='index'">
								</td>
							</tr>
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