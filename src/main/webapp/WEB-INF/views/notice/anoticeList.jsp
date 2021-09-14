<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice BoardList</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css" >
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<script src="resources/myLib/axTest03.js"></script>
</head>
<body>
<c:if test="${message!=null}">
 => ${message}<br> 
</c:if>
<hr>
<table class="noticeTable">
<tr height="40" bgcolor="PaleTurquoise">
	<th>글번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>조회수</th>
</tr>
<c:forEach var="list" items="${Banana}" varStatus="vs">
<tr height="40">
	<td id="${list.bfno}" class="sss2 textLink">${list.bfno}</td>
	<a href="javascript:;" onclick="jsBDetail2(event, ${list.bfno}, ${vs.index})">${list.bftitle}</a>   
</td>	 
	<td>${list.id}</td><td>${list.bfdate}</td><td align="center">${list.bfcnt}</td>
</tr>
<tr><td></td>
	<td colspan="4"><span id="content${vs.index}" class="content" style="background: Lavender"></span></td>
</tr></c:forEach>
</table>

</body>
</html>