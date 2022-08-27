<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매출 내역</title>
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/hostHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/hostsales.css">


<body>

<!-- header -->
<c:import url="/WEB-INF/views/includes/hostHeader.jsp"></c:import>
<!-- header -->


<div id = "container">
	<div id="saleshistorytitle" class= "center-block">
		<p class = "subject">매출 내역</p>
	</div>
	
	<div id="saleshistory" class= "center-block">
		<table class = "table">
			<thead>
				<tr>
					<th>객실이름</th>
					<th>체크인</th>
					<th>체크아웃</th>
					<th>예약자 이름</th>
					<th>예약자 번호</th>
					<th>이용 인원</th>
					<th>입금액</th>
					<th>입금 일자</th>
					<th>결제 수단</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items = "${sList}" var = "sList">
					<tr>
						<td>${sList.roomName}</td>
						<td>${sList.checkin}</td>
						<td>${sList.checkout}</td>
						<td>${sList.guestName}</td>
						<td>${sList.hp}</td>
						<td>${sList.people}</td>
						<td>${sList.totalPrice}</td>
						<td>${sList.paidDay}</td>
						<td>${sList.payWay}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<nav aria-label="Page navigation" class = "justify-content-center">
	  <ul class="pagination pagination-lg">
	    <li class="page-item"><a class="page-link" href="#">◀</a></li>
	    <li class="page-item active"><a class="page-link" href="#">1</a></li>
	    <li class="page-item"><a class="page-link" href="#">2</a></li>
	    <li class="page-item"><a class="page-link" href="#">3</a></li>
	    <li class="page-item"><a class="page-link" href="#">4</a></li>
	    <li class="page-item"><a class="page-link" href="#">5</a></li>
	    <li class="page-item"><a class="page-link" href="#">▶</a></li>
	  </ul>
	</nav>
	
</div>
	
<!-- container -->
<!-- footer -->
<c:import url="/WEB-INF/views/includes/hostFooter.jsp"></c:import>
<!-- footer -->


</body>
</html>