<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
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
<% 	
	String goodsname = request.getParameter("goodsname");
	int goodsprice = Integer.parseInt(request.getParameter("goodsprice"));
 %>
<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal.username" var="user_id" />
		<!-- <div id="user_id">안녕하세요. ${user_id }</div> -->
	</sec:authorize>
<div class="login-box">
  <h3><b>구매 확인</b></h3>
  <br><br>
    <div class="user-box"><br>
      <label> 회원이름: ${user_id } </label>
    </div>
    <div class="user-box"><br>
      <label>상품 명 : ${param.goodsname } </label>
    </div>
    
    <div class="user-box"><br>
      <label>구매 개수 : 1개 </label>
    </div>
    
    <div class="user-box"><br>
      <label>구매 가격 : ${param.goodsprice }</label>
    </div>
    
<%-- 글 내용이 많을수 있기 때문에 POST 방식 사용 --%>
<form name="frm" action="buyWriteOk" method="post" onsubmit="return chkSubmit()">
<input type="hidden" name="username" value="${user_id }"/><br>
<input type="hidden" name="goodsname" value="${param.goodsname }"/><br>
<input type="hidden" name="buynum" value="1"/><br>
<input type="submit" value="구매하시겠습니까?" class="buttonblack" style="float: right; margin-top: 20px;" />
<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />  
</form>
<br>
<button type="button" class="buttonblack" onclick="location.href='${pageContext.request.contextPath }/goods/goodsClientList?goods_sort=0'">목록으로</button>
  
</div>



</body>
</html>


<style>


.buttonblack{
border: 1px solid #333333; 
outline: none; 
color: #333333;
padding: 10px 20px;
 background: transparent;
}

</style>
<style>

.login-box {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
  background-color: #46bdc6;
}


.login-box .user-box {
  position: relative;
}

.login-box .user-box  {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.login-box .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.login-box .user-box
.login-box .user-box  {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}

.login-box form a {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  color: #03e9f4;
  font-size: 16px;
  text-decoration: none;
  text-transform: uppercase;
  overflow: hidden;
  transition: .5s;
  margin-top: 40px;
  letter-spacing: 4px
}

.login-box a:hover {
  background: #03e9f4;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #03e9f4,
              0 0 25px #03e9f4,
              0 0 50px #03e9f4,
              0 0 100px #03e9f4;
}

.login-box a span {
  position: absolute;
  display: block;
}

.login-box a span:nth-child(1) {
  top: 0;
  left: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, transparent, #03e9f4);
  animation: btn-anim1 1s linear infinite;
}

@keyframes btn-anim1 {
  0% {
    left: -100%;
  }
  50%,100% {
    left: 100%;
  }
}

.login-box a span:nth-child(2) {
  top: -100%;
  right: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(180deg, transparent, #03e9f4);
  animation: btn-anim2 1s linear infinite;
  animation-delay: .25s
}

@keyframes btn-anim2 {
  0% {
    top: -100%;
  }
  50%,100% {
    top: 100%;
  }
}

.login-box a span:nth-child(3) {
  bottom: 0;
  right: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(270deg, transparent, #03e9f4);
  animation: btn-anim3 1s linear infinite;
  animation-delay: .5s
}

@keyframes btn-anim3 {
  0% {
    right: -100%;
  }
  50%,100% {
    right: 100%;
  }
}

.login-box a span:nth-child(4) {
  bottom: -100%;
  left: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(360deg, transparent, #03e9f4);
  animation: btn-anim4 1s linear infinite;
  animation-delay: .75s
}

@keyframes btn-anim4 {
  0% {
    bottom: -100%;
  }
  50%,100% {
    bottom: 100%;
  }
}



</style>












