<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>   
<%@ page import = "java.text.SimpleDateFormat" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/common.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/goodsSelectCss.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<title>글 목록</title>

</head>
<body>

<div id="basicList" style="text-align:center;width: 100%; text-decoration:none;    height: 700px;">
	<c:choose>
		<c:when test="${empty list || fn:length(list) == 0}">
		</c:when>
		<c:otherwise>
			<div class="BestItemWrap">
				<a class="BestItemTitle" href="/home/shop/bestaward.asp">BEST ITEM<span class="more"></span></a><br>
				<div class="BestItemList">
					<ul>
						<li>
							<a href="goodsClientView?goodsuid=${list[0].goodsuid }">
								<span class="ImageNumber num1">01</span>
								<span class="ImageBackGround"></span>
								<img class="ItemImage" src="${list[0].goodspic1 }">
								<span class="ItemName">${list[0].goodsname }</span>
								<span class="ItemPrice">${list[0].goodsprice }</span>
							</a>
						</li>
						
						<li>
							<a href="goodsClientView?goodsuid=${list[1].goodsuid }">
								<span class="ImageNumber num2">02</span>
								<span class="ImageBackGround"></span>
								<img class="ItemImage" src="${list[1].goodspic1 }">
								<span class="ItemName">${list[1].goodsname }</span>
								<span class="ItemPrice">${list[1].goodsprice }</span>
							</a>
						</li>
						
						<li>
							<a href="goodsClientView?goodsuid=${list[2].goodsuid }">
								<span class="ImageNumber num2">03</span>
								<span class="ImageBackGround"></span>
								<img class="ItemImage" src="${list[2].goodspic1 }">
								<span class="ItemName">${list[2].goodsname }</span>
								<span class="ItemPrice">${list[2].goodsprice }</span>
							</a>
						</li>
						
						<li>
							<a href="goodsClientView?goodsuid=${list[3].goodsuid }">
								<span class="ImageNumber num3">04</span>
								<span class="ImageBackGround"></span>
								<img class="ItemImage" src="${list[3].goodspic1 }">
								<span class="ItemName">${list[3].goodsname }</span>
								<span class="ItemPrice">${list[3].goodsprice }</span>
							</a>
						</li>
						
						<li>
							<a href="goodsClientView?goodsuid=${list[4].goodsuid }">
								<span class="ImageNumber num3">05</span>
								<span class="ImageBackGround"></span>
								<img class="ItemImage" src="${list[4].goodspic1 }">
								<span class="ItemName">${list[4].goodsname }</span>
								<span class="ItemPrice">${list[4].goodsprice }</span>
							</a>
						</li>
						
						<li>
							<a href="goodsClientView?goodsuid=${list[5].goodsuid }">
								<span class="ImageNumber num3">06</span>
								<span class="ImageBackGround"></span>
								<img class="ItemImage" src="${list[5].goodspic1 }">
								<span class="ItemName">${list[5].goodsname }</span>
								<span class="ItemPrice">${list[5].goodsprice }</span>
							</a>
						</li>
						
						<li>
							<a href="goodsClientView?goodsuid=${list[6].goodsuid }">
								<span class="ImageNumber num3">07</span>
								<span class="ImageBackGround"></span>
								<img class="ItemImage" src="${list[6].goodspic1 }">
								<span class="ItemName">${list[6].goodsname }</span>
								<span class="ItemPrice">${list[6].goodsprice }</span>
							</a>
						</li>
						
						<li>
							<a href="goodsClientView?goodsuid=${list[7].goodsuid }">
								<span class="ImageNumber num3">08</span>
								<span class="ImageBackGround"></span>
								<img class="ItemImage" src="${list[7].goodspic1 }">
								<span class="ItemName">${list[7].goodsname }</span>
								<span class="ItemPrice">${list[7].goodsprice }</span>
							</a>
						</li>
						
					</ul>
				</div>
			</div>
				
		</c:otherwise>
	</c:choose>
</div>

</div>
</body>
</html>

 


<style>
ul{
 list-style:none;
 }

.BestItemWrap {width:1000px;margin-left: 100px; padding:0;text-align:left; float: left;}
a.BestItemTitle {margin-bottom: 30px;text-align:left; display:inline-block; color:#000000; line-height:30px; font-size:30px; font-family:'Saira Condensed'; font-weight:bold;text-decoration: none;}
a.BestItemTitle span {display:inline-block; width:18px; height:21px; background-size:18px 21px; background-image:url(/Images/Ver1/Common/gogo_pc.png); vertical-align:top; margin:4px 0 5px 7px;}

.BestItemList {display:block; margin:0; width:100%;}
.BestItemList ul {height:660px; width:auto;}
.BestItemList li {width:210px; height:310px; margin:20px 15px 0;float: left;}
.BestItemList li a {display:block; position:relative; width:210px; height:auto; text-align:center;text-decoration: none;}
.BestItemList li img.ItemImage {width:210px; height:210px; border-radius:50%;}
.BestItemList li span.ImageNumber     {display:block; position:absolute; z-index:2; top:0; left:0; width:48px; height:48px; border-radius:50%; background-color:#8f8f8f; color:#ffffff; font-size:26px; line-height:48px; text-align:center; font-family:'Saira Condensed'}
.BestItemList li span.ImageNumber.num1 {background-color:#c80203;}
.BestItemList li span.ImageBackGround {display:block; position:absolute; z-index:1; top:0; left:0; width:210px; height:210px; border-radius:50%; background:#000000; opacity:0.03; filter:alpha(opacity=3); -ms-filter:alpha(opacity=3); }
.BestItemList li span.ItemName {display:block; width:210px; margin:10px 0 0 0; text-align:center; font-size:16px; line-height:18px; color:#000000; text-overflow:ellipsis; white-space:nowrap; overflow:hidden;}
.BestItemList li span.ItemPrice {display:block; width:210px; margin:7px 0 5px 0; text-align:center; font-size:16px; line-height:16px; color:#000000; font-weight:bold;}
.BestItemList li span.ItemPrice.red {color:#f20001;}




</style>


















