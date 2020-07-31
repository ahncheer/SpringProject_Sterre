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
	<%@ include file="../header.jsp" %>
	

 <div class="content">
	<div id="list">
	
			  <h1 style="text-align: center;color: #777" class="text-shadow-pop-br"><b>후기 전체 목록</b></h1>
			<hr>
			
			
			<table>
				<tr>
					<th>후기번호</th>
					<th>구매자명</th>
					<th>상품명</th>
					<th>후기내용</th>
					<th>후기작성일</th>
					<th>상품 사진</th>
				</tr>
		
			<c:choose>
				<c:when test="${empty list || fn:length(list) == 0}">
				</c:when>
				<c:otherwise>
				
				<c:forEach var="dto" items="${list }">
					<tr>
						<td>${dto.reviewuid }</td>
						<td>${dto.username }</td>
						<td>${dto.goodsname }</td>
						<td>${dto.reviewcontent }</td>
						<td>${dto.reviewdate }</td>
						<td> <c:import url="/goods/showgoodspic?goodsname=${dto.goodsname }" /> </td>
					</tr>			
				</c:forEach>
				</c:otherwise>
			</c:choose>
	
			</table>
	</div>
</div>

    
    
    
    
</body>
</html>









