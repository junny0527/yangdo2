<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<!-- 달력 ui -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<!-- kakaoMap -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b67b7601c934be1e54baa80b6f1a7de0"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b67b7601c934be1e54baa80b6f1a7de0&libraries=LIBRARY"></script>


<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mainList/reservation-jiwoong.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/includes/userHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mainList/mainLists.css">




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
				<div class="area">
						<select name="sido1" id="sido1" style="width: 150px; height: 40px; font-size: 18px; text-align: center; color:#0000008F; font-weight: bold;
						border-radius: 4px;	background-color: #fff; border: 1px solid #ed0918;" onchange="categoryChange(this)">
						</select>
						<select name="gugun1" id="gugun1" style="width: 150px; height: 40px; font-size: 18px; text-align: center; color:#0000008F; font-weight: bold;
						border-radius: 4px;	background-color: #fff; border: 1px solid #ed0918;" onchange="categoryChange(this)">
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
						<input type="text" id="datepicker" style="height: 30px; margin: 10px 6px 10px 3px; width: 100px; text-align: center;">
						<input type="text" id="datepicker2" style="height: 30px; margin: 10px 6px 22px 8px; width: 100px; text-align: center;">
					
				</section>
				<h3>상세조건</h3>
				<div class="btn_wrap">
					<button id="btn_child1" type="button" onclick="initCheckBtn()">초기화</button>
					<button id="btn_child2" type="submit">적용</button>
				</div>
				<section>
					<ul>
						<li>
							<input type="checkbox" id="yangdo" name="pensionItem" class="inp_chk" value="">
							<label for="yangdo" class="label_chk">양도 중</label>
						</li>
					</ul>
				</section>
				<section>
					<input type="hidden" id="persons" name="persons">
					<strong>인원</strong>
					<div class="cnt_people">
						<button type="button" class="disable dn" onclick="count('minus')" value="-">-</button>
						<span id="result">2</span>
						<button type="button" class="up" onclick="count('plus')" value="+">+</button>						
					</div>
				</section>
				<section>
					<strong>공용시설</strong>
					<ul class="hide_type half">
						<li>
							<input type="checkbox" id="swimming_pool" name="pensionItem" class="inp_chk">
							<label for="swimming_pool" class="label_chk">수영장</label>
						</li>
						<li>
							<input type="checkbox" id="football" name="pensionItem" class="inp_chk">
							<label for="football" class="label_chk">족구장</label>
						</li>
						<li>
							<input type="checkbox" id="cafe" name="pensionItem" class="inp_chk">
							<label for="cafe" class="label_chk">카페</label>
						</li>
						<li>
							<input type="checkbox" id="singroom" name="pensionItem" class="inp_chk">
							<label for="singroom" class="label_chk">노래방</label>
						</li>
						<li>
							<input type="checkbox" id="store" name="pensionItem" class="inp_chk">
							<label for="store" class="label_chk">편의점</label>
						</li>
						<li>
							<input type="checkbox" id="parking" name="pensionItem" class="inp_chk">
							<label for="parking" class="label_chk">주차장</label>
						</li>
						<li>
							<input type="checkbox" id="bbq" name="pensionItem" class="inp_chk">
							<label for="bbq" class="label_chk">BBQ</label>
						</li>
						<li>
							<input type="checkbox" id="restaurant" name="pensionItem" class="inp_chk">
							<label for="restaurant" class="label_chk">주방/식당</label>
						</li>
						<li>
							<input type="checkbox" id="smoking_room" name="pensionItem" class="inp_chk">
							<label for="smoking_room" class="label_chk">흡연부스</label>
						</li>
					</ul>
				</section>
				<section>
					<strong>객실 내 시설</strong>
					<ul class="hide_type half">
						<li>
							<input type="checkbox" id="refrigerator" name="pensionItem" class="inp_chk">
							<label for="refrigerator" class="label_chk">냉장고</label>
						</li>
						<li>
							<input type="checkbox" id="aircon" name="pensionItem" class="inp_chk">
							<label for="aircon" class="label_chk">에어컨</label>
						</li>
						<li>
							<input type="checkbox" id="tv" name="pensionItem" class="inp_chk">
							<label for="tv" class="label_chk">TV</label>
						</li>
						<li>
							<input type="checkbox" id="wifi" name="pensionItem" class="inp_chk">
							<label for="wifi" class="label_chk">와이파이</label>
						</li>
						<li>
							<input type="checkbox" id="bathroom_ware" name="pensionItem" class="inp_chk">
							<label for="bathroom_ware" class="label_chk">욕실용품</label>
						</li>
						<li>
							<input type="checkbox" id="washing_mu" name="pensionItem" class="inp_chk">
							<label for="washing_mu" class="label_chk">세탁기</label>
						</li>
						<li>
							<input type="checkbox" id="dry_mu" name="pensionItem" class="inp_chk">
							<label for="dry_mu" class="label_chk">드라이기</label>
						</li>
						<li>
							<input type="checkbox" id="bathtub" name="pensionItem" class="inp_chk">
							<label for="bathtub" class="label_chk">욕조</label>
						</li>
						<li>
							<input type="checkbox" id="cook_ok" name="pensionItem" class="inp_chk">
							<label for="cook_ok" class="label_chk">취사가능</label>
						</li>
						<li>
							<input type="checkbox" id="room_smoking" name="pensionItem" class="inp_chk">
							<label for="room_smoking" class="label_chk">객실 내 흡연</label>
						</li>
						<li>
							<input type="checkbox" id="dog" name="pensionItem" class="inp_chk">
							<label for="dog" class="label_chk">반려견 동반</label>
						</li>
					</ul>
				</section>
			</div>
			<!-- fillter -->
			<!-- List -->
			<div class="list_wrap">
				<div class="top_sort">
					<div class="pc">
						<div class="btn_wrap width_4">
							<button type="button" data-sort="HIT" class="on">
								<span>추천 순</span>
							</button>
							<button type="button" data-sort="DISTANCE" class="">
								<span>거리 순</span>
							</button>
							<button type="button" data-sort="LOWPRICE" class="">
								<span>낮은 가격 순</span>
							</button>
							<button type="button" data-sort="HIGHPRICE" class="">
								<span>높은 가격 순</span>
							</button>
						</div>
						<button type="button" id="btn_map" class="btn_map text-center" ">
						지도
						</button>
					</div>
				</div>
				<div id="poduct_list_area">
					<div class="title">
						<h3>${penMapList.LAW_NAME}</h3>
					</div>
					<!-- 사진정보 -->
					<ul>
						<li class="list_2 adcno3">
							<a href="">
								<p class="pic">
									<img class="lazy align" src="./assets/image/mainList/62e1e83e21944.jpg" style="margin-top: -159px; display: block;">
								</p>
								<div class="stage gra_black_vertical clearfix">
									<div class="evt_info">
										<span>${penMapList.STATUS}</span>
									</div>
									<div class="name">
										<strong>${penMapList.NAME}</strong>
										<p class="score">
											<em>${penMapList.STARS}</em>
											<c:choose>
												<c:when test="${penMapList.STARS <= 3}">
													<span>별로에요</span>
												</c:when>
												<c:when test="${penMapList.STARS > 3 && penMapList.STARS < 4}">
													<span>좋아요</span>
												</c:when>
												<c:when test="${penMapList.STARS >= 4 && penMapList.STARS <= 5}">
													<span>최고에요</span>
												</c:when>	
											</c:choose>	
										</p>
										<p>${penMapList.LAW_NAME} | ${penMapList.VISIT_ROAD3}</p>
									</div>
									<div class="price">
										<p>
											<b>${penMapList.PRICE}원</b>
										</p>
									</div>
								</div>
							</a>
						</li>
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
					<span>(주) 양도어때컴퍼니</span> 주소 : 서울특별시 봉천동 봉천사로 611, 648타워 14층 | 대표이사 : 최종빈 | 사업자등록번호: 741-64-88541 <br> 통신판매번호 : 2011-서울봉천-75441 | 관광사업자 등록번호: 제2011-74호 | 전화번호 : 1670-4215 |
					전자우편주소 : yangdo@goodchoice.kr <br> Copyright GC COMPANY Corp. All rights reserved.
				</address>
		
			</div>
		</footer>
		
		<!-- footer -->
	</div>
	<!-- wrap -->
		
</body>
	

	
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

	<script type="text/javascript">
			
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
		
		/* kakaoMap */
		
		
			var container = document.getElementById('map1'); //지도를 담을 영역의 DOM 레퍼런스
			var options = { //지도를 생성할 때 필요한 기본 옵션
			   center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
			   level: 13 //지도의 레벨(확대, 축소 정도)
			};
			
			var map = new kakao.maps.Map(container, options);
			
			var container = document.getElementById('map1'); //지도를 담을 영역의 DOM 레퍼런스
			var options = { //지도를 생성할 때 필요한 기본 옵션
			   center: new kakao.maps.LatLng(37.4917397537238, 127.48756458504242), //지도의 중심좌표.
			   level: 8 //지도의 레벨(확대, 축소 정도)
			};
			var map = new kakao.maps.Map(container, options);
			const center = map.getCenter();
			
			// 마커가 표시될 위치입니다 
			var markerPosition  = new kakao.maps.LatLng(37.5478130824694, 127.620673562908); 
			
			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});
			
			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
			
			var iwContent = 
				'<div ><a href=""><img style="width:25px; height:21px;" src="./assets/image/mainList/62e1e83e21944.jpg"></a><a style="color:black;" href="">양평 그린펜션</a>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		    iwPosition = new kakao.maps.LatLng(37.5478130824694, 127.620673562908); //인포윈도우 표시 위치입니다

		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
		    position : iwPosition, 
		    content : iwContent 
		});
		  
		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		infowindow.open(map, marker);
				
			$("#btn_map").on("click", function() {
		
				$("#local").modal("show");
				
				//지도 사이즈 변경 후 재 출력
				map.relayout();
				//지도 사이즈 변경 후 위치 재 출력
				map.setCenter(center);
			});
		
			$(".btn-secondary").on("click", function() {
				$(".modal").hide();
			});
	
	//////////////////////////인원추가 버튼 ////////////////////////////
	function count(type){
		
		//결과를 표시할 element
		const resultElement = document.getElementById('result')
		
		//현재 화면에 표시된 값
		var number = resultElement.innerText;
		
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
	}
	
	//체크박스 선택 초기화
	function initCheckBtn(){
		
		//초기화할 체크박스 선택
		var checkboxes = document.getElementsByName("pensionItem"); 
		
		/* 체크박스를 순회하며 값을 초기화 */
		checkboxes.forEach((checkbox) => {
    	checkbox.checked = false;
 	 })
	}
	
	////////////////////////// 지역선택 ////////////////////////////
		$('document').ready(function() {
		 var area0 = ["시/도 선택","서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];
		  var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
		   var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
		   var area3 = ["대덕구","동구","서구","유성구","중구"];
		   var area4 = ["광산구","남구","동구",     "북구","서구"];
		   var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
		   var area6 = ["남구","동구","북구","중구","울주군"];
		   var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
		   var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
		   var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
		   var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
		   var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
		   var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
		   var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
		   var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
		   var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
		   var area16 = ["서귀포시","제주시","남제주군","북제주군"];
		 
		 // 시/도 선택 박스 초기화
		
		 $("select[name^=sido]").each(function() {
		  $selsido = $(this);
		  $.each(eval(area0), function() {
		   $selsido.append("<option value='"+this+"'>"+this+"</option>");
		  });
		  $selsido.next().append("<option value=''>구/군 선택</option>");
		 });
		
		 // 시/도 선택시 구/군 설정
		
		 $("select[name^=sido]").change(function() {
		  var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
		  var $gugun = $(this).next(); // 선택영역 군구 객체
		  $("option",$gugun).remove(); // 구군 초기화
		
		  if(area == "area0")
		   $gugun.append("<option value=''>구/군 선택</option>");
		  else {
		   $.each(eval(area), function() {
		    $gugun.append("<option value='"+this+"'>"+this+"</option>");
		   });
		  }
		 });
		
		
		});
	
	</script>
</html>