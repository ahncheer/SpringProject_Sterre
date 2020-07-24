<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/CSS/bestFaq.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/aboutSterre.css"/>

<title>Insert title here</title>
</head>
<body>
	<%@ include file="../header.jsp"%>
	  <h1 style="text-align: center;color: #777" class="text-shadow-pop-br"><b>best FAQ</b></h2>
<hr class="featurette-divider" style="margin: 3rem 0;">
	
	<div id="bestfaq" style="width: 70%; margin-left: 15%;margin-top: 0px;margin-bottom: 0px;">
		<section>
			<a href="#intro1" id="intro1" style="height: 30px;text-align: center;">
				<h1 style="padding: 7px;">sterre가 가진 강점은 무엇인가요?</h1>
			</a>
			<p>1. sterre는 온라인은 물론, 오프라인에서도 구매가 가능합니다. <br>
			2. 가장 좋은 가격과 서비스를 제공하고 있습니다. </p>
		</section>
		
		<section>
			<a href="#intro2" id="intro2" style="height: 30px;text-align: center;">
				<h1 style="padding: 7px;">강제 탈퇴가 될 수도 있나요?</h1>
			</a>
			<p>그런 경우는 거의 없지만 법에 위배되는 행위, 혹은 내부 정책에 의해 회원 자격을 박탈 당할 수 있는 점 참고해 주세요.</p>
		</section>
		
		<section>
			<a href="#intro3" id="intro3" style="height: 30px;text-align: center;">
				<h1 style="padding: 7px;">회원가입 절차는 어떻게 되나요?</h1>
			</a>
			<p>메인 페이지 오른쪽 상단의 [회원가입] 버튼 클릭 → 약관 동의 후, 개인 정보 입력 (* 표시된 사항은 필수입력 사항입니다.)<br>
			 	→ 개인 정보 입력 후 회원가입 버튼 클릭</p>
		</section>
		
		<section>
			<a href="#intro4" id="intro4" style="height: 30px;text-align: center;">
				<h1 style="padding: 7px;">지금까지 주문한 내역을 확인하고 싶어요. 어디서 확인할 수 있나요?</h1>
			</a>
			<p>[MY PAGE > 주문/배송조회]에서 주문내역을 확인할 수 있습니다</p>
		</section>
		
		<section>
			<a href="#intro5" id="intro5" style="height: 30px;text-align: center;">
				<h1 style="padding: 7px;">회원 탈퇴를 하면 개인정보는 언제 삭제되나요?</h1>
			</a>
			<p>회원 탈퇴를 하실 경우, 회원님의 개인정보는 절대 복구할 수 없는 방법으로 삭제되니 회원 탈퇴는 신중하게 결정하여 주시기 바랍니다.
			</p>
		</section>
		
		<section>
			<a href="#intro6" id="intro6" style="height: 30px;text-align: center;">
				<h1 style="padding: 7px;">회원 탈퇴는 어디서 하나요?</h1>
			</a>
			<p>회원 탈퇴는 [MY PAGE > 회원탈퇴]에서 가능합니다.
				탈퇴 후 재가입을 원하신다면, 다른 아이디를 사용해서 가입하시면 됩니다.
				(※ 기존에 사용하셨던 아이디로는 재가입이 어려운 점, 이용에 참고해 주세요~)</p>
		</section>
		
		<section>
			<a href="#intro7" id="intro7" style="height: 30px;text-align: center;">
				<h1 style="padding: 7px;">상품을 해외로 배송할 수 있나요?</h1>
			</a>
			<p>현재 해외배송 서비스는 지원하지 않고 있습니다.<br>
			국내 배송지로 배송만 가능합니다.</p>
		</section>
		
		<section>
			<a href="#intro8" id="intro8" style="height: 30px;text-align: center;">
				<h1 style="padding: 7px;">전화 주문도 가능한가요?</h1>
			</a>
			<p>오프라인 매장 으로 오셔서 픽업시에만 따로 가능합니다 ^^</p>
		</section>
		
		<section>
			<a href="#intro9" id="intro9" style="height: 30px;text-align: center;">
				<h1 style="padding: 7px;">운송장 번호를 조회하면 배송완료로 뜨는데 상품을 받지 못했어요. 어떻게 해야 하나요?</h1>
			</a>
			<p>운송장 번호를 조회했을 때는 배송완료로 뜨는데 실제로 상품을 받지 못하셨다면,<br>
			우선 경비실 등에 상품이 맡겨져 있는지 확인 부탁드립니다.<br>
			맡겨진 상품이 없다면 [고객감동센터 1577-9081]로 전화를 주시거나, 해당 택배사 및 배송담당 택배 기사에게 바로 연락해 주세요.</p>
		</section>
		
		<section>
			<a href="#intro10" id="intro10" style="height: 30px;text-align: center;">
				<h1 style="padding: 7px;">오프라인 매장은 언제 쉬나요?</h1>
			</a>
			<p>공휴일 제외 모든날 정상영업합니다 ~</p>
		</section>
		
		
		
		
	</div>

</body>
</html>