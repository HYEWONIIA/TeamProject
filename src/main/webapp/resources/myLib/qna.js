$(function() {
	
	$('.textLink').hover(function() {
		$(this).css({
			fontSize:"1.2em",
			fontWeight:"bold",
			color:"DeepSkyBlue",
			cursor:"pointer"
		}) //css
	}, function() {
		$(this).css({
			fontSize:"",
			fontWeight:"bold",
			color:"Blue",
			cursor:"default"
		}) //css
  }); //hover 

	// ** Ajax ReviewCriPageList	
  $('#reviewp').click(function(){
	$.ajax({
		type:'Get',
		url:'rcplist',
		success:function(resultPage){
			$('#resultArea1').html(resultPage);
		},
		error:function(){
			alert('~~ 서버 오류 !!! 잠시후 다시 하세요 ~~');
		}
	}); //ajax
  }); //rcplist_click

	// ** Ajax NoticeCriPageList	
  $('#noticep').click(function(){
	$.ajax({
		type:'Get',
		url:'ncplist',
		success:function(resultPage){
			$('#resultArea1').html(resultPage);
		},
		error:function(){
			alert('~~ 서버 오류 !!! 잠시후 다시 하세요 ~~');
		}
	}); //ajax
  }); //ncplist_click

	// ** Ajax QnACriPageList	
  $('#qnap').click(function(){
	$.ajax({
		type:'Get',
		url:'qcplist',
		success:function(resultPage){
			$('#resultArea1').html(resultPage);
		},
		error:function(){
			alert('~~ 서버 오류 !!! 잠시후 다시 하세요 ~~');
		}
	}); //ajax
  }); //qcplist_click
}); //ready


// => title 누르면 review Detail 조회
// test 1) JS function
function titleRDetail(title) {
	$.ajax({
		type: 'Get',
		url: 'ardetail',
		data:{
			title:title
		},
		success:function(resultPage){
			$('#resultArea1').html(resultPage);
		},
		error:function(){
			alert('~~ 서버 오류 !!! 잠시후 다시 하세요 ~~');
		}	
	}); //ajax
} //aidBList