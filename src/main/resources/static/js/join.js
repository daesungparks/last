/**
 * 
 */
 
 /* 가입 양식 체크*/
 
 function joinCheck() {
	
	if(document.join_form.mid.value.length == 0) {
		alert("아이디는 필수 입력사항입니다. ");
		join_form.mid.focus();
		return;
	}
	
	if(document.join_form.idDuplication.value != "idCheck") {
		alert("아이디 중복체크를 해주세요. ");
		join_form.mid.focus();
		return;
	}
	
	if(document.join_form.mid.value.length < 5) {
		alert("아이디는 4글자 이상이여야 합니다. ");
		join_form.mid.focus();
		return;
	}
	
	if(document.join_form.mpw.value.length == 0) {
		alert("비밀번호는는 필수 입력사항입니다. ");
		join_form.mpw.focus();
		return;
	}
	
	if(document.join_form.mpw_check.value.length == 0) {
		alert("비밀번호 체크는  필수 입력사항입니다. ");
		join_form.mpw_check.focus();
		return;
	}
	
	if(document.join_form.mpw.value != document.join_form.mpw_check.value) {
		alert("비밀번호 체크가 일치하지 않습니다. 비밀번호 체크사항을 다시 확인해주세요.");
		join_form.mpw.focus();
		return;
	}
	
	if(document.join_form.mname.value.length == 0) {
		alert("이름은 필수 입력사항입니다. ");
		join_form.mname.focus();
		return;
	}
	
	if(document.join_form.memail.value.length == 0) {
		alert("이메일은 필수 입력사항입니다. ");
		join_form.memail.focus();
		return;
	}
	
	document.join_form.submit();
	
}


function mjoinCheck() {
	
	if(document.join_form.mmid.value.length == 0) {
		alert("아이디는 필수 입력사항입니다. ");
		join_form.mmid.focus();
		return;
	}
	
	if(document.join_form.idDuplication.value != "idCheck") {
		alert("아이디 중복체크를 해주세요. ");
		join_form.mmid.focus();
		return;
	}
	
	if(document.join_form.mmid.value.length < 5) {
		alert("아이디는 4글자 이상이여야 합니다. ");
		join_form.mmid.focus();
		return;
	}
	
	if(document.join_form.mmpw.value.length == 0) {
		alert("비밀번호는는 필수 입력사항입니다. ");
		join_form.mmpw.focus();
		return;
	}
	
	if(document.join_form.mmpw_check.value.length == 0) {
		alert("비밀번호 체크는  필수 입력사항입니다. ");
		join_form.mmpw_check.focus();
		return;
	}
	
	if(document.join_form.mmpw.value != document.join_form.mmpw_check.value) {
		alert("비밀번호 체크가 일치하지 않습니다. 비밀번호 체크사항을 다시 확인해주세요.");
		join_form.mmpw.focus();
		return;
	}
	
	if(document.join_form.mmname.value.length == 0) {
		alert("이름은 필수 입력사항입니다. ");
		join_form.mmname.focus();
		return;
	}
	
	if(document.join_form.mmemail.value.length == 0) {
		alert("이메일은 필수 입력사항입니다. ");
		join_form.mmemail.focus();
		return;
	}
	
	document.join_form.submit();
	
}

 function openIdChk() {
	
	window.name = "parentForm";
	window.open("src/main/webapp/WEB-INF/views/IdCheckForm.jsp",
			"chkForm", "width=500, height=300, resizable = no, scrollvars = no");
	
}


function inputIdChk() {
	document.userInfo.idDuplication.value = "idUncheck";
}









