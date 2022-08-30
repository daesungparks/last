/**
 * 
 */
 
 var xhr=new XMLHttpRequest();
 var selectSeat;
 var selectDate;
 var selectTime=[];
 var clicked=0;
 var maxPeopleOfDate=60;
 var maxPeopleOfTime=6;
 var date=new Date();
 function setSeat(seat){
	seat=seat;
}
 function nextTear(){
	console.log(year);
	var year=document.getElementById('year').innerHTML;
	var month=document.getElementById('month').innerHTML;
	year*=1;
	year+=1;
	console.log(year+"nextyear");
	if(year<=2050){
		clearDateAndButton();
		var seat=selectSeat;
		showDate(selectSeat,month,year);
		document.getElementById('year').innerHTML=year;
	}else{
		year=2050;
		alert('마지막연도 입니다');
	}
}
function beforeYear(){
	console.log(year);
	var year=document.getElementById('year').innerHTML;
	var month=document.getElementById('month').innerHTML;
	year*=1;
	year-=1;
	console.log(year+"beforeYear");
	if(year>=date.getFullYear()){
		clearDateAndButton();
		var seat=selectSeat;
		showDate(selectSeat,month,year);
		document.getElementById('year').innerHTML=year;
	}else{
		alert('처음 연도 입니다');
	}	
}

function nextMonth(){
	console.log(month);
	var mont=document.getElementById('month').innerHTML;
	month*=1;
	month+=1;
	console.log(month+"nextMOnth");
	if(month<=12){
		clearDateAndButton();
		var year=document.getElementById('year').innerHTML;
		var seat= selectSeat;
		showDate(selectSeat,month,year);
		document.getElementById('month').innerHTML=month;
	}else{
		alert('마지막월 입니다');
	}
}
function beforeMonth(){
	console.log(month);
	var month=document.getElementById('month').innerHTML;
	month*=1;
	month-=1;
	console.log(month+"nextMOnth");
	if(month>date.getMonth()){
		clelarDateAndButton();
		var year = document.getElementById('year').innerHTML;
		showDate(selectSeat,month,year);
		document.getElementById('month').innerHTML=month;
	}else{
		month=date.getMonth();
		alert('마지막월 입니다');
	}
}

function showMonth(seat){
	document.getElementById('month').innerHTML=date.getMonth()+1;
	document.getElementById('year').innerHTML=date.getFullYear();
	var month=document.getElementById('month').innerHTML;
	var year=document.getElementById('year').innerHTML;
	selectSeat=seat;
	clearDateAndButton();
	document.getElementById('dayArea').innerHTML=("<th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th><th>일</th>");
	showDate(seat,month,year);
}

function showDate(seat,month,year) {
	seat=seat;
	console.log(seat);
	console.log(month+'showDate');
	let data=JSON.stringify({
		"seat":seat,
		"month":month,
		"year":year
	});
	xhr.open('POST','/getDateBySeat',true);
	xhr.setRequestHeader("content-Type",'application/json');
	xhr.withCredentials = true;
	xhr.send(data);
	xhr.onload=function(){
		if(xhr.status==200){
			var result = JSON.parse(xhr.response);
			var dates=result.dates;
			console.log(dates);
			$('#dateArea').empty();
			$('#nextButton').append("<input type='button' value='다음달' onclick='nextMonth()'>");
			$('#beforeButton').append("<input type='button' value='이전달' onclick='beforeMonth()'>");
			$('#nextButton2').append("<input type='button' value='다음연도' onclick='nextYear()'>");
			$('#beforeButton2').append("<input type='button' value='이전연도' onclick='beforeYear()'>");
			var num=1;
			for(var i=1;i<dates.length;i++){
				if(dates[i][2]==100){
					$('#dateArea'+num).append("<td><input type='button' id='date' onclick='getTime("+dates[i][0]+")' value='"+dates[i][0]+"' disabled></td>");
				}
				else{
					$('#dateArea'+num).append("<td><input type='button' id='date' onclick='getTime("+dates[i][0]+")' value='"+dates[i][0]+"'></td>");
				}
				if(i%7==0){
					num+=1;
				}
			}
		
		}else{
			alert('통신실패');
		}
	}
}

function getTime(date){
	console.log(selectSeat+'getTime');
	console.log(date+'getTime');
	console.log(document.getElementById('month').innerHTML+"gettime");
	selectDate=date;
	let data=JSON.stringify({
		"seat":selectSeat,
		"date":selectDATE,
		"month":document.getElementById('month').innerHTML,
		"year":document.getElementById('year').innerHTML
	});
	xhr.open('POST','/getTimeByDate',true);
	xhr.setRequestHeader("Conthent-Type",'application/json');
	xhr.withCredentials = true;
	xhr.send(data);
	xhr.onload=function(){
		if(xhr.status==200){
			$('#timeArea').empty();
			$('#insertOrCancle').empty();
			var result=JSON.parse(xhr.response);
			var times=result.times;
			for(var i=0;i<times.length;i++){

                    if(times[i][2]==100){

                        console.log('시간이 지났거나 예약이 다참');

                        $('#timeArea').append("<input type='checkbox' name='time' value='"+times[i][0]+"' disabled>"+times[i][0]+'시~'+times[i][0]+'시'+times[i][1]+"/"+maxPeopleOfTime+"&nbsp;");

                    }

                    else{

                        $('#timeArea').append("<input type='checkbox' name='time' value='"+times[i][0]+"'>"+times[i][0]+'시~'+times[i][0]+'시'+times[i][1]+"/"+maxPeopleOfTime+"&nbsp;");

                    }

                    if(i>=3&&i%3==0){

                        $('#timeArea').append('<br>');

                    }

                }

                $('#insertOrCancle').append("<input type='button' onclick='buy()' value='예약하기'>");
			}else{
				alert('통신 실패');
			}
		}
	}




