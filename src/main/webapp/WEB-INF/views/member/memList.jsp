<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<%-- JSTL 버젼으로 바뀌니, import 번잡합도 사라진다. JAVA변수 선언도 사라진다 --%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/common.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

<title>유저 목록</title>
<style>
table {width: 100%;}
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
</head>
<body>
  <%@ include file="../header.jsp" %>

<div id="list">
		<hr>
		<h2>유저 리스트</h2>
		<table>
			<tr>
				<th>useruid</th>
				<th>이름</th>
				<th>이메일</th>
				<th>비밀번호</th>
				<th>전화번호</th>
				<th>등록날짜</th>
				<th>푸쉬동의여부</th>
				<th>유저주소</th>
			</tr>
	
		<c:choose>
			<c:when test="${empty list || fn:length(list) == 0}">
			</c:when>
			<c:otherwise>
			
			<c:forEach var="dto" items="${list }">
			<tr>
				<td>${dto.useruid }</td>
				<td><a href="memView.do?useruid=${dto.useruid }">${dto.username }</a></td>
				<td>${dto.useremail }</td>
				<td>${dto.password }</td>
				<td>${dto.usertel }</td>
				<td>${dto.userregdate }</td>
				<td>${dto.useralarm }</td>
				<td>${dto.userAdd }</td>
			</tr>			
			</c:forEach>
			
			</c:otherwise>
		</c:choose>

		</table>
		<br>
		<button onclick="location.href='signUp'">신규등록</button>
</div>
</body>
</html>















