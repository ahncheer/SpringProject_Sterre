<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>글작성</title>
</head>

<script>
function chkSubmit(){  // 폼 검증
	frm = document.forms["frm"];
	/*
	var name = frm["name"].value.trim();
	var subject = frm["subject"].value.trim();
	
	if(name == ""){
		alert("작성자 란은 반드시 입력해야 합니다");
		frm["name"].focus();
		return false;
	}
	if(subject == ""){
		alert("제목은 반드시 작성해야 합니다");
		frm["subject"].focus();
		return false;
	}
	*/
	return true;
}

</script>
<body>
  <%@ include file="../header.jsp" %>
<h2>규매</h2>
<h2>${user_id } </h2>
<% 	
	String goodsname = request.getParameter("goodsname");
	int goodsprice = Integer.parseInt(request.getParameter("goodsprice"));
 %>
 확인용 ->  ${param.goodsuid } <br>${param.goodsprice }<br>
<%-- 글 내용이 많을수 있기 때문에 POST 방식 사용 --%>
<form name="frm" action="buyWriteOk" method="post" onsubmit="return chkSubmit()">

회원이름: <input type="text" name="username" value="${user_id }"/><br>
구매할저거번호: <input type=text" name="goodsname" value="${param.goodsname }"/><br>
개수 <input type="number" name="buynum" value="1"/><br>
구매 가격 : ${param.goodsprice }
<input type="submit" value="구매하시겠습니까?"/>
 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />  
</form>
<br>
<button type="button" onclick="location.href='goodsList'">목록으로</button>


<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>















