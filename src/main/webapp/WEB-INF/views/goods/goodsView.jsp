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
<body>
<h2>읽기 ${list[0].goodsname }</h2>


고유번호 : ${list[0].goodsuid }<br>
이름 : ${list[0].goodsname }<br>
가격 : ${list[0].goodsprice }<br>
설명 : ${list[0].goodsContent }<br>
등록일 : ${list[0].goodsregdate }<br>
전체개수 : ${list[0].goodsTotal }<br>
남은개수 : ${list[0].goodsLeft }<br>
사진1 : ${list[0].goodspic1 }<br>
사진2 : ${list[0].goodspic2 }<br>

</div>
<hr>
<br>
<button onclick="location.href='goodsUpdate?goodsuid=${list[0].goodsuid }'">수정하기</button>
<button onclick="location.href = 'goodsList'">목록보기</button>
<button onclick="chkDelete(${list[0].goodsuid })">삭제하기</button>
<button onclick="location.href = 'goodsWrite'">신규등록</button>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>

	</c:otherwise>
</c:choose>













