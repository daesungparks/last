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
		<table width="90%" cellspacing="0" border="10" cellpadding="10">
			<tr height="533">
				<td bgcolor="#626060" align=center >
					<table border="0" cellspacing="0" cellpadding="10">
						<form action ="qmodify" method="post" name ="question_form" enctype="multipart/form-data">

							
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
								<td><input class="input_box1" type="read" name="qdate" value="${contentDto.qdate }" readonly></td>
							</tr>
								<tr>
								<td valign=top><span class="content_text" >질문 :</span></td>
								<td>
									<textarea class="questiontext" rows="5" cols="25" name="qcontent"> ${contentDto.qcontent } </textarea>
								</td>
							</tr>
							
							
							<tr>
							
							<td>
							 <c:if test="${fileDto.fileextension == 'jpg' or fileDto.fileextension == 'png' or fileDto.fileextension == 'gif' or fileDto.fileextension == 'bmp'}">
									  	<p id="image_view">
									  		<img src="${pageContext.request.contextPath }/resources/uploadfiles/${fileDto.filename}">
									  	</p>
									  
									  </c:if>
									  
									  
									  <br>
									  <p id="file_info">
									  	
									  	<a href="${pageContext.request.contextPath }/resources/uploadfiles/${fileDto.filename}" style="text-decoration:none">
									  	<span class="file_info">※ 첨부파일 : ${fileDto.fileurl}</span></a>
									  </p>
								</td>
								<td><hr></td>
							</tr>
							<tr>
							
							<td></td>
							<td>
									
				
							
							<%
								String sid = (String) session.getAttribute("sid");
								String qid = request.getAttribute("boardId").toString();
								if(sid == null){
									sid = "GUEST";
								}
								
								if((sid != null) && (sid.equals(qid)) || (sid.equals("admin"))){
							%>   
						
							
								
									
										<td colspan="2" align="right">
										<input class="button" type="button" value="수정" onclick="boardCheck()"><br>
										<input class="button" type="button" value="삭제" onclick="location.href='delete?qnum='+${contentDto.qnum}">	
										</td>
										<%
											}
										%>
										<td></td>
										<td align="right">
										<input  class="button" type="button" value="뒤로가기" onclick="location.href='list'">
										
										</td>
								
								</tr>	
								======================================================================================================
								
						</form>
						<!-- 해당 글의 댓글 리스트 출력 -->
									  <table border="1" cellpading="0" cellspacing="0" width="750">
									  	<c:forEach items="${rblist }" var="rbdto">
									  		<tr>
									  			<td>
									  				댓글쓴이 : ${rbdto.rbid }
									  			</td>
									  		</tr>
									  		<tr>
									  			<td>
									  				${rbdto.rbcontent }
									  			</td>
									  		</tr>
									  		<tr>
									  			<td>
									  				댓글 게시일: ${rbdto.rbdate}
									  			</td>
									  		</tr>
									  	</c:forEach>
									  </table>
									  </td>
									  </tr>
							
							<td id="comment_box">
									  <form action="replyOk">
									  <input type="hidden" name="boardnum" value="${contentDto.qnum }">
									    
									    <textarea name ="rbcontent" placeholder="댓글을 입력해주세요"></textarea>
										 <input type="image" id="ok_ripple" src="${pageContext.request.contextPath }/resources/img/hh4.png" >
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