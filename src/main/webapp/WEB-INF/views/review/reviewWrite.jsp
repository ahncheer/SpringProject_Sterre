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
	String username = request.getParameter("username");
 %>
 
<%-- 글 내용이 많을수 있기 때문에 POST 방식 사용 --%>
<form name="frm" action="reviewWriteOk" method="post" onsubmit="return chkSubmit()">

구매자 이름: ${param.username }
<input type="hidden" name="username" value="${param.username }"/><br>

구매상품 이름: ${param.goodsname }
<input type="hidden" name="goodsname" value="${param.goodsname }"/><br>

후기 입력 : <textarea name="reviewcontent"></textarea>

<input type="submit" value="후기 작성"/>

<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
   
</form>
<br>
<button type="button" onclick="location.href='${pageContext.request.contextPath }/review/reviewAllList'">리뷰 전체 보기</button>


<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>















