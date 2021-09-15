
function pwCheck(){
	var password=$('#password').val();
	if (password.length<4) {
		$('#pMessage').html(' ~~ password 는 4글자 이상  입니다 ~~');
		return false;
	}else if (password.replace(/[a-z.0-9]/gi,'').length > 0) {
		$('#pMessage').html(' ~~ password 는 영문자, 숫자 만 입력 하세요 ~~');
		return false;
	}else {
		$('#pMessage').html('');
		return true;
	}
} //pwCheck

