<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/aboutSterre.css"/>
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/waytocome.css"/>
 
<title>Insert title here</title>
</head>
<style>
li, ol, ul {
    list-style: none;
}

</style>


<body>
<%@ include file="../header.jsp" %>
  <h1 style="text-align: center;color: #777" class="text-shadow-pop-br"><b>Way To Come</b></h1>
<hr class="featurette-divider" style="margin: 3rem 0;">

<div id="map" style="margin-left:15%; width:70%;height:350px;"></div>
<br><br>
<button class="buybutton buybutton1" style="padding: 10px;margin-left: 40%;"
			onclick="location.href = 'https://map.naver.com/v5/search/%EC%BD%94%EB%A6%AC%EC%95%84%20it/place/37285910?c=14141418.7331554,4509040.6021282,16,0,0,0,dh' " > 네이버 지도 열기 </button>

<div class="directionsDiv">
	
	<div class="container"><!-- 2018-05-08 container로 묶음 -->
		<div class="clearDiv">
			<div class="leftDiv">
				<p class="tit">지하철 이용시</p>
				<ul>
					<li>
						<p class="label"><span>2</span>2호선</p>
						<p>역삼역 3번 출구</p>
					</li>
					<li>
						<p class="label"><span>9</span>9호선</p>
						<p>강남역 1번 출구</p>
					</li>
					<li>
						<p class="label"><span>신분당</span></p>
						<p>강남역 1번 출구</p>
					</li>
				</ul>
			</div>
			<div class="rightDiv">
				<p class="tit">버스 이용시</p>
				<ul>
					<li>
						<p class="label">지선</p>
						<p>4211번</p>
					</li>
					<li>
						<p class="label">광역</p>
						<p>1100번, 1700번, 2000번, 2000-1번, 7007번</p>
					</li>
					<li>
						<p class="label">간선</p>
						<p>146번, 341번, 360번, 740번, N13번</p>
					</li>
				</ul>
			</div>
		</div>
		<div class="infoArea">
			
			<div class="tableDiv">
				<hr>
				<div class="t2">
					<table style="width: 100%;">
						<colgroup>
							<col width="40%">
							<col width="30%">
							<col width="30%">
						</colgroup>
						<thead>
							<tr>
								<th colspan="3">&nbsp;&nbsp;&nbsp;sterre 이용 시</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th rowspan="3">&nbsp;&nbsp;&nbsp;물건 구매 시</th>
								<td>~ 1시간</td>
								<td>무료</td>
							</tr>
							<tr>
								<td>1시간~3시간</td>
								<td>
									1,000원/10분 최대 3,000원<br>
								</td>
							</tr>
							<tr>
								<td>3시간~</td>
								<td>1,000원/10분</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

		</div>
	</div>
</div>

<br><br><br><br>






<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=01f264a5818d96b1a1bc007c63985a32&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('서울 강남구 테헤란로 146', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">sterre</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
  <%@ include file="../footer.jsp" %>

</body>
</html>