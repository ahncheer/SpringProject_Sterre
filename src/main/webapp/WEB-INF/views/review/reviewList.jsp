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
 	<% int reviewCnt = 0; %>
 <div class="content">
	<div id="list">
	
			
			
			<table>
				<tr>
					<th style="background-color: #fff">후기번호</th>
					<th id="twowidth" style="background-color: #fff">구매자명</th>
					<th id="twowidth" style="background-color: #fff">상품명</th>
					<th id="threewidth" style="background-color: #fff">후기내용</th>
					<th id="twowidth" style="background-color: #fff">후기작성일</th>
					<th id="twowidth" style="background-color: #fff">삭제하기</th>
				</tr>
		
			<c:choose>
				<c:when test="${empty list || fn:length(list) == 0}">
				</c:when>
				<c:otherwise>
				
				<c:forEach var="dto" items="${list }">
				<c:choose>
					<c:when test="${param.username eq dto.username}">
					<tr>
						<td>${dto.reviewuid }</td>
						<td id="twowidth" >${dto.username }</td>
						<td id="twowidth">${dto.goodsname }</td>
						<td id="threewidth">${dto.reviewcontent }</td>
						<td id="twowidth" >${dto.reviewdate }</td>
						<td id="twowidth" ><button onclick="chkDelete(${list[0].reviewuid })">삭제하기</button></td>
					</tr>	
					<% reviewCnt++; %>		
					</c:when></c:choose>
				</c:forEach>
				</c:otherwise>
			</c:choose>
				<div style="width: 100%;padding: 5px;">등록된 후기 : <%=reviewCnt %>개 <br></div> 
			</table>
	</div>
</div>

    
<script>
function chkDelete(reviewuid){
	// 삭제 여부, 다시 확인 하고 진행하기
	var r = confirm("삭제하시겠습니까?");
	if(r){
		location.href = '/sterre_test/review/reviewDeleteOk?reviewuid=' + reviewuid;
	}
}
</script> 
   
<style>

#threewidth {
background-color: #ddd;
width: 230px;
word-break: break-all;
}

#twowidth {
background-color: #ddd;
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
    
</body>
</html>














