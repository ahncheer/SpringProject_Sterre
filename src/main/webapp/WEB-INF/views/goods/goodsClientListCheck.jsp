<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  


<%
	int goods_select = Integer.parseInt(request.getParameter("goods_select"));
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/common.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<title>Document</title>

</head>
<body>
<!--
${param.goods_select }  확인용ㅇ 
<hr>
-->
<br>
<div>

	<c:choose>
		<c:when test="${empty list || fn:length(list) == 0}">
		</c:when>
		<c:otherwise>
		
		<c:forEach var="dto" items="${list }">
			<c:if test="${dto.goodsSort == param.goods_select}">
			
				<div style="background-color: #eee; width: 200px; height: auto;
							margin: 2%; border: 1px dashed #46bdc6;display: inline-block;">
					<a href="goodsClientView?goodsuid=${dto.goodsuid }">
						<div style="background-color: grey"><img src="${dto.goodspic1 }" style="width: 200px;"></div>
						<p>이름 : ${dto.goodsname }</p>
						<p>가격 : ${dto.goodsprice }</p>
						<p>가격 : ${dto.goodsSort }</p>
					</a>
				</div>
				
			</c:if>
		
		</c:forEach>
		
		</c:otherwise>
	</c:choose>
</div>

</body>
</html>






















