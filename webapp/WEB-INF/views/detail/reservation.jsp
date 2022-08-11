<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c7c270257fa165edfa51150dee34ae7"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c7c270257fa165edfa51150dee34ae7&libraries=LIBRARY"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/detail/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/includes/userHeaderFooter.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/detail/reservation.css">


<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


</head>
<body>
	
   <div id="wrap">
      <c:import url="/WEB-INF/views/includes/userHeader.jsp"></c:import>
      <!-- //header -->
		      <div id="main">
		         <div id="content" class="clearfix">
		         	<input id="pensionNo" type="hidden" value="${pInfo.NO}">
		            <span id="area">양평</span> 
		            <span id="pensionName">${pInfo.NAME}</span> 
		            <span id="address">${pInfo.ADDRESS}</span> 
		            <img src="${pageContext.request.contextPath}/assets/image/detail/location.png">
		            <button id="map">숙소 위치확인</button>
		            <c:choose>
		            	<c:when test="${totalReview.AVGSTARS == 5.00}">
				            <div id="star">
				                <span class="starCount">
									<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				                </span> 
				                <span class="starCount">
				                	<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span id="starScore">${totalReview.AVGSTARS}</span>
				               <button id="pensionReview">(${totalReview.RCOUNT}) ></button>
				            </div>
			            </c:when>
			            <c:when test="${totalReview.AVGSTARS >= 4.10 && totalReview.AVGSTARS <= 4.99}">
				            <div id="star">
				                <span class="starCount">
									<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				                </span> 
				                <span class="starCount">
				                	<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png">
				            	</span> 
				            	<span id="starScore">${totalReview.AVGSTARS}</span>
				               <button id="pensionReview">(${totalReview.RCOUNT}) ></button>
				            </div>
			            </c:when>
			            <c:when test="${totalReview.AVGSTARS == 4.00}">
				            <div id="star">
				                <span class="starCount">
									<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				                </span> 
				                <span class="starCount">
				                	<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span id="starScore">${totalReview.AVGSTARS}</span>
				               <button id="pensionReview">(${totalReview.RCOUNT}) ></button>
				            </div>
			            </c:when>
			            <c:when test="${totalReview.AVGSTARS >= 3.10 && totalReview.AVGSTARS <= 3.99}">
				            <div id="star">
				                <span class="starCount">
									<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				                </span> 
				                <span class="starCount">
				                	<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span id="starScore">${totalReview.AVGSTARS}</span>
				               <button id="pensionReview">(${totalReview.RCOUNT}) ></button>
				            </div>
			            </c:when>
			            <c:when test="${totalReview.AVGSTARS == 3.00}">
				            <div id="star">
				                <span class="starCount">
									<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				                </span> 
				                <span class="starCount">
				                	<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span id="starScore">${totalReview.AVGSTARS}</span>
				               <button id="pensionReview">(${totalReview.RCOUNT}) ></button>
				            </div>
			            </c:when>
			            <c:when test="${totalReview.AVGSTARS >= 2.10 && totalReview.AVGSTARS <= 2.99}">
				            <div id="star">
				                <span class="starCount">
									<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				                </span> 
				                <span class="starCount">
				                	<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span id="starScore">${totalReview.AVGSTARS}</span>
				               <button id="pensionReview">(${totalReview.RCOUNT}) ></button>
				            </div>
			            </c:when>
			            <c:when test="${totalReview.AVGSTARS == 2.00}">
				            <div id="star">
				                <span class="starCount">
									<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				                </span> 
				                <span class="starCount">
				                	<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span id="starScore">${totalReview.AVGSTARS}</span>
				               <button id="pensionReview">(${totalReview.RCOUNT}) ></button>
				            </div>
			            </c:when>
			            <c:when test="${totalReview.AVGSTARS >= 1.10 && totalReview.AVGSTARS <= 1.99}">
				            <div id="star">
				                <span class="starCount">
									<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				                </span> 
				                <span class="starCount">
				                	<img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span id="starScore">${totalReview.AVGSTARS}</span>
				               <button id="pensionReview">(${totalReview.RCOUNT}) ></button>
				            </div>
			            </c:when>
			            <c:when test="${totalReview.AVGSTARS == 1.00}">
				            <div id="star">
				                <span class="starCount">
									<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				                </span> 
				                <span class="starCount">
				                	<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span id="starScore">${totalReview.AVGSTARS}</span>
				               <button id="pensionReview">(${totalReview.RCOUNT}) ></button>
				            </div>
			            </c:when>
			            <c:otherwise>
			            	<div id="star">
				                <span class="starCount">
									<img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png">
				                </span> 
				                <span class="starCount">
				                	<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span id="starScore">${totalReview.AVGSTARS}</span>
				               <button id="pensionReview">(${totalReview.RCOUNT}) ></button>
				            </div>
			            </c:otherwise>
		            </c:choose>
		         </div>

			<div id="gallery">
				<img id="mainImg" src="${pageContext.request.contextPath}/upload/${imgList[0].IMAGE_PATH}">
				<div id="imgCount">${imgList[0].RN} / ${totalCnt} | 전체사진</div>
				<div id="subImg">
					<c:forEach begin="${pMap.startPageBtnNo}" end="${pMap.endPageBtnNo}" step="1" var="page">
						<c:choose>
							<c:when test="${crtPage == page && crtPage > 1}">
								<a id="prev" href="${pageContext.request.contextPath}/reservation?pensionNo=${pInfo.NO}&crtPage=${page -1}">
									<button id="left">
										<img src="${pageContext.request.contextPath}/assets/image/detail/left.png">
									</button>
								</a>
							</c:when>
						</c:choose>
					</c:forEach>
					
					<c:choose>
						<c:when test="${crtPage == 1}">
							<a href="#">
								<button id="left">
									<img src="${pageContext.request.contextPath}/assets/image/detail/left.png">
								</button>
							</a>
						</c:when>
					</c:choose>
					
					<ul>
						<c:forEach items="${imgList}" var="imgList" varStatus="status">
							<c:if test="${status.count <= 6}">
								<li>
									<img class="list" src="${pageContext.request.contextPath}/upload/${imgList.IMAGE_PATH}" alt="${imgList.NO}">
									<input type="hidden" class="listNo" value="${imgList.NO}">
								</li>
							</c:if>
						</c:forEach>
					</ul>
					<c:forEach begin="${pMap.startPageBtnNo}" end="${pMap.endPageBtnNo}" step="1" var="page">
						<c:choose>
							<c:when test="${crtPage == page && crtPage < 4}">
								<a id="next" href="${pageContext.request.contextPath}/reservation?pensionNo=${pInfo.NO}&crtPage=${page +1}">
									<button id="right">
										<img src="${pageContext.request.contextPath}/assets/image/detail/right.png">
									</button>
								</a>
							</c:when>
						</c:choose>
					</c:forEach>
					
					<c:choose>
						<c:when test="${crtPage == 4}">
							<a href="#">
								<button id="right">
									<img src="${pageContext.request.contextPath}/assets/image/detail/right.png">
								</button>
							</a>
						</c:when>
					</c:choose>
				</div>
			</div>

		</div>
		      
      <div id="iconBox">
         <h4>편의시설 및 서비스</h4>
         <div id="container">
            <c:forEach items="${pAmenList}" var="pAmenList">
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> 
               <span class="iconName">${pAmenList.NAME}</span>
            </div>
            </c:forEach>
            <c:forEach items="${pPubList}" var="pPubList">
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> 
               <span class="iconName">${pPubList.NAME}</span>
            </div>
            </c:forEach>
         </div>
         
         <div id="menu">
            <a href="${pageContext.request.contextPath}/reservation"><button id="var">객실안내</button></a>
            <a href="${pageContext.request.contextPath}/infomation"><button id="var1">숙소정보</button></a>
            <a href="${pageContext.request.contextPath}/review"><button id="var2">리뷰</button></a>
         </div>
         
      </div>
      <div id="roomList">
			<div id="calendar">
				<form action="">
					<span>시작일 : </span> <input type="text" id="datepicker"> 
					<span>종료일 : </span> <input type="text" id="datepicker2">
					<button>일정 선택하기</button><br>
				</form>
			</div>
			<c:forEach items="${roomList}" var="roomList">
				<div class="room">
					<img class="roomImg" src="${pageContext.request.contextPath}/assets/image/detail/pension.PNG">
					<button class="roomImgList">객실 사진보기</button>
					<div class="roomInfo">
						<span class="roomName">${roomList.ROOM_NAME}</span>
						<div class="infoBtn">
							<span>객실 이용안내</span>
							<button class="information_Use" name="${roomList.NO}">보기</button>
						</div>
						<div class="settingPeople">기준 ${roomList.STANDARD_PEOPLE}인 / 최대 ${roomList.MAX_PEOPLE}인</div>
						<div class="defaultForm">
							<div>
								<span class="people">성인</span>
								<div>
									<button class="minus">
										<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
									</button>
									<span>2명</span>
									<button class="plus">
										<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
									</button>
								</div>
							</div>
							<div>
								<span class="people">아동</span>
								<div>
									<button class="minus">
										<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
									</button>
									<span>0명</span>
									<button class="plus">
										<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
									</button>
								</div>
							</div>
							<div>
								<span class="people">유아</span>
								<div>
									<button class="minus">
										<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
									</button>
									<span>0명</span>
									<button class="plus">
										<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
									</button>
								</div>
							</div>
							<div class="price">
								<span class="roomPrice">220,000원</span> 
								<span class="assignmentPrice">200,000원</span>
							</div>
						</div>
						<button>양도받으러가기</button>
					</div>
				</div>
			</c:forEach>


			<!-- //footer -->
      <c:import url="/WEB-INF/views/includes/userFooter.jsp"></c:import>
   </div>
	
	
	
</body>


<!-- 지도 모달 -->
 <div class="modal" id="local">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">        
      </div>
      <div class="modal-body">
        <div id="map1" style="width: 100%; height: 100%;"></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->




<!-- 객실 이용안내 모달 -->
<div class="modal fade infomationUse">
	<div class="modal-dialog">
		<div class="modal-content modalContent">
			<div class="modal-header">
				<h4 class="modal-title">객실 이용안내</h4>
			</div>
			<div class="modal-body modalInfo">
				<div>
					<div class="facTitle">편의시설</div>
						<c:forEach items="${pAmenList}" var="pAmenList">
							<span class="facilities">${pAmenList.NAME} </span>
						</c:forEach>
				</div>
				<div>
					<div class="facTitle">추가정보</div>
					<div class="facilities roomNo"></div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->



<!-- 객실 사진보기 모달 -->
<div class="modal fade roomPhoto">
	<div class="modal-dialog">
		<div class="modal-content roomContent">
			<div class="modal-body imgList">
				<button class="imgLeft">
                  <img src="${pageContext.request.contextPath}/assets/image/detail/left.png">
                </button>
                <ul>
                   <li><img src="${pageContext.request.contextPath}/assets/image/detail/back.jfif"></li>
                </ul>
                <button class="imgRight">
                   <img src="${pageContext.request.contextPath}/assets/image/detail/right.png">
                </button>
			</div>
			<div class="modal-footer footer">
				<button type="button" class="btn btn-default btnClose" data-dismiss="modal">닫기</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->









<script type="text/javascript">

	///////////////////////// 숙소위치보기 (지도) ///////////////////////////
	
	var container = document.getElementById('map1'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
	   center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	   level: 3 //지도의 레벨(확대, 축소 정도)
	};
	var map = new kakao.maps.Map(container, options);
	const center = map.getCenter();
	
	// 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 

	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);

	$("#map").on("click", function() {

		$("#local").modal("show");
		//지도 사이즈 변경 후 재 출력
		map.relayout();
		//지도 사이즈 변경 후 위치 재 출력
		map.setCenter(center);
	});

	$(".btn-secondary").on("click", function() {
		$(".modal").hide();
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
	
	///////////////////////// 객실 이용안내  ///////////////////////////
	
	$(".information_Use").on("click", function() {
		//입력한 객실정보로 사진 열기.
		var $this = $(this);  
		var name = Number($this.attr("name"));
		
		var roomList = new Array();
		
		<c:forEach items="${roomList}" var="roomList">
			roomList.push("${roomList.ADD_INFO}");
		</c:forEach>
		
		var roomNo = new Array();
		
		<c:forEach items="${roomNo}" var="roomNo">
			roomNo.push("${roomNo.ROOM_NO}");
		</c:forEach>
		
		for(var i = 0; i < roomNo.length; i++) {
			if(roomNo[i] == name) {
				$(".roomNo").text(roomList[i]);
			}
		}
		$(".infomationUse").modal("show");
	});
	

	
	///////////////////////// 객실 사진보기  ///////////////////////////
	
	$(".roomImgList").on("click", function() { 
		$(".roomPhoto").modal("show");
		var $this = $(this);  
		console.log($this);
	});
	
	
	///////////////////////// 펜션사진 버튼이벤트 페이징  ///////////////////////////
		$(".list").css("cursor", "pointer");
	
		$(".list").on("click", function() {
			var $this = $(this);
			var src = $this.attr("src");
			
			var no = $this.attr("alt");
			
			$("#mainImg").attr("src", src);
			$("#imgCount").text(no + ' / ' + ${totalCnt} + ' | ' + '전체사진' );
			
		});
			
		
		
	
		
		
		
	
	
	
	
	
	
	
	
	
	
	
</script>



</html>