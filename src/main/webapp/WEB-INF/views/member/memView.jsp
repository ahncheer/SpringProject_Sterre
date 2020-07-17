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
<title>읽기 ${list[0].useruid }</title> <!-- title에 글제목 넣기 -->
</head>
<script>
function chkDelete(useruid){
	// 삭제 여부, 다시 확인 하고 진행하기
	var r = confirm("삭제하시겠습니까?");
	if(r){
		location.href = 'memDeleteOk?useruid=' + useruid;
	}
}
</script>
<body>
<h2>${list[0].username } 정보</h2>
<hr>
useruid : ${list[0].useruid } <br>
이름 : ${list[0].username }<br>
이메일 : ${list[0].useremail }<br>
패스워드 : ${list[0].password }<br>
<hr>
전화번호 : ${list[0].usertel }<br>
등록 날짜 : ${list[0].userregdate }<br>
푸쉬동의여부 : ${list[0].useralarm }<br>
주소 : ${list[0].userAdd }<br>
<hr>
<br>
<button onclick="location.href='memUpdate?useruid=${list[0].useruid }'">수정하기</button>
<button onclick="location.href = 'memList'">목록보기</button>
<button onclick="chkDelete(${list[0].useruid })">삭제하기</button>
<button onclick="location.href = 'memWrite'">신규등록</button>

</body>
</html>

	</c:otherwise>
</c:choose>













