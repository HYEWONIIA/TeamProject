<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Review Insert **</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
<link rel="stylesheet" type="text/css" href="resources/myLib/star.css" >
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<script src="resources/myLib/star.js"></script>
</head>
<body>
<h2 class="n">홈페이지 이름</h2>
<form action="rinsert" method="post" id="myForm" enctype="multipart/form-data"> 
<table class="reviewTable" text>
	<tr height="40">
	    <td bgcolor="Silver" align="center">Id</td>
		<td><input type="text" name="id" value="${loginID}" readonly></td>
	</tr>
	<tr height="40">	
		<td bgcolor="Silver" align="center">City</td>
		<td><select name="brcity" id="city">
		  <option value="거제">거제</option>
		  <option value="경주">경주</option>
		  <option value="고양">고양</option>
		  <option value="과천">과천</option>
			<option value="광양">광양</option>
			<option value="광주">광주</option>
			<option value="군산">군산</option>
			<option value="김해">김해</option>
			<option value="남양주">남양주</option>
			<option value="대구">대구</option>
			<option value="대전">대전</option>
			<option value="목포">목포</option>
			<option value="부산">부산</option>
			<option value="부천">부천</option>
			<option value="삼척">삼척</option>
			<option value="서귀포">서귀포</option>
			<option value="서산">서산</option>
			<option value="서울" selected="selected">서울</option>
			<option value="성남">성남</option>
			<option value="수원">수원</option>
			<option value="시흥">시흥</option>
			<option value="아산">아산</option>
			<option value="안동">안동</option>
			<option value="안산">안산</option>
			<option value="양산">양산</option>
			<option value="여주">여주</option>
			<option value="용인">용인</option>
			<option value="울산">울산</option>
			<option value="원주">원주</option>
			<option value="인천">인천</option>
			<option value="의왕">의왕</option>
			<option value="의정부">의정부</option>
			<option value="전주">전주</option>
			<option value="제주">제주</option>
			<option value="제천">제천</option>
			<option value="진주">진주</option>
			<option value="창원">창원</option>
			<option value="천안">천안</option>
			<option value="청주">청주</option>
			<option value="춘천">춘천</option>
			<option value="충주">충주</option>
			<option value="평택">평택</option>
			<option value="태백">태백</option>
			<option value="파주">파주</option>
			<option value="포항">포항</option>
			<option value="하남">하남</option>
			<option value="화성">화성</option>
		 </select></td>
	</tr>
	<tr height="40">
	     <td bgcolor="Silver" align="center">Title</td>
		 <td><input type="text" name="brtitle"></td>
	</tr>	
	<tr height="40">
	     <td bgcolor="Silver" align="center" width="100">Content</td>
		 <td><textarea name="brcontent" rows="30" cols="60"></textarea></td>
	</tr>
           
  <tr height="40"><td bgcolor="Silver">첨부파일</td>
  	  <td>
  	  <img src="" class="select_img"><br>
  	  <input type="file" name="uploadfilef" id="uploadfilef">
  	  <script>
			$('#uploadfilef').change(function(){
				if(this.files && this.files[0]) {
					var reader = new FileReader;
			 			reader.onload = function(e) {
		 				$(".select_img").attr("src", e.target.result)
		 					.width(100).height(100); 
		 				} // onload_function
		 				reader.readAsDataURL(this.files[0]);
		 		} // if
			}); // change	
  		</script>  
  		</td>
  </tr>  
	<tr>
	<td></td>
	   <td width="500"> <%@ include file="star.html" %> </td>
	</tr>
	<tr>
	  <td></td>
	  <td><input type="hidden" name="brating" id="brating"> </td>
	</tr>
	<tr height="40"><td></td>
		<td align="center"><input type="submit" value="전송">&nbsp;&nbsp;
			<input type="reset" value="취소">
		</td>
	</tr>
</table> </form>

<c:if test="${message!=null}">
<hr>
=> ${message}
</c:if>
<br><hr>
<div align="center">
<a href="rlist">후기창</a>&nbsp;
<a href="home">HOME</a>
</div>
</body>
</html>