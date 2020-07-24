<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Ubuntu"	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"	href="path/to/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath }/CSS/loginCss.css" />
<title>LogOut</title>
</head>
<body>
  <%@ include file="header.jsp" %>

<div class="main" style="margin-top: 70px; height: 270px">
<p class="sign" align="center">로그아웃하시겠습니까?</p>
	<form class="form1" action="${pageContext.request.contextPath}/customLogout" method='post'>
		<button class="submit" >로그아웃</button>
		
		<!-- <p class="forgot" align="center"><a href="#">Forgot Password?</p> -->
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
	</form>
</div>



</body>
</html>


