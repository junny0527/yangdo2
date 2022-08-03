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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/reservationManagement.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/fullcalendar-5.11.2/lib/main.css">

<body>

<!-- header -->
<c:import url="/WEB-INF/views/includes/hostHeader.jsp"></c:import>
<!-- header -->

<!-- table -->
<div id="content">	
	<div id="month" class="center-block">
	    <table>
	    	<thead></thead>
			<tbody>
				<tr>
					<td>
						<img src="img/t_rev_a.gif" align="absmiddle"> 예약가능 &nbsp; 
						<img src="img/t_rev_c.gif" align="absmiddle"> 예약완료 &nbsp; 
						<img src="img/t_rev_c.gif" align="absmiddle"> 이용중 &nbsp; 
						<img src="img/t_rev_b.gif" align="absmiddle"> 양도완료  &nbsp; 
						<img src="img/t_rev_b.gif" align="absmiddle"> 양도대기  &nbsp; 
					</td>
					<td class="center">
				
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	
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