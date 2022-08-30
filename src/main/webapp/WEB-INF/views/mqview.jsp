<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">

<script type="text/javascript " src="${pageContext.request.contextPath}/resources/js/question.js"></script>
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
		<table width="80%" cellspacing="0" border="10" cellpadding="10">
			<tr height="533">
				<td bgcolor="#626060" align=center >
					<table border="0" cellspacing="0" cellpadding="10">
						<form action ="mqmodify" method="post" name ="question_form">
							<input type="hidden" name="qnum" value="${contentDto.qnum }">
							<tr>
								<td><span class="content_text" >아이디 :</span></td>
								<td><input class="input_box1" type="text" name="qid" value="${contentDto.qid }" readonly></td>
							</tr>
							<tr>
								<td><span class="content_text" >이름 :</span></td>
								<td><input class="input_box1"type="text" name="qname" value="${contentDto.qname }"></td>
							</tr>
						
							<tr>
								<td><span class="content_text" >이메일 :</span></td>
								<td><input class="input_box1" type="text" name="qemail" value="${contentDto.qemail }"></td>
							</tr>
							<tr>
								<td><span class="content_text" >날짜 :</span></td>
								<td><input class="input_box1" type="text" name="qdate" value="${contentDto.qdate }" readonly></td>
							</tr>
								<tr>
								<td valign=top><span class="content_text" >질문 :</span></td>
								<td>
									<textarea class="questiontext" rows="5" cols="25" name="qcontent"> ${contentDto.qcontent } </textarea>
								</td>
							</tr>
							<%
								String sid = (String) session.getAttribute("sid");
								String qid = request.getAttribute("boardId").toString();
								if(sid == null){
									sid = "GUEST";
								}
								
								if((sid != null) && (sid.equals(qid)) || (sid.equals("admin"))){
							%>   
						
										
								</tr>
								
								
									<td colspan="2" align="right">
									<input class="button" type="button" value="수정" onclick="boardCheck()">&nbsp;&nbsp;
										<input class="button" type="button" value="삭제" onclick="location.href='delete?qnum='+${contentDto.qnum}">	
										</td>
										<%
											}
										%>
										<td >
										<input  class="button" type="button" value="뒤로가기" onclick="location.href='list'">
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