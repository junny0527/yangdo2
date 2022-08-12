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
					<th>은행명</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>풍뎅이</td>
					<td>20220801</td>
					<td>20220803</td>
					<td>민조장님</td>
					<td>010-2298-3391</td>
					<td>4</td>
					<td>150,000</td>
					<td>20220731</td>
					<td>카드</td>
					<td>국민</td>
				</tr>
				
				<tr>
					<td>곱등이</td>
					<td>20220724</td>
					<td>20220725</td>
					<td>바퀴벌레님</td>
					<td>010-5564-1143</td>
					<td>2</td>
					<td>100,000</td>
					<td>20220710</td>
					<td>계좌이체</td>
					<td>신한</td>
				</tr>
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
	    <li class="page-item"><a class="page-link" href="#">6</a></li>
	    <li class="page-item"><a class="page-link" href="#">7</a></li>
	    <li class="page-item"><a class="page-link" href="#">8</a></li>
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