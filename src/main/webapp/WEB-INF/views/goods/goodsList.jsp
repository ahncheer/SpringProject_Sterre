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

<div id="list">

		<hr>
		<h2>리스트</h2>
		<table>
			<tr>
				<th>고유번호</th>
				<th>이름</th>
				<th>가격</th>
				<th>설명</th>
				<th>등록일</th>
				<th>판매된 개수</th>
				<th>남은 개수</th>
				<th>좋아요</th>
				<th>사진1</th>
				<th>사진2</th>
			</tr>
	
		<c:choose>
			<c:when test="${empty list || fn:length(list) == 0}">
			</c:when>
			<c:otherwise>
			
			<c:forEach var="dto" items="${list }">
			<tr>
				<th>${dto.goodsuid }</td>
				<td><a href="goodsView?goodsuid=${dto.goodsuid }">${dto.goodsname }</a></td>
				<td>${dto.goodsprice }</td>
				<td>${dto.goodsContent }</td>
				<td>${dto.goodsregdate }</td>
				<td>${dto.goodsTotal }</td>
				<td>${dto.goodsLeft }</td>
				<td>${dto.goodsLike }</td>
				<td>${dto.goodspic1 }</td>
				<td>${dto.goodspic2 }</td>
			</tr>			
			</c:forEach>
			
			</c:otherwise>
		</c:choose>

		</table>
		<br>
		<button onclick="location.href='goodsWrite'"
		id="btnWrite" class="btn success">신규등록</button>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>


<table summary="Submitted table designs"> 
			<caption>Table designs</caption> 
			<thead> 
				<tr> 
					<th scope="col">고유번호</th> 
					<th scope="col">이름</th> 
					<th scope="col">가격</th> 
					<th scope="col">설명</th> 
					<th scope="col">등록일</th> 
					<th scope="col">판매가능수량</th> 
					<th scope="col">판매수량</th> 
					<th scope="col">좋아요</th> 
					<th scope="col">사진1</th> 
					<th scope="col">사진2</th> 
				</tr> 
			</thead>	
			<tbody> 
				<tr> 
					<th scope="row" id="r97"><a href="index.php?css=97#r97">TagBox</a></th> 
					<td><a href="http://www.tagbox.de">TagBox</a></td> 
					<td>Deutschland</td> 
					<td>Table design based on the fresh TagBox style.</td> 
					<td>Table design based on the fresh TagBox style.</td> 
					<td>Table design based on the fresh TagBox style.</td> 
					<td>Table design based on the fresh TagBox style.</td> 
					<td><a href="http://www.tagbox.de/style/tagbox.css" title="Download the TagBox CSS file">Download</a></td> 
					<td><a href="http://www.tagbox.de/style/tagbox.css" title="Download the TagBox CSS file">Download</a></td> 
				</tr> 
				
			</tbody>		
			<tfoot> 
				<tr> 
					<th scope="row">Total</th> 
					<td colspan="4">98 designs</td> 
				</tr> 
			</tfoot> 
		</table>



<style>


table,th,td{
	border:1px solid #666;
	border-collapse:collapse;
	/* overflow:scroll;*/
}
table{
	border:none;
	border-top:1px solid #000;
}
thead th{
	background:url(greychrome.gif) top left repeat-x #fff;
	padding:5px 10px;
	font-size:90%;
	text-transform:uppercase;
	color:#333;
}
tbody td,tbody th{
	font-size:85%;
	padding:5px 10px;
	background:#eee;
}
tbody th{
	background:url(bluechrome.gif) top left repeat-x #fff;
	color:#333;
}
tbody tr.odd td{
	background:#ddd;
}
tbody tr.odd th{
	background:url(greenchrome.gif) top left repeat-x #fff;
	color:#333;
}
tfoot td,tfoot th{
	border:none;
	padding-top:10px;
}
caption{
	font-family:Tahoma;
	text-align:left;
	text-transform:uppercase;
	font-size:130%;
	padding:10px 0;
	color:#036;
}
table a:link{
	color:#369;
}
table a:visited{
	color:#036;
}
table a:hover{
	color:#000;
	text-decoration:none;
}
table a:active{
	color:#000;
}

</style>










