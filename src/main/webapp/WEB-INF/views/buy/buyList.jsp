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

<title>글 목록</title>
<style>
table {width: 100%;}
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
</head>
<body>
	
<% 	
	String username = request.getParameter("username");
 %>
<div id="list">

		<hr>
		<h2>주문 목록</h2>
		<table>
			<tr>
				<th>buyuid</th>
				<th>username</th>
				<th>goodsuid</th>
				<th>buynum</th>
				<th>buydate</th>
			</tr>
	
		<c:choose>
			<c:when test="${empty list || fn:length(list) == 0}">
			</c:when>
			<c:otherwise>
			
			<c:forEach var="dto" items="${list }">
				<c:choose>
				<c:when test="${param.username eq dto.username}">
				<tr>
					<td>${dto.buyuid }</td>
					<td>${dto.username }</td>
					<td>${dto.goodsuid }</td>
					<td>${dto.buynum }</td>
					<td>${dto.buydate }</td>
				</tr>			
				</c:when></c:choose>
			</c:forEach>
			</c:otherwise>
		</c:choose>

		</table>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>















