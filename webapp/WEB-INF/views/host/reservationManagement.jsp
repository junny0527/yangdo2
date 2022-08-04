<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약관리</title>
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/css/host/fullcalendar-5.11.2/lib/main.js"></script>

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
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectMirror: true,
      select: function(arg) {
        var title = prompt('예약일정');
        if (title) {
          calendar.addEvent({
            title: title,
            start: arg.start,
            end: arg.end,
            allDay: arg.allDay
          })
        }
        calendar.unselect()
      },
      eventClick: function(arg) {
        if (confirm('예약내용을 삭제하시겠습니까?')) {
          arg.event.remove()
        }
      },
      editable: true,
      dayMaxEvents: true, // allow "more" link when too many events
      events: []
    });

    calendar.render();
  });
</script>




</html>