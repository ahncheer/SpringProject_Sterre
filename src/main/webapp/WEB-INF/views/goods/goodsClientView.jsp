<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<c:choose>
	<c:when test="${empty list || fn:length(list) == 0 }">
		<script>
			alert("해당 정보가 삭제되거나 없습니다");
			history.back();
		</script>
	</c:when>
	<c:otherwise>
	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${list[0].goodsuid }</title> <!-- title에 글제목 넣기 -->
</head>

<style>
	*{margin:0;padding:0;}
	ul,li{list-style:none;}
	#slide{width: 50%; height: 500px; display: inline-block; overflow:hidden;}
	#slide ul{width:400%;height:100%;transition:1s;}
	#slide ul:after{content:"";display:block;clear:both;}
	#slide li{float:left;width:25%;height:100%;}
	#slide li:nth-child(1){background:#faa;}
	#slide li:nth-child(2){background:#ffa;}
	#slide input{display:none;}
	#slide label{display:inline-block;vertical-align:middle;width:10px;height:10px;border:2px solid #666;background:#fff;transition:0.3s;border-radius:50%;cursor:pointer;}
	#slide .pos{text-align:center;position:absolute;bottom:30px;left: -20%;width:100%;text-align:center;}
	#pos1:checked~ul{margin-left:0%;}
	#pos2:checked~ul{margin-left:-100%;}
	#pos1:checked~.pos>label:nth-child(1){background:#666;}
	#pos2:checked~.pos>label:nth-child(2){background:#666;}
</style>

<body>
  <%@ include file="../header.jsp" %>

<br><br>
	


<div id="slide" style="width: 36%; height: 500px; display: inline-block;margin-left: 12%" >
	<input type="radio" name="pos" id="pos1" checked>
	<input type="radio" name="pos" id="pos2">
	<ul>
		<li ><img src="${list[0].goodspic1 }" style="width: 100%; height: 500px;"/></li>
		<li><img src="${list[0].goodspic2 }" style="width: 100%; height: 500px;"/></li>
	</ul>
	<p class="pos" style="left: -15%;bottom:120px;">
		<label for="pos1"></label>
		<label for="pos2"></label>
	</p>
</div>
	
	
<div style="background-color: white; width: 50%; height: 500px; padding-left: 40px; display: inline-block;
    border-left: 1px solid grey; float: right;">
    	<br><br>
		<span style="font-size: 30px;line-height: 32px; color: #000000;" >${list[0].goodsname }<br></span>
		<div class="pinfo" style="font-size: 15px; line-height: 17px; color: #9d9d9d;">&nbsp;   <div id = "productsort">!!??!</div></div>
		
		<br>
		<span class="pinfo">고유번호 : ${list[0].goodsuid }</span><br>
		<span class="pinfo">가격 : ${list[0].goodsprice }</span><br>
		<span class="pinfo">남은개수 : ${list[0].goodsLeft }</span><br>
		<br>
		<hr style="width: 60%; float: left; color: grey;">
		<br><br>
		<div style="margin-top: 20%;">
		<!-- 
			<select name="sel" id="sel">
			    <option value="1" selected="selected">1</option>
			    <option value="2">2</option>
			</select>
		 -->
		 
		 <c:choose> 
			<c:when test="${user_id eq 'admin'}">
				<button class="buybutton buybutton1"> 관리자 구매불가</button>
			</c:when>
			
			<c:when test="${not empty user_id }">
				<button class="buybutton buybutton1"
			onclick="location.href = '${pageContext.request.contextPath }/buy/buyWrite?goodsname=${list[0].goodsname}&goodsprice=${list[0].goodsprice}' " >구매하기</button>
			</c:when>		 
		 
		 </c:choose>
	</div>
</div>

<br>

<hr>
<div style="width: 60%; margin-left: 20%; background-color: #dedede; height: 200px; padding: 30px">
설명 : ${list[0].goodsContent }<br>
</div>

<hr>
<br>
<button onclick="location.href = '${pageContext.request.contextPath }/goods/goodsClientList?goods_sort=${list[0].goodsSort}' ">목록보기</button>

</body>
</html>

	</c:otherwise>
</c:choose>


<script type="text/javascript">
$(document).ready(function(){
	var x1;
	var x2;
	var element = document.getElementById("productsort");

	if(${list[0].goodsSort} == 1){
		x1 ="     버즈케이스";
	}else{
		x1 ="     기타";
	}
	
	if(${list[0].goodsCustom} == 1){
		x2 ="일반";
	}else{
		x2 ="기타";
	}
	
	
	element.innerHTML = x1 + " > " + x2;

	
	
	
	
});

var x = $("#sel option:selected").val();
</script>










