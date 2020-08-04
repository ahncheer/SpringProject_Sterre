<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<%
	String goodsname = request.getParameter("goodsname");
%>
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

</head>
<body>

		<c:choose>
			<c:when test="${empty list || fn:length(list) == 0}">
			</c:when>
			<c:otherwise>
			
			<c:forEach var="dto" items="${list }">
			
				<c:choose>
				<c:when test="${dto.goodsname eq param.goodsname}">
					<div>
						<img src ="${dto.goodspic1 }" style="width:300px; height: 300px;" 
						onerror="this.src = 'https://postfiles.pstatic.net/MjAyMDA4MDRfMTcx/MDAxNTk2NTUyNjU2NTMy.PNU4ccUc7DOcWSNeLU815Ug8_9mVEhwdaKtQ8xShwtkg.Dm2uUY1GTMD17WBqqCF4Sw5pG6X-baDYIXTm_BIgtwsg.PNG.ahncheer/logo.png?type=w966'"/>
						
						
					
					</div>
					
				</c:when>
				</c:choose>
					
			</c:forEach>
			
			</c:otherwise>
		</c:choose>

		<br>
</body>
</html>















