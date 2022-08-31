<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<title> 홈 화면</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
   <style>
 body {
      padding: 30px;
    }

    .container {
      width: 250px;
      height: 400px;
      /*        부모의 자식 요소가 3차원의 애니메이션 효과를 가질때, 300px의 거리에서 보는 원근감을 줌*/
      perspective: 300px;
    }

    .container .item {
      width: 250px;
      height: 400px;
      border: 1px solid #828282;
     
      font-size: 35px;
      /*카드의 뒷면을 안보이게 처리-카드가 뒤집히면 뒷면이 안보임*/
      backface-visibility: hidden;
      transition: 1s;
    }

    .container .item.front {
      /* 앞면 카드가 부유하게 되어, 뒷면 카드가 아래에서 위로 올라감 -> 요소 두개가 겹치게 됨*/
      position: absolute;
      /* 명시적으로 기본값 설정, 없어도 됨*/
      transform: rotateY(0deg);
    }

    .container:hover .item.front {
      transform: rotateY(180deg);
    }

    .container .item.back {
      /*y축을 중심으로 -180도 회전*/
      transform: rotateY(-180deg);
      
    }

    .container:hover .item.back {
      transform: rotateY(0deg);
    }
    
    div{
    	float:left;
    	color:white;
    	font-size:40px;
    }
    
    div.transbox {
    	 margin: 30px;
    background-color: #ffffff;
    border: 1px solid black;
    opacity: 0.6;
    filter: alpha(opacity=60);
    }
    
    div.transbox p {
    margin: 5%;
    font-weight: bold;
    color: #000000;
}

	img {
    opacity: 0.4;
    filter: alpha(opacity=40); /* For IE8 and earlier */
}
  </style>

<body bgcolor="black" >
<%@ include file="include/header.jsp" %>
   
<center>

	<table width="75%" cellspacing="0" border="0" cellpadding="20">
	<tr>
		<td align="center">9
			<a href="index"><span class="index_title01">EPIC PROJECT FITNESS</span></a>
		</td>
	</tr>
	<tr>
		<td align="center">
			<span class="index_title02"></span>
		</td>
	</tr>
	<tr>
	
		
		
		<table width="70%"  cellspacing="0" border="0" cellpadding="10">
		<tr>
		<td colspan="4">
			<div class="container">
      <div class="item front" ><img src="${pageContext.request.contextPath }/resources/img/qqhel2.jpg"></div>
      <div class="item back" class="transbox"><input type="image" src="${pageContext.request.contextPath }/resources/img/qqhel2.jpg" onclick="location.href='list'" ><p>자유게시판</p></div>
    </div>
    	<div class="container">
      <div class="item front" ><img src="${pageContext.request.contextPath }/resources/img/qqhel5.png"></div>
      <div class="item back" class="transbox"><input type="image" src="${pageContext.request.contextPath }/resources/img/qqhel5.png" onclick="location.href='callist'" ><p>PT예약등록</p></div>
    </div>
    	<div class="container">
      <div class="item front" ><img src="${pageContext.request.contextPath }/resources/img/qqhel3.png"></div>
      <div class="item back" class="transbox"><input type="image" src="${pageContext.request.contextPath }/resources/img/qqhel3.png" onclick="location.href='rent'" ><p>락커대여</p></div>
    </div>
    	<div class="container">
      <div class="item front" ><img src="${pageContext.request.contextPath }/resources/img/qqhel4.jpg"></div>
      <div class="item back" class="transbox"><input type="image" src="${pageContext.request.contextPath }/resources/img/qqhel4.jpg" onclick="location.href='read'" ><p>공지사항</p></div>
    </div>
    	<div class="container">
      <div class="item front" ><img src="${pageContext.request.contextPath }/resources/img/qqhel1.jpg"></div>
      <div class="item back" class="transbox"><input type="image" src="${pageContext.request.contextPath }/resources/img/qqhel1.jpg" onclick="location.href='address'" ><p>오시는길</p></div>
    </div>
    
    </td>
   
    </tr>
    <tr>
    <td>
    <br>
    <br>
    <br>
    <br>
    </td>
    </tr>
    
		
		
		
		</table>
	</tr>
	</table>
	
	</center>
	
    	<%@ include file="include/footer.jsp" %>
</body>

</html>