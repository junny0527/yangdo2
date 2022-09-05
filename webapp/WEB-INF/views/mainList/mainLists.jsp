<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<!-- 달력 ui -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c7c270257fa165edfa51150dee34ae7&libraries=services"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c7c270257fa165edfa51150dee34ae7"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c7c270257fa165edfa51150dee34ae7&libraries=LIBRARY"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/mainList/reservation-jiwoong.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/includes/userHeaderFooter.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/mainList/mainLists.css">
<body>
	<!-- wrap -->
	<div id="wrap" class="wrap show">
		<!-- header -->
		<c:import url="/WEB-INF/views/includes/userHeader.jsp"></c:import>
		<!-- header -->

		<!-- header 지역선택 -->
		<div class="sub_top_wrap">
			<div class="sub_top">
				<h2>펜션</h2>
				<form action="${pageContext.request.contextPath}/main/search"
					method="get">
					<select name="sido1" id="sido1"
						style="margin-top: 20px; width: 150px; height: 40px; font-size: 18px; text-align: center; color: #0000008F; font-weight: bold; border-radius: 4px; background-color: #fff; border: 1px solid #ed0918;"
						onchange="">
					</select> <select name="gugun1" id="gugun1"
						style="margin-top: 20px; width: 150px; height: 40px; font-size: 18px; text-align: center; color: #0000008F; font-weight: bold; border-radius: 4px; background-color: #fff; border: 1px solid #ed0918;"
						onchange="">
					</select>
			</div>
		</div>
	</div>
	<!-- header 지역선택 -->
	
	<!-- content -->
	<div id="content" class="sub_wrap">
		<!-- fillter -->
		<div class="filter_wrap">
			<section class="date_wrap">
				<h3>날짜</h3>
				<input type="text" id="datepicker" name="datepicker"
					style="height: 30px; margin: 10px 6px 10px 3px; width: 100px; text-align: center; z-index: 100;"
					value=""> <input type="text" id="datepicker2"
					name="datepicker2"
					style="height: 30px; margin: 10px 6px 22px 8px; width: 100px; text-align: center; z-index: 100;"
					value="">
			</section>
			<h3>상세조건</h3>
			<div class="btn_wrap">
				<button id="btn_child1" type="button" onclick="initCheckBtn()">초기화</button>
				<button id="btn_child2" type="submit">적용</button>
			</div>
			<section>
				<ul>
					<li><input type="checkbox" id="yangdo" name="yCount"
						class="inp_chk" value="1"> <label for="yangdo"
						class="label_chk">양도 중</label></li>
				</ul>
			</section>
			<section>
				<input type="hidden" id="persons" name="persons" value="2">
				<strong>인원</strong>
				<div class="cnt_people">
					<button type="button" class="disable dn" onclick="count('minus')"
						value="-">-</button>
					<c:if test="${searchVo == null}">
						<span id="result">2</span>
					</c:if>
					<c:if test="${searchVo.persons == 2 }">
						<span id="result">2</span>
					</c:if>
					<c:if test="${searchVo.persons == 3 }">
						<span id="result">3</span>
					</c:if>
					<c:if test="${searchVo.persons == 4 }">
						<span id="result">4</span>
					</c:if>
					<c:if test="${searchVo.persons == 5 }">
						<span id="result">5</span>
					</c:if>
					<c:if test="${searchVo.persons == 6 }">
						<span id="result">6</span>
					</c:if>
					<c:if test="${searchVo.persons == 7 }">
						<span id="result">7</span>
					</c:if>
					<c:if test="${searchVo.persons == 8 }">
						<span id="result">8</span>
					</c:if>
					<c:if test="${searchVo.persons == 9 }">
						<span id="result">9</span>
					</c:if>
					<c:if test="${searchVo.persons == 10 }">
						<span id="result">10</span>
					</c:if>
					<button type="button" class="up" onclick="count('plus')" value="+">+</button>
				</div>
			</section>
			<section>
				<strong>공용시설</strong>
				<ul class="hide_type half">
					<li><input type="checkbox" id="swimming_pool" name="puOpt"
						class="inp_chk" value="P01"
						<c:forEach items="${searchVo.puOpt}" var="puOpt"><c:if test="${puOpt == 'P01'}">checked</c:if></c:forEach>>
						<label for="swimming_pool" class="label_chk">수영장</label></li>
					<li><input type="checkbox" id="football" name="puOpt"
						class="inp_chk" value="P02"
						<c:forEach items="${searchVo.puOpt}" var="puOpt"><c:if test="${puOpt == 'P02'}">checked</c:if></c:forEach>>
						<label for="football" class="label_chk">족구장</label></li>
					<li><input type="checkbox" id="cafe" name="puOpt"
						class="inp_chk" value="P03"
						<c:forEach items="${searchVo.puOpt}" var="puOpt"><c:if test="${puOpt == 'P03'}">checked</c:if></c:forEach>>
						<label for="cafe" class="label_chk">카페</label></li>
					<li><input type="checkbox" id="singroom" name="puOpt"
						class="inp_chk" value="P04"
						<c:forEach items="${searchVo.puOpt}" var="puOpt"><c:if test="${puOpt == 'P04'}">checked</c:if></c:forEach>>
						<label for="singroom" class="label_chk">노래방</label></li>
					<li><input type="checkbox" id="store" name="puOpt"
						class="inp_chk" value="P05"
						<c:forEach items="${searchVo.puOpt}" var="puOpt"><c:if test="${puOpt == 'P05'}">checked</c:if></c:forEach>>
						<label for="store" class="label_chk">편의점</label></li>
					<li><input type="checkbox" id="parking" name="puOpt"
						class="inp_chk" value="P06"
						<c:forEach items="${searchVo.puOpt}" var="puOpt"><c:if test="${puOpt == 'P06'}">checked</c:if></c:forEach>>
						<label for="parking" class="label_chk">주차장</label></li>
					<li><input type="checkbox" id="bbq" name="puOpt"
						class="inp_chk" value="P07"
						<c:forEach items="${searchVo.puOpt}" var="puOpt"><c:if test="${puOpt == 'P07'}">checked</c:if></c:forEach>>
						<label for="bbq" class="label_chk">BBQ</label></li>
					<li><input type="checkbox" id="restaurant" name="puOpt"
						class="inp_chk" value="P08"
						<c:forEach items="${searchVo.puOpt}" var="puOpt"><c:if test="${puOpt == 'P08'}">checked</c:if></c:forEach>>
						<label for="restaurant" class="label_chk">주방/식당</label></li>
					<li><input type="checkbox" id="smoking_room" name="puOpt"
						class="inp_chk" value="P09"
						<c:forEach items="${searchVo.puOpt}" var="puOpt"><c:if test="${puOpt == 'P09'}">checked</c:if></c:forEach>>
						<label for="smoking_room" class="label_chk">흡연부스</label></li>
				</ul>
			</section>
			<section>
				<strong>객실 내 시설</strong>
				<ul class="hide_type half">
					<li><input type="checkbox" id="refrigerator" name="anOpt"
						class="inp_chk" value="A01"
						<c:forEach items="${searchVo.anOpt}" var="anOpt"><c:if test="${anOpt == 'A01'}">checked</c:if></c:forEach>>
						<label for="refrigerator" class="label_chk">냉장고</label></li>
					<li><input type="checkbox" id="aircon" name="anOpt"
						class="inp_chk" value="A02"
						<c:forEach items="${searchVo.anOpt}" var="anOpt"><c:if test="${anOpt == 'A02'}">checked</c:if></c:forEach>>
						<label for="aircon" class="label_chk">에어컨</label></li>
					<li><input type="checkbox" id="tv" name="anOpt"
						class="inp_chk" value="A03"
						<c:forEach items="${searchVo.anOpt}" var="anOpt"><c:if test="${anOpt == 'A03'}">checked</c:if></c:forEach>>
						<label for="tv" class="label_chk">TV</label></li>
					<li><input type="checkbox" id="wifi" name="anOpt"
						class="inp_chk" value="A04"
						<c:forEach items="${searchVo.anOpt}" var="anOpt"><c:if test="${anOpt == 'A04'}">checked</c:if></c:forEach>>
						<label for="wifi" class="label_chk">와이파이</label></li>
					<li><input type="checkbox" id="bathroom_ware" name="anOpt"
						class="inp_chk" value="A05"
						<c:forEach items="${searchVo.anOpt}" var="anOpt"><c:if test="${anOpt == 'A05'}">checked</c:if></c:forEach>>
						<label for="bathroom_ware" class="label_chk">욕실용품</label></li>
					<li><input type="checkbox" id="washing_mu" name="anOpt"
						class="inp_chk" value="A06"
						<c:forEach items="${searchVo.anOpt}" var="anOpt"><c:if test="${anOpt == 'A06'}">checked</c:if></c:forEach>>
						<label for="washing_mu" class="label_chk">세탁기</label></li>
					<li><input type="checkbox" id="dry_mu" name="anOpt"
						class="inp_chk" value="A07"
						<c:forEach items="${searchVo.anOpt}" var="anOpt"><c:if test="${anOpt == 'A07'}">checked</c:if></c:forEach>>
						<label for="dry_mu" class="label_chk">드라이기</label></li>
					<li><input type="checkbox" id="bathtub" name="anOpt"
						class="inp_chk" value="A08"
						<c:forEach items="${searchVo.anOpt}" var="anOpt"><c:if test="${anOpt == 'A08'}">checked</c:if></c:forEach>>
						<label for="bathtub" class="label_chk">욕조</label></li>
					<li><input type="checkbox" id="cook_ok" name="anOpt"
						class="inp_chk" value="A09"
						<c:forEach items="${searchVo.anOpt}" var="anOpt"><c:if test="${anOpt == 'A09'}">checked</c:if></c:forEach>>
						<label for="cook_ok" class="label_chk">취사가능</label></li>
					<li><input type="checkbox" id="room_smoking" name="anOpt"
						class="inp_chk" value="A10"
						<c:forEach items="${searchVo.anOpt}" var="anOpt"><c:if test="${anOpt == 'A10'}">checked</c:if></c:forEach>>
						<label for="room_smoking" class="label_chk">객실 내 흡연</label></li>
					<li><input type="checkbox" id="dog" name="anOpt"
						class="inp_chk" value="A11"
						<c:forEach items="${searchVo.anOpt}" var="anOpt"><c:if test="${anOpt == 'A11'}">checked</c:if></c:forEach>>
						<label for="dog" class="label_chk">반려견 동반</label></li>
				</ul>
			</section>
			</form>
		</div>
		<!-- fillter -->
		<!-- List -->
		<div class="list_wrap">
			<div class="top_sort">
				<div class="pc">
					<div class="btn_wrap width_4">
						<button type="button" data-sort="HIT" class="on" id="hit"
							value="hit"
							onclick="location.href='${pageContext.request.contextPath}/main/hit?pensionNo=${pensionVo.pNo}&datepicker=${datePicker}&datepicker2=${datePicker2}'">
							<span>추천 순</span>
						</button>
						<button type="button" data-sort="LOWPRICE" class="on"
							id="lowprice" value="lowprice"
							onclick="location.href='${pageContext.request.contextPath}/main/lowprice?pensionNo=${pensionVo.pNo}&datepicker=${datePicker}&datepicker2=${datePicker2}'">
							<span>낮은 가격 순</span>
						</button>
						<button type="button" data-sort="HIGHPRICE" class="on"
							id="highprice" value="highprice"
							onclick="location.href='${pageContext.request.contextPath}/main/highprice?pensionNo=${pensionVo.pNo}&datepicker=${datePicker}&datepicker2=${datePicker2}'">
							<span>높은 가격 순</span>
						</button>
					</div>
					<button type="button" id="btn_map" class="btn_map text-center">
						지도</button>
				</div>
			</div>
			<div id="poduct_list_area">
				<!-- 
					<!-- 사진정보 -->
					
				<c:if test="${param.gugun1 == null || param.gugun1 == ''}">
					<div class="title">
	            		<h3>전국</h3>
	            	</div>
				</c:if>
				<div class="title">
                	<h3>${param.gugun1}</h3>
                </div>
	                
				<ul>
					<c:forEach var="pensionVo" items="${pList}" varStatus="i">
						<input type= "hidden" class = "lawNames" name="lawNames" value = "${pensionVo.lawName}">
						<input type= "hidden" class = "pName" name="pNames" value = "${pensionVo.pName}">
						<input type= "hidden" class = "address" name="address" value = "${pensionVo.address}">
						
						<li class="list_2 adcno3"><a href="${pageContext.request.contextPath}/reservation?pensionNo=${pensionVo.pNo}&datepicker=${datePicker}&datepicker2=${datePicker2}">
								<img class="lazy align"
								src="${pageContext.request.contextPath }/upload/${pensionVo.saveName}"
								style="margin-top: -159px; display: block;">
								<div class="stage gra_black_vertical clearfix">
								<span class="dis"></span>
									<div class="evt_info">
										<c:if test="${pensionVo.yCount == 1}">
											<span>양도중</span>
										</c:if>
									</div>
									
									<div class="name">
										<strong>${pensionVo.pName}</strong>
										<p class="score">
											<em>${pensionVo.stars}</em>
											<c:choose>
												<c:when test="${pensionVo.stars <= 3}">
													<span>별로에요 (${pensionVo.rCount})</span>
												</c:when>
												<c:when test="${pensionVo.stars > 3 && pensionVo.stars < 4}">
													<span>좋아요 (${pensionVo.rCount})</span>
												</c:when>
												<c:when
													test="${pensionVo.stars >= 4 && pensionVo.stars <= 5}">
													<span>최고에요 (${pensionVo.rCount})</span>
												</c:when>
											</c:choose>
										</p>
										<p>${pensionVo.gugunName}| ${pensionVo.visitRoad3}</p>
									</div>
									<div class="price">
										<p>
											<b>${pensionVo.penCPrice}원</b>
										</p>
									</div>
								</div>
						</a></li>
						<br>
					</c:forEach>
				</ul>
				<!-- 사진 정보 -->

			</div>
		</div>
		<!-- List -->
	</div>
	<!-- content -->



	<!-- //footer -->
	<footer>
		<div class="align">
			<ul class="link">
				<li><a href="">회사소개</a> <span>|</span></li>
				<li><a href="">이용약관</a> <span>|</span></li>
				<li><a href="">개인정보처리방침</a> <span>|</span></li>
				<li><a href="">소비자 분쟁해결 기준</a> <span>|</span></li>
				<li><a href="">사업자 정보확인</a> <span>|</span></li>
				<li><a href="">양도어때 마케팅센터</a> <span>|</span></li>
				<li><a href="">액티비티 호스트센터</a> <span>|</span></li>
				<li><a href="">펜션 양도어때</a> <span>|</span></li>
				<li><a href="">콘텐츠산업진흥법에의한 표시</a></li>
			</ul>

			<p>
				<b>양도어때 고객센터 1670-4215</b> <span>오전 9시 - 새벽 3시</span>
			</p>

			<address>
				<span>(주) 양도어때컴퍼니</span> 주소 : 서울특별시 봉천동 봉천사로 611, 648타워 14층 | 대표이사 :
				최종빈 | 사업자등록번호: 741-64-88541 <br> 통신판매번호 : 2011-서울봉천-75441 |
				관광사업자 등록번호: 제2011-74호 | 전화번호 : 1670-4215 | 전자우편주소 :
				yangdo@goodchoice.kr <br> Copyright GC COMPANY Corp. All rights
				reserved.
			</address>

		</div>
	</footer>

	<!-- footer -->
	</div>
	<!-- wrap -->


<!-- 지도 모달 -->
<div class="modal" id="local" >
 <div class="modal-dialog" >
   <div class="modal-content" >
     <div class="modal-header" >        
     </div>
     <div class="modal-body">
       <div id="map1" >
       	
       </div>
     </div>
     <div class="modal-footer">
       <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
     </div>
   </div><!-- /.modal-content -->
 </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>
		


<script type="text/javascript">
	
//////////////////////////지역선택 ////////////////////////////

//시도 구군 정의
//시도
var sidoArea = ["서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];

//구군
var gugunArea = [];

gugunArea[0] = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
gugunArea[1] = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
gugunArea[2] = ["대덕구","동구","서구","유성구","중구"];
gugunArea[3] = ["광산구","남구","동구","북구","서구"];
gugunArea[4] = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
gugunArea[5] = ["남구","동구","북구","중구","울주군"];
gugunArea[6] = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
gugunArea[7] = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
gugunArea[8] = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
gugunArea[9] = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
gugunArea[10] = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
gugunArea[11] = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
gugunArea[12] = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
gugunArea[13] = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
gugunArea[14] = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
gugunArea[15] = ["서귀포시","제주시","남제주군","북제주군"];


//로딩되기 전에
$('document').ready(function(){
	//시도 그리기
	initSiDoGuGun();
	
	
});
	

//시도선택했을때
$("#sido1").change(function() {
	var sidoNo = $("option",$(this)).index($("option:selected",$(this)))-1
	console.log(sidoNo);
	
	guGunList(sidoNo)
});



	/* kakaoMap */
	var mapContainer = document.getElementById('map1'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.56668001457865, 126.97849383348301), // 지도의 중심좌표
	        level: 4 // 지도의 확대 레벨
	};  
		
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption);
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	var addressArray = [];
	var addressName = [];
	var addresslist = $('.lawNames');
	var pNamelist = $('.pName');
	var pensionList = [];
	
	for(var i=0; i<pNamelist.length; i++){
		pensionList.push({
		address : $("input[name='address']").eq(i).val(),
		title : $("input[name='pNames']").eq(i).val()
		});
	}
	
	
	var disArray = new Array();
	
	for(let i =0; i<pensionList.length; i++){
		geocoder.addressSearch(pensionList[i].address,function(result, status) {
			if (status === kakao.maps.services.Status.OK) {
				var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			
				// 결과값으로 받은 위치를 마커로 표시합니다
				var marker = new kakao.maps.Marker({
					map: map,
					position: coords
				});
				// 마커에 표시할 인포윈도우를 생성합니다 
				var infowindow = new kakao.maps.InfoWindow({
					//content: positions[i].content // 인포윈도우에 표시할 내용
					content: '<div style="width:150px;text-align:center;padding:6px 0;">'+pensionList[i].title+'</div>' // 인포윈도우에 표시할 내용
				});
				
				infowindow.open(map, marker);
				// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				map.setCenter(coords);
			
				
				(function location(){
					navigator.geolocation.getCurrentPosition(
					function(position) {
					
						
					//현재위치 위도 경도	
					var location = {
							lat : position.coords.latitude,
							lon : position.coords.longitude	
					}
					
					console.log("위도:" + location.lat + "경도:" + location.lon );
					
					//펜션 위도경도
					var locArray = [];
					
					
					var pLat = result[0].y;
					var pLon = result[0].x;
					 
					
					function deg2rad(deg) {
				        return deg * (Math.PI/180)
				    }
					
				    var r = 6371; //지구의 반지름(km)
				    var dLat = deg2rad(pLat-location.lat);
				    var dLon = deg2rad(pLon-location.lon);
				    var a = Math.sin(dLat/2) * Math.sin(dLat/2) + Math.cos(deg2rad(location.lat)) * Math.cos(deg2rad(pLat)) * Math.sin(dLon/2) * Math.sin(dLon/2);
				    var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
				    var d = r * c; // Distance in km
				    
				    //km단위 변환
				    var km = Math.round(d * 100) / 100; 
				    
				    var dis = document.getElementsByClassName("dis");
				    console.log(dis);
				    var no = i;
				    
				    
				    $(".dis")[i].innerHTML = km + "km";
				    
				    
				    
					disArray.push(km);
					console.log("정렬전"+disArray);
				    
					disArray.sort(function(a, b){
						
						if(a > b) return 1;
						  if(a === b) return 0;
						  if(a < b) return -1;
					});
					}, 
					);
					            
					})();
			} 
	
		});   
	}
	
	
	
	
	
		for(var i=0; i<addressArray.length; i++){
			
			var arr = [];
			arr[i] = addressArray[i].groupName;
			console.log(arr.length);
			// 주소로 좌표를 검색합니다
			geocoder.addressSearch(
					addressArray[i].groupAddress,
					
					function(result, status, data) {
				    	// 정상적으로 검색이 완료됐으면 
				    	if (status === kakao.maps.services.Status.OK) {
				        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
				        // 결과값으로 받은 위치를 마커로 표시합니다
				        var marker = new kakao.maps.Marker({
				            map: map,
				            position: coords
				        });
				        marker.setMap(map);
			        	var content = '<div style="width:150px;text-align:center;padding:6px 0;">'+ arr[0]  +'</div>'
				        
				        var customOverlay = new daum.maps.CustomOverlay({
				        	position: coords,
				        	content: content
				        });
				        
				        
				        // 인포윈도우로 장소에 대한 설명을 표시합니다
				        var infowindow = new kakao.maps.InfoWindow({
				            content
				        });
				        infowindow.open(map, marker);
				       
		    		} 
			});    
		}
		
		
$("#btn_map").on("click", function() {
	$("#local").modal("show");
	
	//지도 사이즈 변경 후 재 출력
	map.relayout();
	//지도 사이즈 변경 후 위치 재 출력
	map.setCenter(mapOption.center);
	
});
		
$(".btn-secondary").on("click", function() {
	$(".modal").hide();
});
			
//추천순 버튼들 클릭시
$(".on").on("click",function(){
	
	var button = $(this).val();
	
	console.log(button);
	
});
				
//적용버튼 클릭시
$("#btn_child2").on("click",function(){
	
	console.log("적용");
	
	if($(this).is("checked")==true){
		
		var checked = $(this).val();
		console.log(checked);
	}
	
});
				
//양도 버튼 클릭시
$("#yangdo").on("click",function(){
	console.log("양도안녕")
});
			
	///////////////////////// 일정선택 ///////////////////////////
	$(function() {
		//모든 datepicker에 대한 공통 옵션 설정
		$.datepicker.setDefaults({
		    dateFormat: 'yy-mm-dd' //Input Display Format 변경
		    ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
		    ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
		    ,changeYear: true //콤보박스에서 년 선택 가능
		    ,changeMonth: true //콤보박스에서 월 선택 가능                
		    ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
		    ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
		    ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
		    ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
		    ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
		    ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
		    ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
		    ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
		    ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
		    ,minDate: "-1Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
		    ,maxDate: "+1Y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                    
		});
			
		//input을 datepicker로 선언
		$("#datepicker").datepicker();                    
		$("#datepicker2").datepicker();
	
			       		 
		//From의 초기값을 오늘 날짜로 설정
		$('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
		//To의 초기값을 내일로 설정
		$('#datepicker2').datepicker('setDate', '+1D'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
	});
					
				
	//////////////////////////인원추가 버튼 ////////////////////////////
	function count(type){
		
		//결과를 표시할 element
		const resultElement = document.getElementById('result')
		
		//현재 화면에 표시된 값
		var number = resultElement.innerText;
		$("#persons").val(number);
		
		//더하기
		if(type === 'plus'){
			
			number = parseInt(number) + 1;
			
			if(number > 10){
				alert("최대 인원입니다.")
				return false;
			}
		}else if(type === 'minus')  {
		    number = parseInt(number) - 1;
		    
		    if(number < 2){
		    	alert("최소 인원입니다.")
		    	return false;
		    }
		  }
		
			//결과 
			resultElement.innerText = number;
			$("#persons").val(number);
		}
	
		//체크박스 선택 초기화
		function initCheckBtn(){
		
		console.log("야임마")	
			
		//초기화할 체크박스 선택
		var checkPuopt = document.getElementsByName("puOpt"); 
		var checkAnopt = document.getElementsByName("anOpt"); 
		var checkYcount = document.getElementsByName("yCount"); 
	
		/* 체크박스를 순회하며 값을 초기화 */
		checkPuopt.forEach((checkbox) => {
		checkbox.checked = false;
		 })
		 
		checkAnopt.forEach((checkbox) => {
		checkbox.checked = false;
		 })
		
		checkYcount.forEach((checkbox) => {
		checkbox.checked = false;
		 })
	}
			
		


	//시/도 셀렉트박스 초기화 그리기
	function initSiDoGuGun(){
		
		var selectedSidoNo;
		
		
		$("#sido1").html("");
		
		$("#sido1").append("<option value=''>시/도선택</option>");
		for(var i=0; i<sidoArea.length; i++){
			
			if(sidoArea[i] == "${param.sido1}"){
				$("#sido1").append("<option value='"+sidoArea[i]+"' selected='selected'>"+sidoArea[i]+"</option>")
				selectedSidoNo = i;
				
			}else {
				$("#sido1").append("<option value='"+sidoArea[i]+"'>"+sidoArea[i]+"</option>");
			}
			
		}
		
		if(selectedSidoNo == null){
			$("#gugun1").html("");
			$("#gugun1").append("<option value=''>구/군선택</option>");
		}else {
			guGunList(selectedSidoNo);
		}
	}
	
	
	
	//선택한 
	function guGunList(sidoNo){
		
		$("#gugun1").html("");
		
		for(var i=0; i<gugunArea[sidoNo].length; i++){
			if(gugunArea[sidoNo][i] == "${param.gugun1}"){
				$("#gugun1").append("<option value='"+gugunArea[sidoNo][i]+"' selected='selected'>"+gugunArea[sidoNo][i]+"</option>");
			}else {
				$("#gugun1").append("<option value='"+gugunArea[sidoNo][i]+"'>"+gugunArea[sidoNo][i]+"</option>");
			}
		}
		
	}	
	
	
	
	
			
</script>				
</html>