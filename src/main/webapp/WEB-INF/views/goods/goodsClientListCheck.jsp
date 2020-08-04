<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  


<%
	int goods_sort = Integer.parseInt(request.getParameter("goods_sort"));
	int goods_select = Integer.parseInt(request.getParameter("goods_select"));
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/common.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<title>Document</title>

</head>

<style>
#goods_box{
	background-color: #eee; 
	width: 200px; 
	height: auto;
	margin: 10px; 
	border: 1px dashed #46bdc6;
	display: inline-block;
}

#goods_box_in{
background-color: grey;
}
</style>

<body>
<!-- ${param.goods_sort }  확인용ㅇ 
${param.goods_select }  확인용ㅇ 
<hr>
 -->


<div>

<c:choose>
	<c:when test="${empty list || fn:length(list) == 0}">
	</c:when>
	<c:otherwise>
		
			<c:choose>
				<c:when test="${param.goods_sort == 0 && param.goods_select == 0}">
					<c:forEach var="dto" items="${list }">
							<div id="goods_box">
								<a href="goodsClientView?goodsuid=${dto.goodsuid }">
									<div id="goods_box_in"><img src="${dto.goodspic1 }" style="width: 200px;"
									 onerror="this.src = 'https://postfiles.pstatic.net/MjAyMDA4MDRfMTcx/MDAxNTk2NTUyNjU2NTMy.PNU4ccUc7DOcWSNeLU815Ug8_9mVEhwdaKtQ8xShwtkg.Dm2uUY1GTMD17WBqqCF4Sw5pG6X-baDYIXTm_BIgtwsg.PNG.ahncheer/logo.png?type=w966'"></div>
									<p class="pinfo2">${dto.goodsname }</p>
									<p class="pinfo2">${dto.goodsprice }</p>
								</a>
							</div>
					</c:forEach>
				</c:when>
				<c:when test="${param.goods_sort == 0 && param.goods_select > 0}">
					<c:forEach var="dto" items="${list }">
						<c:if test="${dto.goodsCustom == param.goods_select}">
							<div id="goods_box">
								<a href="goodsClientView?goodsuid=${dto.goodsuid }">
									<div id="goods_box_in"><img src="${dto.goodspic1 }" style="width: 200px;"
									 onerror="this.src = 'https://postfiles.pstatic.net/MjAyMDA4MDRfMTcx/MDAxNTk2NTUyNjU2NTMy.PNU4ccUc7DOcWSNeLU815Ug8_9mVEhwdaKtQ8xShwtkg.Dm2uUY1GTMD17WBqqCF4Sw5pG6X-baDYIXTm_BIgtwsg.PNG.ahncheer/logo.png?type=w966'"></div>
									<p class="pinfo2">${dto.goodsname }</p>
									<p class="pinfo2">${dto.goodsprice }</p>
								</a>
							</div>
						</c:if>
					</c:forEach>
				</c:when>
				<c:when test="${param.goods_sort > 0 && param.goods_select == 0}">
					<c:forEach var="dto" items="${list }">
						<c:if test="${dto.goodsSort == param.goods_sort}">
							<div id="goods_box">
								<a href="goodsClientView?goodsuid=${dto.goodsuid }">
									<div id="goods_box_in"><img src="${dto.goodspic1 }" style="width: 200px;"
									 onerror="this.src = 'https://postfiles.pstatic.net/MjAyMDA4MDRfMTcx/MDAxNTk2NTUyNjU2NTMy.PNU4ccUc7DOcWSNeLU815Ug8_9mVEhwdaKtQ8xShwtkg.Dm2uUY1GTMD17WBqqCF4Sw5pG6X-baDYIXTm_BIgtwsg.PNG.ahncheer/logo.png?type=w966'"></div>
									<p class="pinfo2">${dto.goodsname }</p>
									<p class="pinfo2">${dto.goodsprice }</p>
								</a>
							</div>
						</c:if>
					</c:forEach>					
				</c:when>
				<c:when test="${param.goods_sort > 0 && param.goods_select > 0}">
					<c:forEach var="dto" items="${list }">
						<c:if test="${dto.goodsSort == param.goods_sort && dto.goodsCustom == param.goods_select}">
							<div id="goods_box">
								<a href="goodsClientView?goodsuid=${dto.goodsuid }">
									<div id="goods_box_in"><img src="${dto.goodspic1 }" style="width: 200px;"
									 onerror="this.src = 'https://postfiles.pstatic.net/MjAyMDA4MDRfMTcx/MDAxNTk2NTUyNjU2NTMy.PNU4ccUc7DOcWSNeLU815Ug8_9mVEhwdaKtQ8xShwtkg.Dm2uUY1GTMD17WBqqCF4Sw5pG6X-baDYIXTm_BIgtwsg.PNG.ahncheer/logo.png?type=w966'"></div>
									<p class="pinfo2">${dto.goodsname }</p>
									<p class="pinfo2">${dto.goodsprice }</p>
								</a>
							</div>
						</c:if>
					</c:forEach>					
				</c:when>
			</c:choose>


		</c:otherwise>
	</c:choose>
</div>


</body>
</html>


<style>
.pinfo2{
 margin-top: 5px;
    margin-bottom: 10px;
    font-weight: bolder;
    color: #666;
    }
</style>




















