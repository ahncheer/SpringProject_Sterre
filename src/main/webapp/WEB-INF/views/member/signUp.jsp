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

<h2>회원가입</h2>
<%-- 글 내용이 많을수 있기 때문에 POST 방식 사용 --%>
<form name="frm" action="signUpOk" method="post" onsubmit="return chkSubmit()">
이름: <input type="text" name="username"/><br>
이메일:  <input type="text" name="useremail"/><br>
비번:  <input type="text" name="password"/><br>
전화번호:  <input type="text" name="usertel"/><br>
동의여부:  <input type="number" name="useralarm"/><br>
주소:<br> <textarea name="userAdd"></textarea>

<input type="submit" value="등록"/>

 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />  
</form>
<br>
<button type="button" onclick="location.href='memList'">목록으로</button>


<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>















