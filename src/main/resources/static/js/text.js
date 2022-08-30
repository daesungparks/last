/**
 * 
 */
 
 /* 가입 양식 체크*/
 
 


  $(document).ready(function(){
		  $('.initial').hide();
		  $('.initial').fadeIn(6000);
		  $('.tdTtl').mouseenter(function(){
			  //To do
		  });
	  });
	
	  function fnGoBoardCreate(){
		  $('#frmList').attr({action : "/board/boardCreate.do"}).submit();
	  }
	  
	  function fnGoBoardDetail(listseq){
		  $('#frmSeq').val(listseq);
		  $('#frmList').attr({action : "/board/boardDetail.do"}).submit();
	  }	  
	  
	  function fnLogOut(){
		  $('#frmList').attr({action : "/board/boardLogout.do"}).submit();
	  }ss







