<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약관리</title>
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/css/host/fullcalendar-5.11.2/lib/main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/css/host/fullcalendar-5.11.2/lib/locales/ko.js"></script>


<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/hostHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/fullcalendar-5.11.2/lib/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/reservationManagement.css">


<body>

<!-- header -->
<c:import url="/WEB-INF/views/includes/hostHeader.jsp"></c:import>
<!-- header -->

<!-- table -->
<div id="content">	
	<div id="roomstatus" class = "center-block">
		<p class = "subject">예약현황</p>
		<div class = "center-block">
			<ul>
				<li><span id = "one" class = "box">예</span></li>
				<li><span id = "two" class = "box">이</span></li>
				<li><span id = "three" class = "box">완</span></li>
				<li><span id = "four" class = "box">취</span></li>
				<li><span id = "five" class = "box">양</span></li>
				<li><span id = "six" class = "box">변</span></li>
			</ul>
			<ul>
				<li>예약완료</li>
				<li>이용중</li>
				<li>이용완료</li>
				<li>일반 취소</li>
				<li>양도대기</li>
				<li id = "yangdo"><br>예약자 변경<br>(양도에 의한 취소)</li>
			</ul>
		</div>
	</div>
	<br><br><br>
	
	<div id = "calendar"></div>
</div>
<!-- content -->
	
<!-- footer -->
<c:import url="/WEB-INF/views/includes/hostFooter.jsp"></c:import>
<!-- footer -->

</body>

<!-- event modal -->
<!-- 예약완료, 예약자 변경 modal -->
<div id = "roomreserved" class = "modal fade in" aria-hidden="false" >
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">객실 현황</h4>
			</div>
			
			<div class="modal-body">
				<div>
					<h5 class = "reserveroom"></h5>
					<br>
					<p class = "reservestatus"></p>
					<p class = "reservenum">예약 번호 : </p>
					<p class = "reservename">예약자 이름 : </p>
					<p class = "reservehp">예약자 번호 : </p>
					<br><br>
					<p>예약 인원 </p>
					<p class = "reserveadult">성인 : 명 </p>
					<p class = "reservekid">아동 : 명 </p>
					<p class = "reservebaby">유아 : 명 </p>
				</div>
				<br>
				<div>
					<button class = "btn btn-close" data-dismiss="modal" aria-label="Close">닫기</button>
					<button class = "btn btn-danger reservecancel">예약취소</button>
					<button class = "btn btn-primary roomcheckin">체크인</button>
				</div>
			</div>
			
		</div>
	</div>
</div>
<!-- 예약완료, 예약자 변경 modal -->

<!-- 이용중 modal  -->
<div id = "roominuse" class = "modal fade in" aria-hidden="false" >
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">객실 현황</h4>
			</div>
			
			<div class="modal-body">
				<div>
					<h5 class = "reserveroom"></h5>
					<br>
					<p class = "reservestatus"></p>
					<p class = "reservenum">예약 번호 : </p>
					<p class = "reservename">예약자 이름 : </p>
					<p class = "reservehp">예약자 번호 : </p>
					<br><br>
					<p>예약 인원 </p>
					<p class = "reserveadult">성인 : 명 </p>
					<p class = "reservekid">아동 : 명 </p>
					<p class = "reservebaby">유아 : 명 </p>
				</div>
				<br>
				<div>
					<button class = "btn btn-close" data-dismiss="modal" aria-label="Close">닫기</button>
					<button class = "btn used">이용완료</button>
				</div>
			</div>
			
		</div>
	</div>
</div>
<!-- 이용중 modal  -->

<!-- 이용완료, 일반취소 modal  -->
<div id = "roomchecking" class = "modal fade in" aria-hidden="false" >
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">객실 현황</h4>
			</div>
			
			<div class="modal-body">
				<div>
					<h5 class = "reserveroom"></h5>
					<br>
					<p class = "reservestatus"></p>
					<p class = "reservenum">예약 번호 : </p>
					<p class = "reservename">예약자 이름 : </p>
					<p class = "reservehp">예약자 번호 : </p>
					<br><br>
					<p>예약 인원 </p>
					<p class = "reserveadult">성인 : 명 </p>
					<p class = "reservekid">아동 : 명 </p>
					<p class = "reservebaby">유아 : 명 </p>
				</div>
				<br>
				<div>
					<button class = "btn btn-close" data-dismiss="modal" aria-label="Close">닫기</button>
				</div>
			</div>
			
		</div>
	</div>
</div>
<!-- 이용완료, 일반취소 modal  -->

<!-- 양도대기 modal  -->
<div id = "roomstandby" class = "modal fade in" aria-hidden="false" >
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">객실 현황</h4>
			</div>
			
			<div class="modal-body">
				<div>
					<h5 class = "reserveroom"></h5>
					<br>
					<p class = "reservestatus"></p>
					<p class = "reservenum">예약 번호 : </p>
					<p class = "reservename">예약자 이름 : </p>
					<p class = "reservehp">예약자 번호 : </p>
					<br><br>
					<p>예약 인원 </p>
					<p class = "reserveadult">성인 : 명 </p>
					<p class = "reservekid">아동 : 명 </p>
					<p class = "reservebaby">유아 : 명 </p>
				</div>
				<br>
				<div>
					<button class = "btn btn-close" data-dismiss="modal" aria-label="Close">닫기</button>
					<button class = "btn btn-danger reservecancel">예약취소</button>
				</div>
			</div>
			
		</div>
	</div>
</div>
<!-- 양도대기 modal  -->

<!-- event modal -->	

<script type = "text/javascript">

document.addEventListener('DOMContentLoaded', function() {
	var initialLocaleCode = 'ko';
    var calendarEl = document.getElementById('calendar');
    
    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
    	left: 'today',
        center: 'title',
        right: 'prev,next'
      },
      locale: initialLocaleCode,
      navLinks: false, // can click day/week names to navigate views
      selectable: false,
      selectMirror: false,
      eventClick: function(info) {
    	  var reserveid = info.event.id;
    	  console.log(reserveid);
    	  
    	  $.ajax({
    			url : "${pageContext.request.contextPath}/host/api/getReserve",
    			type : "post",
    			contentType : "application/json",
    			data : JSON.stringify(reserveid),	// js객체를 문자열로 변경
    			dataType : "json",
    			success : function(result){
    				console.log('성공');
    				
    				if(result.status == 1){
    					console.log(result.status)
    					
    					$(".reserveroom").html(result.roomName);
    					$(".reserveroom").css('text-align', 'center');
    					$(".reserveroom").css('font-size', '20px');
    					$(".reservenum").html('예약 번호 : '+result.reservationNo);
        				$(".reservename").html('예약자 이름 : '+result.guestName);
        				$(".reservehp").html('예약자 번호 : '+result.hp);
        				$(".reservestatus").html('예약완료');
        				$(".reservestatus").css('float', 'right');
        				$(".reservestatus").css('font-size', '20px');
        				$(".reservestatus").css('color', 'white');
        				$(".reservestatus").css('background-color', '#5eb917');
        				$(".reserveadult").html('성인 : '+result.adult+'명');
        				$(".reservekid").html('아동 : '+result.kid+'명');
        				$(".reservebaby").html('유아 : '+result.baby+'명');
        				
        				$("#roomreserved").modal("show");
        				
        				$(".roomcheckin").off("click").on("click", function(){
        					var reserveNum = result.reservationNo;
       						$.ajax({
       							url : "${pageContext.request.contextPath}/host/api/changestatusRoomCheckin",
       							type : "post",
       							data : JSON.stringify(reserveNum),
       							contentType : 'application/json',
       							dataType : "json",
       							success : function(good){
       								console.log("change status");
       								window.location.href = "${pageContext.request.contextPath}/host/reservemanage";
       							},
       							error : function(XHR, status, error) {
       								console.log(status + ' : ' + error);
       							}
       						});
       						
       						$("#roomreserved").modal("hide");
    					});
        				
        				
        				$(".reservecancel").off("click").on("click", function(){
        					var reserveNum = result.reservationNo;
       						$.ajax({
       							url : "${pageContext.request.contextPath}/host/api/changestatusReserveCancel",
       							type : "post",
       							data : JSON.stringify(reserveNum),
       							contentType : 'application/json',
       							dataType : "json",
       							success : function(good){
       								console.log("change status");
       								window.location.href = "${pageContext.request.contextPath}/host/reservemanage";
       							},
       							error : function(XHR, status, error) {
       								console.log(status + ' : ' + error);
       							}
       						});
       						
       						$("#roomreserved").modal("hide");
    					});
       					
   					};
    				
    				if(result.status == 2){
    					console.log(result.status);
    					
    					$(".reserveroom").html(result.roomName);
    					$(".reserveroom").css('text-align', 'center');
    					$(".reserveroom").css('font-size', '20px');
    					$(".reservenum").html('예약 번호 : '+result.reservationNo);
        				$(".reservename").html('예약자 이름 : '+result.guestName);
        				$(".reservehp").html('예약자 번호 : '+result.hp);
        				$(".reservestatus").html('이용중');
        				$(".reservestatus").css('float', 'right');
        				$(".reservestatus").css('font-size', '20px');
        				$(".reservestatus").css('color', 'white');
        				$(".reservestatus").css('background-color', '#337ab7');
        				$(".reserveadult").html('성인 : '+result.adult+'명');
        				$(".reservekid").html('아동 : '+result.kid+'명');
        				$(".reservebaby").html('유아 : '+result.baby+'명');
        				$(".used").css('background-color', '#2c3e50');
        				$(".used").css('color', 'white');
        				
        				$("#roominuse").modal("show");
        				
        				$(".used").off("click").on("click", function(){
        					console.log(result.guestNo);
        					console.log(result.totalPrice);
        					
        					var point = (result.totalPrice) * 0.01;
        					console.log(point);
        					var pVo = {
        							reserveNo: result.reservationNo,
        							point: point
        						};
        					
        					var reserveNum = result.reservationNo;
        					
        					console.log(pVo);
        					
       						$.ajax({
       							url : "${pageContext.request.contextPath}/host/api/givepoints",
       							type : "post",
       							data : JSON.stringify(pVo),
       							contentType : 'application/json',
       							dataType : "json",
       							success : function(good){
       								console.log("포인트 부여");
       								
       								$.ajax({
       	       							url : "${pageContext.request.contextPath}/host/api/changestatusUsed",
       	       							type : "post",
       	       							data : JSON.stringify(reserveNum),
       	       							contentType : 'application/json',
       	       							dataType : "json",
       	       							success : function(good){
       	       								console.log("change status");
       	       								window.location.href = "${pageContext.request.contextPath}/host/reservemanage";
       	       							},
       	       							error : function(XHR, status, error) {
       	       								console.log(status + ' : ' + error);
       	       							}
       	       						});
       								
       							},
       							error : function(XHR, status, error) {
       								console.log(status + ' : ' + error);
       							}
       						});
       						
        					$("#roominuse").modal("hide");
   						});
    				}
    				
    				if(result.status == 3){
    					console.log(result.status);
    					
    					$(".reserveroom").html(result.roomName);
    					$(".reserveroom").css('text-align', 'center');
    					$(".reserveroom").css('font-size', '20px');
    					$(".reservenum").html('예약 번호 : '+result.reservationNo);
        				$(".reservename").html('예약자 이름 : '+result.guestName);
        				$(".reservehp").html('예약자 번호 : '+result.hp);
        				$(".reservestatus").html('이용완료');
        				$(".reservestatus").css('float', 'right');
        				$(".reservestatus").css('font-size', '20px');
        				$(".reservestatus").css('color', 'white');
        				$(".reservestatus").css('background-color', '#2c3e50');
        				$(".reserveadult").html('성인 : '+result.adult+'명');
        				$(".reservekid").html('아동 : '+result.kid+'명');
        				$(".reservebaby").html('유아 : '+result.baby+'명');
        				
        				$("#roomchecking").modal("show");
    				}
    				
    				if(result.status == 4){
    					
    					$(".reserveroom").html(result.roomName);
    					$(".reserveroom").css('text-align', 'center');
    					$(".reserveroom").css('font-size', '20px');
    					$(".reservenum").html('예약 번호 : '+result.reservationNo);
        				$(".reservename").html('예약자 이름 : '+result.guestName);
        				$(".reservehp").html('예약자 번호 : '+result.hp);
        				$(".reservestatus").html('일반 취소');
        				$(".reservestatus").css('float', 'right');
        				$(".reservestatus").css('font-size', '20px');
        				$(".reservestatus").css('color', 'white');
        				$(".reservestatus").css('background-color', '#f2114c');
        				$(".reserveadult").html('성인 : '+result.adult+'명');
        				$(".reservekid").html('아동 : '+result.kid+'명');
        				$(".reservebaby").html('유아 : '+result.baby+'명');
        				
        				$("#roomchecking").modal("show");
    					
    				}
    				
    				if(result.status == 5){
    					
    					$(".reserveroom").html(result.roomName);
    					$(".reserveroom").css('text-align', 'center');
    					$(".reserveroom").css('font-size', '20px');
    					$(".reservenum").html('예약 번호 : '+result.reservationNo);
        				$(".reservename").html('예약자 이름 : '+result.guestName);
        				$(".reservehp").html('예약자 번호 : '+result.hp);
        				$(".reservestatus").html('예약자 변경');
        				$(".reservestatus").css('float', 'right');
        				$(".reservestatus").css('font-size', '20px');
        				$(".reservestatus").css('color', 'white');
        				$(".reservestatus").css('background-color', '#ed5f19');
        				$(".reserveadult").html('성인 : '+result.adult+'명');
        				$(".reservekid").html('아동 : '+result.kid+'명');
        				$(".reservebaby").html('유아 : '+result.baby+'명');
        				
        				$("#roomreserved").modal("show");
        				
        				$(".roomcheckin").off("click").on("click", function(){
        					var reserveNum = result.reservationNo;
       						$.ajax({
       							url : "${pageContext.request.contextPath}/host/api/changestatusRoomCheckin",
       							type : "post",
       							data : JSON.stringify(reserveNum),
       							contentType : 'application/json',
       							dataType : "json",
       							success : function(good){
       								console.log("change status");
       								window.location.href = "${pageContext.request.contextPath}/host/reservemanage";
       							},
       							error : function(XHR, status, error) {
       								console.log(status + ' : ' + error);
       							}
       						});
       						
       						$("#roomreserved").modal("hide");
    					});
        				
        				
        				$(".reservecancel").off("click").on("click", function(){
        					var reserveNum = result.reservationNo;
       						$.ajax({
       							url : "${pageContext.request.contextPath}/host/api/changestatusReserveCancel",
       							type : "post",
       							data : JSON.stringify(reserveNum),
       							contentType : 'application/json',
       							dataType : "json",
       							success : function(good){
       								console.log("change status");
       								window.location.href = "${pageContext.request.contextPath}/host/reservemanage";
       							},
       							error : function(XHR, status, error) {
       								console.log(status + ' : ' + error);
       							}
       						});
       						
       						$("#roomreserved").modal("hide");
    					});
        				
        				
        				
    				}
    				
    				if(result.status == 6){
    					console.log(result.status);
    					
    					$(".reserveroom").html(result.roomName);
    					$(".reserveroom").css('text-align', 'center');
    					$(".reserveroom").css('font-size', '20px');
    					$(".reservenum").html('예약 번호 : '+result.reservationNo);
        				$(".reservename").html('예약자 이름 : '+result.guestName);
        				$(".reservehp").html('예약자 번호 : '+result.hp);
        				$(".reservestatus").html('양도대기');
        				$(".reservestatus").css('float', 'right');
        				$(".reservestatus").css('font-size', '20px');
        				$(".reservestatus").css('color', 'white');
        				$(".reservestatus").css('background-color', '#ad01d2');
        				$(".reserveadult").html('성인 : '+result.adult+'명');
        				$(".reservekid").html('아동 : '+result.kid+'명');
        				$(".reservebaby").html('유아 : '+result.baby+'명');
        				
        				$("#roomstandby").modal("show");
        				
        				$(".reservecancel").off("click").on("click", function(){
        					var reserveNum = result.reservationNo;
       						$.ajax({
       							url : "${pageContext.request.contextPath}/host/api/changestatusReserveCancel",
       							type : "post",
       							data : JSON.stringify(reserveNum),
       							contentType : 'application/json',
       							dataType : "json",
       							success : function(good){
       								console.log("change status");
       								window.location.href = "${pageContext.request.contextPath}/host/reservemanage";
       							},
       							error : function(XHR, status, error) {
       								console.log(status + ' : ' + error);
       							}
       						});
       						
       						$("#roomstandby").modal("hide");
    					});
        				
        				
        				
    				}
    				
    			},
    			
    			error : function(XHR, status, error) {
    				console.log(status + ' : ' + error);
    			}
  			});
    	  
      },
      
      editable: false,
      dayMaxEvents: false, // allow "more" link when too many events
      events:function(info, successCallback, failureCallback){
    	  
    	  $.ajax({
    		  	url: "${pageContext.request.contextPath}/host/api/getReserveList",
    			dataType : "json",
    			success : function(result){
    				
    				var events = [];
    				console.log(events);
    				
    				if(result != null){
    					
    					$.each(result, function(index, source) {
    						var status = source.status;
    						var fullname = source.guestName + " " +  source.roomName;
    						
    						if(source.status == 1){
        						events.push({
        							id: source.reservationNo,
        							title: fullname,
        							start: source.checkin,
        							end: source.checkout,
        							color: '#5eb917',
        							textColor: 'white'
        						})
        					}else if(source.status == 2){
        						events.push({
        							id: source.reservationNo,
        							title: fullname,
        							start: source.checkin,
        							end: source.checkout,
        							color: '#337ab7',
        							textColor: 'white'
        						})
        					}else if(source.status == 3){
        						events.push({
        							id: source.reservationNo,
        							title: fullname,
        							start: source.checkin,
        							end: source.checkout,
        							color: '#2c3e50',
        							textColor: 'white'
        						})
        					}else if(source.status == 4){
        						events.push({
        							id: source.reservationNo,
        							title: fullname,
        							start: source.checkin,
        							end: source.checkout,
        							color: '#f2114c',
        							textColor: 'white'
        						})
        					}else if(source.status == 5){
        						events.push({
        							id: source.reservationNo,
        							title: fullname,
        							start: source.checkin,
        							end: source.checkout,
        							color: '#ed5f19',
        							textColor: 'white'
        						})
        					}else{
        						events.push({
        							id: source.reservationNo,
        							title: fullname,
        							start: source.checkin,
        							end: source.checkout,
        							color: '#ad01d2',
        							textColor: 'white'
       							})// event.push
        					}
    					}); // each
    				} //if result end 
    				successCallback(events);
    			}// success: function
    		}); // ajax end
    	  
      } // event:function
      
    });// fullcalendar end
    
    calendar.render();
});

</script>



</html>