<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>   
<%@ page import = "java.text.SimpleDateFormat" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  

<%-- JSTL 버젼으로 바뀌니, import 번잡합도 사라진다. JAVA변수 선언도 사라진다 --%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/common.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/goodsSelectCss.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<title>글 목록</title>


</head>
<body>
	<%@ include file="../header.jsp" %>
<!-- 
<h2>${param.goods_sort }확인용ㅇ </h2>
<h2>Client List Page</h2>
 -->
 
<h2>관리자용주문내역보기</h2>




<br>

<!-- 
<div id="basicList" style="text-align:center;">

	<p>이름 : ${dto.goodsname }</p>
	<p>가격 : ${dto.goodsprice }</p>
	<p>가격 : ${dto.goodsSort }</p>

</div>
 -->
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>

 
















