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
<h2>글작성</h2>
<%-- 글 내용이 많을수 있기 때문에 POST 방식 사용 --%>
<form name="frm" action="goodsWriteOk" method="post" onsubmit="return chkSubmit()">
이름: <input type="text" name="goodsname"/><br>
가격: <input type="number" name="goodsprice"/><br>
설명: <input type="text" name="goodsContent"/><br>
전체개수: <input type="number" name="goodsTotal"/><br>
남은개수: <input type="number" name="goodsLeft"/><br>
사진1: <input type="text" name="goodspic1"/><br>
사진2: <input type="text" name="goodspic2"/><br>
<input type="submit" value="등록"/>
 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />  
</form>
<br>
<button type="button" onclick="location.href='goodsList'">목록으로</button>


<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>















