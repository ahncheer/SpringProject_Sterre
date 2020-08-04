<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/common.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/CSS/header.css" />
<title>Insert title here</title>
</head>
<body>
  <%@ include file="../header.jsp" %>
  <h1 style="text-align: center;color: #777" class="text-shadow-pop-br">my page</h1>

<hr style="width : 50%; margin: 30px;    margin-left: 25%;">
<c:import url="/member/memView?username=${user_id }" />
<hr style="width : 50%; margin: 30px;    margin-left: 25%;">

<h3 style="margin-top: 30px; margin-bottom: 20px; text-align: center;">구매내역 조회</h3>
<div id="admindiv">
<c:import url="/buy/buyList?username=${user_id }" />
</div>

<hr style="width : 50%; margin: 30px;    margin-left: 25%;">
<h3 style="margin-top: 30px; margin-bottom: 20px; text-align: center;">작성한 후기 조회</h3>
<div id="admindiv">
<c:import url="/review/reviewList?username=${user_id }" />
</div>

<hr style="width : 50%; margin: 30px;    margin-left: 25%;">
<h3 style="margin-top: 30px; margin-bottom: 20px; text-align: center;">작성한 게시물 조회</h3>
<div id="admindiv">
<c:import url="/board/boardList?username=${user_id }" />
</div>
<br><br><br>

   <%@ include file="../footer.jsp" %>
 

</body>
</html>




<style>
#admindiv {

padding: 10px;
width: 100%;
height : 400px;
overflow: auto;
background-color: aliceblue;
border: 2px dotted #46bdc6;
border-radius: 20px;
padding: 20px;

}

  #admindiv::-webkit-scrollbar {
    width: 15px;
  }
  #admindiv::-webkit-scrollbar-thumb {
    background-color: #2f3542;
    border-radius: 10px;
    background-clip: padding-box;
    border: 4px solid transparent;
    border-left: 3px solid #fff00;
  }
 #admindiv::-webkit-scrollbar-track {
    background-color: grey;
    border-radius: 10px;
    box-shadow: inset 0px 0px 5px white;
  }

</style>