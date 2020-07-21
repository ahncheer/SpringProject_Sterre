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
<h2>Client List Page</h2>

<form name="myform">
	<input type="radio" name="goods_select" id="goods_select" value="1" onclick="loadDoc()"/> 핸드폰케이스
	<input type="radio" name="goods_select" id="goods_select" value="2" onclick="loadDoc()"/> 버즈케이스
	<input type="radio" name="goods_select" id="goods_select" value="3" onclick="loadDoc()"/> 그립톡
	<input type="radio" name="goods_select" id="goods_select" value="4" onclick="loadDoc()"/> 키링
	<input type="radio" name="goods_select" id="goods_select" value="5" onclick="loadDoc()"/> 파우치
</form>

<hr>

<div id="basicList">
	<c:choose>
		<c:when test="${empty list || fn:length(list) == 0}">
		</c:when>
		<c:otherwise>
		
		<c:forEach var="dto" items="${list }">
				<div style="background-color: #eee; width: 200px; height: auto;
							margin: 2%; border: 1px dashed #46bdc6;display: inline-block;">
					<a href="goodsClientView?goodsuid=${dto.goodsuid }">
						<div style="background-color: grey"><img src="${dto.goodspic1 }" style="width: 200px;"></div>
						<p>이름 : ${dto.goodsname }</p>
						<p>가격 : ${dto.goodsprice }</p>
						<p>가격 : ${dto.goodsSort }</p>
					</a>
				</div>
		</c:forEach>
		
		</c:otherwise>
	</c:choose>
</div>
<div id="demo"></div>

<br>
</body>
</html>

 
<script>
function loadDoc() {
	var b = $('input[name="goods_select"]:checked').val()
	// alert(b); //확인용
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	      document.getElementById("demo").innerHTML =
	      this.responseText;
	    }
	  };
	  xhttp.open("GET", "goodsClientListCheck?goods_select="+b, true);
	  xhttp.send();
      $("#basicList").html("");
}
</script>























