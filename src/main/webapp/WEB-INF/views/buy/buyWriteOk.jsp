<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        

<c:choose>
	<c:when test="${result == 0 }">
		<script>
			alert("등록 실패!!!!!!");
			history.back();   // 브라우저가 기억하는 직전 페이지(입력중 페이지로)
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("구매 성공, 상품목록 페이지로 이동합니다");
			location.href = "../goods/goodsClientList?goods_sort=0";
		</script>
	</c:otherwise>
</c:choose>












































