<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${list[0].goodsuid }</title> <!-- title에 글제목 넣기 -->
</head>

<body>
  <%@ include file="../header.jsp" %>

<h2>읽기 ${list[0].buyuid }</h2>


고유번호 : ${list[0].buyuid }<br>
이름 : ${list[0].username }<br>
가격 : ${list[0].goodsuid }<br>
설명 : ${list[0].buynum }<br>
등록일 : ${list[0].buydate }<br>

</div>

<hr>


		<c:choose>
			<c:when test="${empty list || fn:length(list) == 0}">
			</c:when>
			<c:otherwise>
			
			<c:forEach var="dto" items="${list }">
			<tr>
				<td>${dto.buyuid }</td>
				<td>${dto.username }</td>
				<td>${dto.goodsuid }</td>
				<td>${dto.buynum }</td>
				<td>${dto.buydate }</td>
			</tr>			
			</c:forEach>
			
			</c:otherwise>
		</c:choose>
		
<hr>
<br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>














