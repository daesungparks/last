<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
<script type="text/javascript " src="${pageContext.request.contextPath}/resources/js/question.js"></script>
<meta charset="UTF-8">
<title>글 작성</title>
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
				<td bgcolor="#626060" align=left >
					<table border="0" cellspacing="0" cellpadding="10">
						<form  action ="write" method="post" name ="question_form" enctype="multipart/form-data">
							<tr>
								<td ><span class="content_text" >닉네임 :</span></td>
								<td><input class="input_box1" type="text" name="qid" value="${sid}" readonly></td>
							</tr>
							<tr>
								<td><span class="content_text" >이름 :</span></td>
								<td><input class="input_box1"type="text" name="qname" value="${memberDto.mname }"></td>
							</tr>
							<tr>
								<td><span class="content_text" >이메일 :</span></td>
								<td><input class="input_box2" type="text" name="qemail" value="${memberDto.memail }"></td>
							</tr>
							<tr>
								<td valign=top><span class="content_text" >질문 :</span></td>
								<td>
									<textarea class="questiontext" rows="10" cols="100" name="qcontent"></textarea>
								</td>
							</tr>
							 <tr id="upload">
							      <td class="col1">업로드 파일</td>
							      <td class="col2"><input type="file" name="uploadFiles"></td>
							    </tr>	
												
							<tr>
								<td colspan="2" align=right>
									<input class="button" type="button" value="글 작성" onclick ="boardCheck()">&nbsp;
									<input class="button" type="button" value="리스트" onclick="location.href='list'">
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