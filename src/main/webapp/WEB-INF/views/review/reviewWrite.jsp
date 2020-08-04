<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>글작성</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet">
</head>

<script>
function chkSubmit(){  // 폼 검증
	frm = document.forms["frm"];
	var name = frm["reviewcontent"].value.trim();
	
	if(reviewcontent == ""){
		alert("후기 내용은 반드시 입력해야 합니다");
		frm["name"].focus();
		return false;
	}
	return true;
}

</script>
<body>
<% 	
	String goodsname = request.getParameter("goodsname");
	String username = request.getParameter("username");
 %>
 
<%-- 글 내용이 많을수 있기 때문에 POST 방식 사용 --%>
<form name="frm" action="${pageContext.request.contextPath }/review/reviewWriteOk" method="post" onsubmit="return chkSubmit()">

구매자 이름: ${param.username }
<input type="hidden" name="username" value="${param.username }"/><br>

구매상품 이름: ${param.goodsname }
<input type="hidden" name="goodsname" value="${param.goodsname }"/><br>

후기 입력 : <textarea name="reviewcontent" style="resize: vertical; "></textarea>

<button type="submit"  class="close-modal" style="float: right;margin-left: 5px;margin-right: 5px;">후기 작성</button>

<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
   
</form>
</body>
</html>















