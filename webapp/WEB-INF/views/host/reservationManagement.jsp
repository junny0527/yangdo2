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
	<br><br>
	
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
					<h5>풍뎅이 방</h5>
					<br>
					<p id = "reservestatus"> 예약 완료</p>
					<p>예약 번호 : A39991273</p>
					<p>예약자 이름 : 제목없음</p>
					<p>예약자 번호 : 010-3382-9945</p>
					<br><br>
					<p>예약 인원 </p>
					<p>성인 : 2명 </p>
					<p>아동 : 1명 </p>
					<p>유아 : 0명 </p>
				</div>
				<br>
				<div>
					<button class = "btn btn-close">닫기</button>
					<button class = "btn btn-danger">예약 취소</button>
					<button class = "btn btn-primary">체크인</button>
				</div>
			</div>
			
		</div>
	</div>
</div>
<div class="modal-backdrop fade in"></div>
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
      eventClick: function() {
    	  $("#roomcontrol").modal("show");
      },
      editable: true,
      dayMaxEvents: false, // allow "more" link when too many events
      events: [
    	  {
    		  title: '예약자 이름',
    		  start: '2022-08-01',
    		  end: '2022-08-04'
    	  }
    	  ,
    	  {
    		  title: '또 다른 예약자',
    		  start: '2022-08-16',
    		  end: '2022-08-20',
    	  }
      ]
    });
    
    calendar.render();
  });
  
  
</script>

<script type="text/javascript">

$(".btn-close").on("click", function(){
	$("#roomcontrol").modal("hide");
})

</script>


</html>