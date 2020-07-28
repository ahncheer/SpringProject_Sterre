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
<script>
function chkDelete(goodsuid){
	// 삭제 여부, 다시 확인 하고 진행하기
	var r = confirm("삭제하시겠습니까?");
	if(r){
		location.href = 'goodsDeleteOk.do?goodsuid=' + goodsuid;
	}
}
</script>
<style>
.buybutton {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  float: left;
}

.buybutton1 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
  border-radius: 10px;
}

.buybutton1:hover {
  background-color: #4CAF50;
  color: white;
}



.pinfo{
    font-size: 18px;
    color: #000000;
    line-height: 40px;
}

</style>



<body>
  <%@ include file="../header.jsp" %>

<br><br>
<div id = "product" style="margin-left: 10%; margin-right: 10%;">
	<div id="productpic" style="background-color: white; width: 50%; height: 500px; display: inline-block;">
		<img src="${list[0].goodspic1 }" style="width: 400px; height: 500px"/>
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
		<hr style="width: 60%;float: left;color: grey;">
		<br><br>
		<div style="margin-top: 20%;">
			<button class="buybutton buybutton1">구매하기</button>
		</div>
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

</script>










