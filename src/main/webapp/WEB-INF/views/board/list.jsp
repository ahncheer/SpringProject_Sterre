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


		<h1 style="text-align: center;color: #777" class="text-shadow-pop-br"><b>자유게시판</b></h1>
		<hr>
<div id="mainWrapper">

		<ul>

			<!-- 게시판 목록  -->
			<li>
				<ul id ="ulTable">
					<li>
						<ul>
							<li>No</li>
							<li>제목</li>
							<li>작성일</li>
							<li>작성자</li>
							<li>조회수</li>
						</ul>
					</li>
		<c:choose>
			<c:when test="${empty list || fn:length(list) == 0}">
			</c:when>
			<c:otherwise>
			
			<c:forEach var="dto" items="${list }">
			
					<li>
						<ul>
							<li>${dto.uid }</li>
							<li class="left"><a href="${pageContext.request.contextPath }/board/view?uid=${dto.uid }">${dto.subject }</a></li>
							<li style="word-break: break-all;">${dto.regDate }</li>
							<li>${dto.name }</li>
							<li>${dto.viewCnt }</li>
						</ul>
					</li>
			</c:forEach>
			
			</c:otherwise>
		</c:choose>

		</ul>
		<br><br>
		
		
		
	
		
		<c:choose>
		<c:when test="${not empty user_id }">
			<button onclick="location.href='${pageContext.request.contextPath }/board/write'"
		id="form_button" class="btn success" style="float : right">신규등록</button>
		</c:when>
	</c:choose>
	</div>
	<br><br>
<br><br><br><br><br><br>
<div>
  <%@ include file="../footer.jsp" %>
</div>
</body>
</html>

<style type="text/css">

	ul, li{ 
	    list-style:none;
	    text-align:center;
	    padding:0;
	    margin:0;
    }

    #mainWrapper{
    	width: 800px;
		margin: 0 auto; /*가운데 정렬*/
		height: 500px;
	}

	#mainWrapper > ul > li:first-child {
		text-align: center;
		font-size:14pt;
		height:40px;
		vertical-align:middle;
		line-height:30px;
	}

	#ulTable {margin-top:10px;}
	

	#ulTable > li:first-child > ul > li {
		background-color:#c9c9c9;
		font-weight:bold;
		text-align:center;
	}

    #ulTable > li > ul {
    	clear:both;
    	padding:0px auto;
    	position:relative;
    	min-width:40px;
    }
    #ulTable > li > ul > li { 
    	float:left;
    	font-size:10pt;
    	border-bottom:1px solid silver;
    	vertical-align:baseline;
    }    

    #ulTable > li > ul > li:first-child           	{width:10%;} /*No 열 크기*/
    #ulTable > li > ul > li:first-child +li       	{width:45%;} /*제목 열 크기*/
    #ulTable > li > ul > li:first-child +li+li    	{width:20%;} /*작성일 열 크기*/
    #ulTable > li > ul > li:first-child +li+li+li 	{width:15%;} /*작성자 열 크기*/
    #ulTable > li > ul > li:first-child +li+li+li+li{width:10%;} /*조회수 열 크기*/

    #divPaging {
  		clear:both; 
    	margin:0 auto; 
    	width:220px; 
    	height:50px;
    }

    #divPaging > div {
	    float:left;
	    width: 30px;
	    margin:0 auto;
	    text-align:center;
     }

    #liSearchOption {clear:both;}
    #liSearchOption > div {
	    margin:0 auto; 
	    margin-top: 30px; 
	    width:auto; 
	    height:100px; 
	   
    }

    .left {
    	text-align : left;
    }


#form_button {
  background: none;
  border: solid 1px #474544;
  color: #474544;
  cursor: pointer;
  display: inline-block;
  font-family: 'Helvetica', Arial, sans-serif;
  font-size: 0.675em;
  outline: none;
      padding: 5px 20px;
  text-transform: uppercase;
  -webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

#form_button:hover {
  background: #474544;
  color: #F2F3EB;
}
</style>

	












