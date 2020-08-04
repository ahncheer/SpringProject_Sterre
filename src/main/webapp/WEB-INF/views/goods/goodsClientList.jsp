<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>   
<%@ page import = "java.text.SimpleDateFormat" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<% 	
	int goods_sort = Integer.parseInt(request.getParameter("goods_sort"));
 %>
<%-- JSTL 버젼으로 바뀌니, import 번잡합도 사라진다. JAVA변수 선언도 사라진다 --%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/common.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/goodsSelectCss.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<title>글 목록</title>
<style>
table {width: 100%;}
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
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

</head>
<body>
	<%@ include file="../header.jsp" %>
<!-- 
<h2>${param.goods_sort }확인용ㅇ </h2>
<h2>Client List Page</h2>
 -->
 

<c:choose>
	<c:when test="${param.goods_sort == 0}">
		<div id="goods_banner_img" > 
			<div id="bannerLeft" ><h2 style="margin-top: 50px; color : #46bdc6">전체</h2></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
		</div>
	</c:when>
	<c:when test="${param.goods_sort == 1}">
		<div id="goods_banner_img" > 
			<div id="bannerLeft" ><h2 style="margin-top: 50px; color : #46bdc6">핸드폰케이스</h2></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
		</div>
	</c:when>
	<c:when test="${param.goods_sort == 2}">
		<div id="goods_banner_img" > 
			<div id="bannerLeft" ><h2 style="margin-top: 50px; color : #46bdc6">버즈케이스</h2></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
		</div>
	</c:when>
	<c:when test="${param.goods_sort == 3}">
		<div id="goods_banner_img" > 
			<div id="bannerLeft" ><h2 style="margin-top: 50px; color : #46bdc6">그립톡</h2></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
		</div>
	</c:when>
	<c:when test="${param.goods_sort == 4}">
		<div id="goods_banner_img" > 
			<div id="bannerLeft" ><h2 style="margin-top: 50px; color : #46bdc6">키링</h2></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
		</div>
	</c:when>
	<c:when test="${param.goods_sort == 5}">
		<div id="goods_banner_img" > 
			<div id="bannerLeft" ><h2 style="margin-top: 50px; color : #46bdc6">기타</h2></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
			<div id="bannerRight" style="background-image: url('https://image.idus.com/image/files/1c7720caeba5469a8d2b87236eddc75f_1440.jpg');"></div>
		</div>
	</c:when>
</c:choose>
<br><br>



<div id="cssmenu">
	<ul>
	   <li name="goods_select" id="goods_select" value="0" onclick="loadDoc(this.value)"><a href="#"> 전체</a></li>
	   <li name="goods_select" id="goods_select" value="1" onclick="loadDoc(this.value)"><a href="#"> 일반</a></li>
	   <li name="goods_select" id="goods_select" value="2" onclick="loadDoc(this.value)"><a href="#"> 글귀</a></li>
	   <li name="goods_select" id="goods_select" value="3" onclick="loadDoc(this.value)"><a href="#"> 주문제작</a></li>
	</ul>
</div>

<br>


<div id="basicList" style="text-align:center;">
	<c:choose>
		<c:when test="${empty list || fn:length(list) == 0}">
		<div> 상품이 없습니다.</div>
		</c:when>
		<c:otherwise>
		
			<c:choose>
				<c:when test="${param.goods_sort == 0}"><!-- 상품전체선택 -->
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
				<c:otherwise>
					<c:forEach var="dto" items="${list }">
							<c:if test="${dto.goodsSort == param.goods_sort}">
								<div id="goods_box">
									<a href="goodsClientView?goodsuid=${dto.goodsuid }">
										<div id="goods_box_in"><img src="${dto.goodspic1 }" style="width: 200px;"
										 onerror="this.src = 'https://postfiles.pstatic.net/MjAyMDA4MDRfMTcx/MDAxNTk2NTUyNjU2NTMy.PNU4ccUc7DOcWSNeLU815Ug8_9mVEhwdaKtQ8xShwtkg.Dm2uUY1GTMD17WBqqCF4Sw5pG6X-baDYIXTm_BIgtwsg.PNG.ahncheer/logo.png?type=w966'"></div>
										<p class="pinfo2">${dto.goodsname }</p>
										<p class="pinfo2"> ${dto.goodsprice }</p>
									</a>
								</div>
							</c:if>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			
		</c:otherwise>
	</c:choose>
</div>

<div id="demo" style="text-align:center;"></div>
<br><br>
	<%@ include file="../footer.jsp" %>

</body>
</html>

 
<script>

var offset = $('#cssmenu').offset(); //선택한 태그의 위치를 반환

//animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함 







//ajax로 값 가져오기
function loadDoc(a) {
	$('html').animate({scrollTop : offset.top -70}, 400);
	//var b = $('goods_select').val()
	//alert(a); //확인용
	var x3 = getParameterByName("goods_sort"); //상품종류(핸드폰케이스등)
	//alert(x3); //확인용
	
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	      document.getElementById("demo").innerHTML =
	      this.responseText;
	    }
	  };
	  xhttp.open("GET", "goodsClientListCheck?goods_sort="+x3+"&goods_select="+a, true);
	  xhttp.send();
      $("#basicList").html("");
}

//파라미터 값 얻어옴
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
            results = regex.exec(location.search);
    return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

//특정 스크롤로 이동


</script>

<style>
.pinfo2{
 margin-top: 5px;
    margin-bottom: 10px;
    font-weight: bolder;
    color: #666;
    }

#goods_banner_img{
width: 100%; height : 300px; background-color: aliceblue;
border: 2px dotted #46bdc6; border-radius: 20px;
}

#bannerLeft{
width: 25%; height : 80%;  margin-left: 5%; margin-top: 30px; background-color: aliceblue; border-radius: 100px; float: left; text-align: center;

}

#bannerRight{
 width: 18%; height : 80%;  margin-right: 2%; margin-top: 30px; background-color: #46bdc6; border-radius: 120px; float: right;
 background-position: center; background-size: cover;
}
</style>




















