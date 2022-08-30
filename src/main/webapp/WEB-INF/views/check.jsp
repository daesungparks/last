<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">

<script type="text/javascript " src="${pageContext.request.contextPath}/resources/js/question.js"></script>

 <style>
        .seat {
            width: 50px;
            height: 50px;
        }
        
        .clicked {
            background-color: red;
            color: white;
        }
    </style>


<meta charset="UTF-8">
<title>add locker</title>
</head>
<body bgcolor="black">
	<%@ include file="include/mheader.jsp" %>
	<center>
	
	
	
	
	 <div class="seat-wrapper" type="button" name="rent" ></div>
	 
	 <div ><button onclick="location.href='read'">대여</button></div>
	<%@ include file="include/footer.jsp" %>
	</center>
</body>
 <script>
    let test = [];
    let selectedSeats = new Array();
    let selectedSeatsMap = [];
    const seatWrapper = document.querySelector(".seat-wrapper");
    let clicked = "";
    let div = "";

    for (let i = 0; i < 10; i++) {
        div = document.createElement("div");
        seatWrapper.append(div);
        for (let j = 0; j < 10; j++) {
            const input = document.createElement('input');
            input.type = "button";
            input.name = "seats"
            input.classList = "seat";
            //3중포문을 사용하지 않기위해 
            mapping(input, i, j);
            div.append(input);
            input.addEventListener('click', function(e) {
                console.log(e.target.value);
                //중복방지 함수
                selectedSeats = selectedSeats.filter((element, index) => selectedSeats.indexOf(element) != index);

                //click class가 존재할때(제거해주는 toggle)
                if (input.classList.contains("clicked")) {
                    input.classList.remove("clicked");
                    clicked = document.querySelectorAll(".clicked");
                    selectedSeats.splice(selectedSeats.indexOf(e.target.value), 1);
                    clicked.forEach((data) => {
                        selectedSeats.push(data.value);
                    });
                    //click class가 존재하지 않을때 (추가해주는 toggle)
                } else {
                    input.classList.add("clicked");
                    clicked = document.querySelectorAll(".clicked");
                    clicked.forEach((data) => {
                        selectedSeats.push(data.value);
                    })
                }
                console.log(selectedSeats);
            })
        }
    }

    function mapping(input, i, j) {
        if (i === 0) {
            input.value = "A" + j;
        } else if (i === 1) {
            input.value = "B" + j;
        } else if (i === 2) {
            input.value = "C" + j;
        } else if (i === 3) {
            input.value = "D" + j;
        } else if (i === 4) {
            input.value = "E" + j;
        } else if (i === 5) {
            input.value = "F" + j;
        } else if (i === 6) {
            input.value = "G" + j;
        } else if (i === 7) {
            input.value = "H" + j;
        }else if (i === 8) {
            input.value = "I" + j;
        }else if (i === 9) {
        
        }
    }
    

    
    
    
</script>
</html>