<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
<script type="text/javascript " src="${pageContext.request.contextPath}/resources/js/join.js"></script>
<script type="text/javascript " src="${pageContext.request.contextPath}/resources/js/delete.js"></script>

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
		<table width="70%" cellspacing="0" border="10" cellpadding="10">
			<tr height="533">
				<td bgcolor="#626060" align=center >
		<table>
                     <form action="DeleteOk" method="post" name="delete_form">
                           
                           <input class="input_box" type="hidden" value="${memberDto.mid}" name="mid">
                           <input class="input_box" type="hidden" value="${memberDto.mpw}" name="mpw">
                           
                        <tr>
                           <td><span class="content_text">비밀번호 입력 &nbsp;</span></td>
                           <td><input  class="input_box" type="password" name="mpw_check" ></td>
                        </tr>
                        <tr>
                           <td colspan="2">
                              <input class="button" type="button" value="회원탈퇴" onclick="deleteCheck()">
                              <input class="button" type="button" value="취소" onclick="location.href='index'">
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