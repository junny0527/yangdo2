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
<!-- modal -->

<div id = "roomcontrol" class = "modal fade in" aria-hidden="false" >
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">객실 현황</h4>
			</div>
			
			<div class="modal-body">
				<div>
					<h5 id = "reserveroom"></h5>
					<br>
					<p id = "reservestatus"></p>
					<p id = "reservenum">예약 번호 : </p>
					<p id = "reservename">예약자 이름 : </p>
					<p id = "reservehp">예약자 번호 : </p>
					<br><br>
					<p>예약 인원 </p>
					<p id = "reserveadult">성인 : 명 </p>
					<p id = "reservekid">아동 : 명 </p>
					<p id = "reservebaby">유아 : 명 </p>
				</div>
				<br>
				<div>
					<button class = "btn btn-close" data-dismiss="modal" aria-label="Close">닫기</button>
					<button id = "reservecancel"></button>
					<button id = "checkingIn"></button>
					<button id = "checkingOut"></button>
				</div>
			</div>
			
		</div>
	</div>
</div>

<div class="modal-backdrop fade in"></div>
<!-- event modal -->	

<script type = "text/javascript">

$("#reservecancel").on("click",function(){
	console.log("예약취소")
})

$("#checkingIn").on("click",function(){
	console.log("체크인")
})

$("#checkingOut").on("click",function(){
	console.log("이용완료")
})



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
    			url : "${pageContext.request.contextPath }/api/getReserve",
    			type : "post",
    			contentType : "application/json",
    			data : JSON.stringify(reserveid),	// js객체를 문자열로 변경
    			dataType : "json",
    			success : function(result){
    				console.log('성공');
    				$("#reserveroom").html(result.roomName);
    				
    				if(result.status == 1){
    					console.log(result.status)
    					$("#reservecancel").removeAttr('class', 'hide');
    					$("#checkingIn").removeAttr('class', 'hide');
    					
    					$("#reservestatus").html('예약완료');
    					$("#reservecancel").html('예약취소');
    					$("#reservecancel").attr('class' , 'btn btn-danger');
    					$("#reservecancel").css("border", "0px");
    					$("#checkingIn").html('체크인')
    					$("#checkingIn").attr('class', 'btn btn-primary');
    					$("#checkingIn").css("border", "0px");
    				}
    				
    				if(result.status == 2){
    					console.log(result.status);
    					$("#reservecancel").attr('class', 'hide');
    					$("#checkingIn").attr('class', 'hide');
    					
    					$("#reservestatus").html('이용중');
    					$("#reservestatus").css("background-color", "#337ab7");
    					$("#reservecancel").removeAttr('class', 'btn btn-danger');
    					
    					$("#checkingOut").html('이용완료');
    					$("#checkingOut").attr('class', 'btn');
    					$("#checkingOut").css("background-color", "#2c3e50");
    					$("#checkingOut").css("color", "white");
    					$("#checkingOut").css("border", "none");
    					
    				}
    				
    				if(result.status == 3){
    					console.log(result.status);
    					$("#reservecancel").attr('class', 'hide');
    					$("#checkingIn").attr('class', 'hide');
    					
    					$("#reservestatus").html('이용완료');
    					$("#reservestatus").css("background-color", "#2c3e50");
    					
    				}
    				
    				if(result.status == 4){
    					console.log(result.status);
    					$("#reservecancel").attr('class', 'hide');
    					$("#checkingIn").attr('class', 'hide');
    					
    					$("#reservestatus").html('일반취소');
    					$("#reservestatus").css("background-color", "#f2114c");
    				}
    				
    				if(result.status == 5){
    					console.log(result.status);
    					$("#reservecancel").removeAttr('class', 'hide');
    					$("#checkingIn").removeAttr('class', 'hide');
    					
    					$("#reservestatus").html('이용자 변경(양도완료)');
    					$("#reservestatus").css("background-color", "#ed5f19");
    					
    					$("#reservecancel").html('예약 취소');
    					$("#reservecancel").attr('class', 'btn btn-danger');
    					$("#reservecancel").css("border", "0px");
    					$("#checkingIn").html('체크인');
    					$("#checkingIn").attr('class', 'btn btn-primary');
    					$("#checkingIn").css("border", "0px");
    					
    				}if(result.status == 6){
    					console.log(result.status);
    					$("#checkingIn").attr('class', 'hide');
    					
    					$("#reservestatus").html('양도대기');
    					$("#reservestatus").css("background-color", "#ad01d2");
    					$("#reservecancel").html('예약 취소');
    					$("#reservecancel").attr('class', 'btn btn-danger');
    					$("#reservecancel").css("border", "0px");
    				}
    				
    				$("#reservenum").html('예약 번호 : '+result.reservationNo);
    				$("#reservename").html('예약자 이름 : '+result.guestName);
    				$("#reservehp").html('예약자 번호 : '+result.hp);
    				$("#reserveadult").html('성인 : '+result.adult+'명');
    				$("#reservekid").html('아동 : '+result.kid+'명');
    				$("#reservebaby").html('유아 : '+result.baby+'명');
    				
    				$("#roomcontrol").modal("show");
    			},
    			error : function(XHR, status, error) {
    				console.log(status + ' : ' + error);
    			} });
    	  
      },
      editable: false,
      dayMaxEvents: false, // allow "more" link when too many events
      events:function(info, successCallback, failureCallback){
    	  
    	  $.ajax({
    		  	url: "${pageContext.request.contextPath}/api/getReserveList",
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