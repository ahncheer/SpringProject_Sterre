<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Ubuntu"	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"	href="path/to/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath }/CSS/loginCss.css" />
<title>Sign Up</title>
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
<style> 
#inputbox{
    width: 100px;
    display: inline-block;
    font-family: 'Ubuntu', sans-serif;
    font-weight: bold;
    font-size: 15px;
    text-align: center;
}
</style>
<body>
  <%@ include file="../header.jsp" %>

<div class="main" style="margin-top: 20px; width : 80%; height : 700px">
	<p class="sign" align="center">Sign Up</p>
<br>
	<%-- 글 내용이 많을수 있기 때문에 POST 방식 사용 --%>
	<form name="frm" action="signUpOk" method="post" onsubmit="return chkSubmit()">
	<p id="inputbox"> &#9;이름:</p><input class="un" type="text" name="username"/><br>
	<p id="inputbox"> &#9;이메일:</p><input class="un" type="text" name="useremail"/><br>
	<p id="inputbox"> &#9;비번:</p><input class="un" type="text" name="password"/><br>
	<p id="inputbox"> &#9;전화번호:</p><input class="un" type="text" name="usertel"/><br>
	<p id="inputbox"> &#9;주소:</p><br> <textarea class="un" name="userAdd" style="resize: vertical; margin-left: 145px;height: 80px;}"></textarea>
	
    
    <hr>
    <div style="margin-left: 10%;">
		<input type="checkbox" id="c1" name="important"/><label for="c1"><span></span><a href="#"> &#9;  약관동의(필수)</a></label><br>
		<input type="checkbox" id="c1" name="useralarm" value="1"/> <label for="c2"><span></span><a href="#"> &#9; 푸쉬 동의여부(선택)</a></label><br>
	</div>
	
	<br>
	<button type="button"  class="submit" onclick="location.href='memList'" style="float: left;margin-left: 37%; font-weight: 500;"><b>목록으로</b></button> 
	<input type="submit"  class="submit" value="회원가입" style="float: left;margin-left: 5%; font-weight: 500;"/>

 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />  
</form>

</div>

<div>




</div>


</body>
</html>















