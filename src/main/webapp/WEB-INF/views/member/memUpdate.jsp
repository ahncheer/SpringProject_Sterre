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
<title>${list[0].username } 프로필 수정</title>
</head>
<script>
function chkSubmit(){
	frm = document.forms['frm'];
	var subject = frm['subject'].value.trim();
	/*
	if(subject == ""){
		alert("제목은 반드시 작성해야 합니다");
		frm['subject'].focus();
		return false;
	}
	*/
	return true;
}
</script>
<body>
<h2>수정</h2>
<form name="frm" action="memUpdateOk" method="post" onsubmit="return chkSubmit()">
<input type="hidden" name="useruid" value="${list[0].useruid }"/>

이름:  ${list[0].username }<br>
이메일:  <input type="text" name="useremail" value="${list[0].useremail }"/><br>
비번:  <input type="text" name="password" value="${list[0].password }"/><br>
전화번호:  <input type="text" name="usertel" value="${list[0].usertel }"/><br>
동의여부:  <input type="number" name="useralarm" value="${list[0].useralarm }"/><br>
주소:<br> <textarea name="userAdd">${list[0].userAdd }</textarea>

<br>
<input type="submit" value="수정"/>
 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />  

</form>
<button onclick="history.back()">이전으로</button>
<button onclick="location.href='memList.do'">목록보기</button>

</body>
</html>

	</c:otherwise>
</c:choose>













