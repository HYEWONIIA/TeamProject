
// ** QnA PW 무결성 확인사항
// password : 길이(4이상)

function pwCheck(){
	var password=$('#password').val();
	if (password.length<4) {
		$('#pMessage').html(' ~~ password 는 4글자 이상  입니다 ~~');
		return false;
	}else {
		$('#pMessage').html('');
		return true;
	}
} //pwCheck


