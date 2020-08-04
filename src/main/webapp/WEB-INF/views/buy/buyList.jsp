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
	<% int buyCnt = 0; %>
 <div class="content">
	<div id="list">
	
			<table>
				<tr>
					<th style="background-color: #fff">주문번호</th>
					<th style="background-color: #fff">구매자명</th>
					<th id="threewidth" style="background-color: #fff">상품명</th>
					<th style="background-color: #fff">구매개수</th>
					<th id="threewidth" style="background-color: #fff">구매일</th>
					<th id="twowidth" style="background-color: #fff">후기 작성</th>
					
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
						<td id="threewidth">${dto.username }</td>
						<td>${dto.goodsname }</td>
						<td>${dto.buynum }</td>
						<td id="threewidth">${dto.buydate }</td>
					<td id="threewidth"> <a href="#" class="modal-trigger" data-modal="modal-name">후기작성</a> </td>

					<div style="width : 0px;">
						    <!-- Modal -->
						<div class="modal" id="modal-name" style="z-index: 10;">
						  <div class="modal-sandbox"></div>
						  <div class="modal-box">
						    <div class="modal-header">
						      <div class="close-modal">&#10006;</div> 
						      <h1>후기 작성</h1>
						    </div>
						    <div class="modal-body">
						    	<c:import url="/review/reviewWrite?username=${dto.username }&goodsname=${dto.goodsname }"></c:import>
						      <br />
						      <button class="close-modal" style="float: right;margin-left: 5px;margin-right: 5px;">Close!</button>
						    </div>
						  </div>
						</div>
					</div>
					
					</tr>	
					<% buyCnt++; %>	
					</c:when></c:choose>	
				</c:forEach>
				</c:otherwise>
			</c:choose>
					<div style="width: 100%;padding: 5px;">주문 목록 : <%=buyCnt %>개 <br></div> 
			</table>
	</div>
</div>

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



<!-- Aditional Styles -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet">



<style>
.modal,
.modal-box {
  z-index: 8;
}

.modal {
  display: none; 
  position: fixed;
  width: 100%;
  height: 100%;
  left: 0;
  top: 0;
  background: rgb(0,0,0);
  background: rgba(0,0,0,.8);
  overflow: auto;
}

.modal-box {
  position: relative;
  width: 80%;
  max-width: 920px;
  margin: 100px auto;
  animation-name: modalbox;
  animation-duration: .4s;
  animation-timing-function: cubic-bezier(0,0,.3,1.6);
}

.modal-header {
  padding: 20px 40px;
  background: #546E7A;
  color: #ffffff;
}

.modal-body {
  background: #ECEFF1;
  padding: 60px 40px;
}

/* Close Button */
.close-modal {
  text-align: right;
  cursor: pointer;
}

/* Animation */
@-webkit-keyframes modalbox {
  0% {
    top: -250px; 
    opacity: 0;
  }
  100% {
    top: 0; 
    opacity: 1;
  }
}

@keyframes modalbox {
  0% {
    top: -250px; 
    opacity: 0;
  }
  100% {
    top: 0; 
    opacity: 1;
  }
}


.modal-trigger, button {
  top: 50%;
  left: 50%;
  padding: 10px 20px;
  background: transparent;
  color: #46bdc6;
  text-decoration: none;
}

.modal-trigger {
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  -o-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  transition: ease .2s;
}

button {
  border: 1px solid #333333;
  outline: none;
  color: #333333;
}



</style>


<script>

$(".modal-trigger").click(function(e){
  e.preventDefault();
  dataModal = $(this).attr("data-modal");
  $("#" + dataModal).css({"display":"block"});
  // $("body").css({"overflow-y": "hidden"}); //Prevent double scrollbar.
});

$(".close-modal, .modal-sandbox").click(function(){
  $(".modal").css({"display":"none"});
  // $("body").css({"overflow-y": "auto"}); //Prevent double scrollbar.
});



</script>



