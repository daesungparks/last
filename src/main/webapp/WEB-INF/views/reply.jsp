<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<title>댓글 입력</title>
</head>
<body>
	<h2>댓글 입력하기</h2>
	<hr>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<form action="reply">
			
			<tr>
				<td>글번호</td>
				<td><input type="text" name="qid" size="50" value="${contentDto.qid }"></td>
			</tr>
			<tr>
				<td>글쓴이</td>
				<td><input type="text" name="bname" size="50" value="${contentDto.qname }"></td>
			</tr>
			<tr>
				<td>글제목</td>
				<td><input type="text" name="btitle" size="50" value="[답변]${contentDto.qemail }"></td>
			</tr>
			<tr>
				<td>글내용</td>
				<td>
					<textarea name="bcontent" rows="10" cols="40">${contentDto.qcontent }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="답변쓰기">									
					<input type="button" value="목록" onclick="location.href='list'">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>