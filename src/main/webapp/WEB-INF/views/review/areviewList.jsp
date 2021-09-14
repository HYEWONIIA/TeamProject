<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review BoardList</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css" >
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<script src="resources/myLib/review.js"></script>
</head>
<body>
<c:if test="${message!=null}">
 => ${message}<br> 
</c:if>
<hr>
<table class="reviewTable">
<tr height="40" bgcolor="PaleTurquoise">
	<th>글번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>조회수</th>
</tr>
<c:forEach var="list" items="${Banana}" varStatus="vs">
<tr height="40">
	<!-- Test 3. 
		=> 3.1) css 활용 : display 속성 -> sss1
		=> 3.2) JQ 메서드 show() , hide() 활용 -> sss2 
	-->
	<td id="${list.brno}" class="sss2 textLink">${list.brno}</td>
	<td>
	<td>
		<!-- 답글 등록후 indent 에 따른 들여쓰기 
			=> 답글인 경우에만 적용  -->
		<c:if test="${list.indent>0}">
			<c:forEach begin="1" end="${list.indent}">
				<span>&nbsp;&nbsp;</span>
			</c:forEach>
			<span style="color:Purple">└</span>
		</c:if>
	
		<!-- 로그인 했을때만 글내용을 볼 수 있도록 -->
		<c:if test="${loginID!=null}">
			<a href="rdetail?brno=${list.brno}&id=${list.id}">${list.brtitle}</a>
		</c:if>
		<c:if test="${loginID==null}">
			${list.brtitle}
		</c:if>
		
		<a href="javascript:;" onclick="jsBDetail2(event, ${list.brno}, ${vs.index})">${list.brtitle}</a>	
	</td>
	<td>${list.id}</td><td>${list.brdate}</td><td align="center">${list.brcnt}</td>
</tr>
<tr><td></td>
	<td colspan="4"><span id="content${vs.index}" class="content" style="background: Lavender"></span></td>
</tr></c:forEach>
</table>
<div id="content"></div>
<br><hr>
<c:if test="${loginID!=null}"> 	
	<a href="binsertf">새글등록</a>&nbsp;&nbsp;
	<a href="logout">Logout</a>&nbsp;&nbsp;
</c:if>  
<c:if test="${loginID==null}"> 
	<a href="loginf">로그인</a>&nbsp;&nbsp;
	<a href="joinf">회원가입</a>&nbsp;&nbsp;
</c:if>
<a href="home">HOME</a>
</body>
</html>