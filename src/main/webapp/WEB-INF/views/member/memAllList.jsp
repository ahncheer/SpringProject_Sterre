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
	<% int memberCnt = 0; %>

<div id="list">

		<table>
			<tr>
				<th style="background-color: #fff">useruid</th>
				<th style="background-color: #fff">이름</th>
				<th id="threewidth" style="background-color: #fff">이메일</th>
				<th id="threewidth" style="background-color: #fff">비밀번호</th>
				<th id="twowidth" style="background-color: #fff">전화번호</th>
				<th id="twowidth" style="background-color: #fff">등록날짜</th>
				<th id="threewidth" style="background-color: #fff">유저주소</th>
			</tr>
	
		<c:choose>
			<c:when test="${empty list || fn:length(list) == 0}">
			</c:when>
			<c:otherwise>
			
			<c:forEach var="dto" items="${list }">
			<tr>
				<td>${dto.useruid }</td>
				<td><a href="memView.do?useruid=${dto.useruid }">${dto.username }</a></td>
				<td id="threewidth" >${dto.useremail }</td>
				<td id="threewidth" >${dto.password }</td>
				<td id="twowidth">${dto.usertel }</td>
				<td id="twowidth">${dto.userregdate }</td>
				<td id="threewidth" >${dto.userAdd }</td>
			</tr>		
			<% memberCnt++; %>		
			</c:forEach>
			
			</c:otherwise>
		</c:choose>
			<div style="width: 100%;padding: 5px;">등록된 유저의 수 : <%=memberCnt %>명 <br></div> 

		</table>
		<br>
</div>
</body>
</html>

    
<style>

#threewidth {
background-color: #ddd;
width: 230px;
word-break: break-all;
}

#twowidth {
background-color: #eee;
width: 80px;
word-break: break-all;
}


 table,  th, td{
 table-layout:fixed; 
	border:1px solid #666;
	border-collapse:collapse;
	font-size: 10px;
	/* overflow:scroll; */

	
}
 thead th{
	padding:3px 5px;
	text-transform:uppercase;
	color:#333;
	width: 40px;
}
 tbody td, tbody th{
	padding:5px 10px;
	background:#eee;
	width: 40px;
}
 tbody th{
	color:#333;
}

</style>
    














