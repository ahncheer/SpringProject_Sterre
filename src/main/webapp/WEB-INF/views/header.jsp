<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Bootstrap Navbar with Inline Login Form in Dropdown</title>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600"	rel="stylesheet">
<link rel="stylesheet"	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/CSS/header.css" />

</head>
<body style="width: 80%; margin-left: 10%">
<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal.username" var="user_id" />
		<!-- <div id="user_id">안녕하세요. ${user_id }</div> -->
	</sec:authorize>

	<div id="headerNav"	style="position: sticky; top: 0px; background: white; z-index: 6;">
		<br>
		<nav class="navbar navbar-default navbar-expand-lg navbar-light">
			<div class="navbar-header">
				<a class="navbar-brand"	href="${pageContext.request.contextPath }/intro/index">Ste<b>rre</b></a>
				<button type="button" data-target="#navbarCollapse"
					data-toggle="collapse" class="navbar-toggle">
					<span class="navbar-toggler-icon"></span> <span class="icon-bar"></span>
					<span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
			</div>
			<!-- Collection of nav links, forms, and other content for toggling -->
			<div id="navbarCollapse" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
	
					<!-- 소개 dropdown -->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#">소개 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath }/intro/aboutSterre">About
									Sterre</a></li>
							<li><a href="${pageContext.request.contextPath }/intro/wayToCome">Way
									To Come</a></li>
							<li><a href="${pageContext.request.contextPath }/intro/bestFaq">Best
									FAQ</a></li>
						</ul>
					</li>

					
					<!-- 상품 dropdown -->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#">상품 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a
								href="${pageContext.request.contextPath }/goods/goodsClientList?goods_sort=0">전체</a></li>
							<li><a
								href="${pageContext.request.contextPath }/goods/goodsClientList?goods_sort=1">핸드폰케이스</a></li>
							<li><a
								href="${pageContext.request.contextPath }/goods/goodsClientList?goods_sort=2">버즈케이스</a></li>
							<li><a
								href="${pageContext.request.contextPath }/goods/goodsClientList?goods_sort=3">그립톡</a></li>
							<li><a
								href="${pageContext.request.contextPath }/goods/goodsClientList?goods_sort=4">키링</a></li>
							<li><a
								href="${pageContext.request.contextPath }/goods/goodsClientList?goods_sort=5">기타</a></li>
						</ul>
					</li>

					<!-- 상품 dropdown -->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#">게시판 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">후기 모아보기</a></li>
							<li><a href="${pageContext.request.contextPath }/board/list">자유게시판</a></li>
						</ul>
					</li>
				</ul>
				
				<!-- 오른쪽 nav 로그인/마이페이지 -->
				<ul class="nav navbar-nav navbar-right">
				<c:choose>
				
					<c:when test="${user_id eq 'admin'}">
						<li class="dropdown"><a>관리자가 로그인 중입니다. </a> </li>
						<li class="dropdown">
						<a href="${pageContext.request.contextPath }/member/adminPage"><i class="fa fa-sign-in"></i>&nbsp;&nbsp;관리자페이지</a></li>
						<li class="dropdown">
						<a href="${pageContext.request.contextPath }/customLogout"><i	class="fa fa-sign-in"></i>&nbsp;&nbsp;로그아웃</a></li>
					</c:when>
					
					<c:when test="${not empty user_id }">
						<li class="dropdown"><a>${user_id } 님 안녕하세요 </a> </li>
						<li class="dropdown">
						<a href="${pageContext.request.contextPath }/member/myPage"><i class="fa fa-sign-in"></i>&nbsp;&nbsp;마이페이지</a></li>
						<li class="dropdown">
						<a href="${pageContext.request.contextPath }/customLogout"><i	class="fa fa-sign-in"></i>&nbsp;&nbsp;로그아웃</a></li>
					
					</c:when>
				
					<c:otherwise>
						<li class="dropdown">
						<a href="${pageContext.request.contextPath }/customLogin"><i class="fa fa-sign-in"></i>&nbsp;&nbsp;로그인</a></li>
						<li class="dropdown">
						<a href="${pageContext.request.contextPath }/member/signUp"><i	class="fa fa-sign-in"></i>&nbsp;&nbsp;회원가입</a></li>

					</c:otherwise>
				</c:choose>
				
				</ul>
			</div>
		</nav>
	</div>

	

</body>
</html>
