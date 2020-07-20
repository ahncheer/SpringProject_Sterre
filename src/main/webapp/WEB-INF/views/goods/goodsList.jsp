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
<div id="list">

		<hr>
		<h2>리스트</h2>
		<table>
			<tr>
				<th>고유번호</th>
				<th>이름</th>
				<th>가격</th>
				<th>설명</th>
				<th>등록일</th>
				<th>전체 개수</th>
				<th>남은 개수</th>
				<th>사진1</th>
				<th>사진2</th>
			</tr>
	
		<c:choose>
			<c:when test="${empty list || fn:length(list) == 0}">
			</c:when>
			<c:otherwise>
			
			<c:forEach var="dto" items="${list }">
			<tr>
				<td>${dto.goodsuid }</td>
				<td><a href="goodsView?goodsuid=${dto.goodsuid }">${dto.goodsname }</a></td>
				<td>${dto.goodsprice }</td>
				<td>${dto.goodsContent }</td>
				<td>${dto.goodsregdate }</td>
				<td>${dto.goodsTotal }</td>
				<td>${dto.goodsLeft }</td>
				<td>${dto.goodspic1 }</td>
				<td>${dto.goodspic2 }</td>
			</tr>			
			</c:forEach>
			
			</c:otherwise>
		</c:choose>

		</table>
		<br>
		<button onclick="location.href='goodsWrite'"
		id="btnWrite" class="btn success">신규등록</button>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>















