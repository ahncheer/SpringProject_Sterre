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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

<title>글 목록</title>

</head>
<body>
	<% int goodsCnt = 0; %>
<table> 
			<thead> 
				<tr > 
					<th style="background-color: #fff">고유번호</th> 
					<th id="twowidth" style="background-color: #fff">이름</th> 
					<th style="background-color: #fff">가격</th> 
					<th id="threewidth" style="background-color: #fff">설명</th> 
					<th id="twowidth" style="background-color: #fff">등록일</th> 
					<th style="background-color: #fff">판매가능수량</th> 
					<th style="background-color: #fff">판매수량</th> 
					<th style="background-color: #fff">좋아요</th> 
					<th id="threewidth" style="background-color: #fff">사진1</th> 
					<th id="threewidth" style="background-color: #fff">사진2</th> 
				</tr> 
			</thead>	
			<tbody> 
			<c:choose>
			<c:when test="${empty list || fn:length(list) == 0}">
			</c:when>
			<c:otherwise>
			<c:forEach var="dto" items="${list }">
				<tr> 
					<td>${dto.goodsuid }</td> 
					<td id="twowidth"><a  href="goodsView?goodsuid=${dto.goodsuid }">${dto.goodsname }</a></td> 
					<td > ${dto.goodsprice }</td>
					<td id="threewidth">${dto.goodsContent }</td>
					<td id="twowidth">${dto.goodsregdate }</td>
					<td >${dto.goodsTotal }</td>
					<td >${dto.goodsLeft }</td>
					<td >${dto.goodsLike }</td>
					<td id="threewidth">${dto.goodspic1 }</td>
					<td id="threewidth">${dto.goodspic2 }</td>
				</tr> 
				<% goodsCnt++; %>
			</c:forEach>
			
			</c:otherwise>
		</c:choose>
			</tbody>		
			<tfoot> 
					<div style="width: 100%;padding: 5px;">등록된 상품 : <%=goodsCnt %>개 <br></div> 
			</tfoot> 
		</table>
		
</body>
</html>




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
}
 tbody th{
	color:#333;
}

</style>










