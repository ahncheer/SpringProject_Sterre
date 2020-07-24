<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Ubuntu"	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"	href="path/to/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath }/CSS/loginCss.css" />
<title>Sign in</title>
</head>
<body>
  <%@ include file="header.jsp" %>

	<h2><c:out value="${error}" /></h2>
	<h2><c:out value="${logout}" /></h2>

	<div class="main" style="margin-top: 20px;">
		<p class="sign" align="center">Sign in</p>
		<form class="form1" method='post'
			action="${pageContext.request.contextPath}/login">
			<input class="un " type="text" align="center" placeholder="Username" name='username' value='admin'> 
			<input class="pass" type="password" align="center" placeholder="Password" name='password' value='sterre'><br> 
			<input	type='checkbox' name='remember-me' align="center" style="margin-left: 150px; margin-bottom: 20px"> Remember Me<br> 
			<input type='submit' class="submit" value='Sign in'><br>
			<!-- <p class="forgot" align="center"><a href="#">Forgot Password?</p> -->
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
		</form>
	</div>

</body>
</html>














