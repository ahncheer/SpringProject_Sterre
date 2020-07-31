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
<link rel="stylesheet" type="text/CSS" href="${pageContext.request.contextPath }/CSS/viewmodal.css" />
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
 <div class="content">
	<div id="list">
	
			<h3>주문 목록</h3>
			<hr>
			<table>
				<tr>
					<th>주문번호</th>
					<th>구매자명</th>
					<th>상품명</th>
					<th>구매개수</th>
					<th>구매일</th>
					<th>후기</th>
					
				</tr>
		
			<c:choose>
				<c:when test="${empty list || fn:length(list) == 0}">
				</c:when>
				<c:otherwise>
				
				<c:forEach var="dto" items="${list }">
					<c:choose>
					<c:when test="${param.username eq dto.username}">
					<tr>
						<td>STERRE0${dto.buyuid }</td>
						<td>${dto.username }</td>
						<td>${dto.goodsname }</td>
						<td>${dto.buynum }</td>
						<td>${dto.buydate }</td>
						<td><a href="${pageContext.request.contextPath }/review/reviewWrite?username=${dto.username}&goodsname=${dto.goodsname }">후기 작성</a></td>
					</tr>			
					</c:when></c:choose>
				</c:forEach>
				</c:otherwise>
			</c:choose>
	
			</table>
	</div>
</div>

    
    
    
    
</body>
</html>




<script>
var $button         = $('.button'),
$modalContainer = $('#modal-container'),
$body           = $('body'),
$content        = $('.content'),
btnId;

$button.on('click', function () {
btnId = $(this).attr('id');

$modalContainer
        .removeAttr('class')
        .addClass(btnId);
$content
        .removeAttr('class')
        .addClass('content');

$body.addClass('modal-active');

if (btnId == 'two' || btnId == 'three'|| btnId == 'four') {
    $content.addClass(btnId);
}

});

$modalContainer.on('click', function () {
$(this).addClass('out');
$body.removeClass('modal-active');
if ($(this).hasClass(btnId)) {
    
    $content.addClass('out');
    
}
});


</script>






