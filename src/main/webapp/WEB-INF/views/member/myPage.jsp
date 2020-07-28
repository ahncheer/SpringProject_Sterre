<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/common.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/CSS/header.css" />
<title>Insert title here</title>
</head>
<body>
  <%@ include file="../header.jsp" %>

<h1>myPage</h1>
${pageContext.request.contextPath }/buy/buyList?username=${user_id }

<div style="background-color: #ddd; width : 50%;height: 300px">
	<c:import url="http://localhost:8082/sterre_test/buy/buyList" >
		<c:param name="username" value="${user_id }"/>
	</c:import>

</div>
wdwd
</body>
</html>