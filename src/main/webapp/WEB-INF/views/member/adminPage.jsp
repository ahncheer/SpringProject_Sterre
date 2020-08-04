<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%@ include file="../header.jsp" %>
  			  <h1 style="text-align: center;color: #777" class="text-shadow-pop-br">admin page</h1>
  
<hr>

<h3>유저 전체 조회</h3>
<div id="admindiv">
<c:import url="/member/memAllList" />
</div>

<hr style="width : 50%;margin: 30px;    margin-left: 25%;">
<h3>상품 전체 조회</h3>
<div id="admindiv">
<c:import url="/goods/goodsAllList" />
</div>

<hr style="width : 50%;margin: 30px;    margin-left: 25%;">
<h3>구매 전체 조회</h3>
<div id="admindiv">
<c:import url="/buy/buyAllList" />
</div>

<hr style="width : 50%;margin: 30px;    margin-left: 25%;">
<h3>후기 전체 조회</h3>
<div id="admindiv">
<c:import url="/review/reviewAdminList" />
</div>

<hr style="width : 50%;margin: 30px;    margin-left: 25%;">
<h3>자유게시판 글 조회</h3>
<div id="admindiv">
<c:import url="/board/BoardAllList" />
</div>

<div><c:import url="../footer." /></div>
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