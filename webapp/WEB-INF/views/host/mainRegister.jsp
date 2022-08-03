<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업주 등록 메인</title>
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/hostHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/statusTable.css">



<body>
<!-- header -->
<c:import url="/WEB-INF/views/includes/hostHeader.jsp"></c:import>
<!-- header -->


<div id = "container">
	
	<div id = "status">
		<p>현재 예약 현황</p>
		<br>
		
		<table id = "statustable">
			<thead>
				<tr>
					<th>호실</th>
					<th>예약자명</th>
					<th>체크인 예정일자</th>
					<th>연락처</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td>1번방</td>
					<td>민조장</td>
					<td>2022.07.31. 18:00</td>
					<td>010-3333-2222</td>
				</tr>
				<tr>
					<td>2번방</td>
					<td>포톤캐논</td>
					<td>2022.08.02. 19:00</td>
					<td>010-2222-9999</td>
				</tr>
				<tr>
					<td>3번방</td>
					<td>배틀크루저</td>
					<td>2022.08.14. 17:00</td>
					<td>016-111-2222</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	
	<div id = "salary" class = "center-block clearfix">
		<div id = "roomsalary" class = "pull-left">
			<a href = ""><span>예약 객실 판매></span></a>
			<span>
				<ul>
					<li>0</li>
					<li>0</li>
					<li>0</li>
				</ul>
				<ul>
					<li>오늘</li>
					<li>이번주</li>
					<li>이번달</li>
				</ul>
			</span>
		</div>
		
		<div id = "reviews" class = "pull-right">
			<a href = ""><span>등록된 리뷰 수(총 N개)</span></a>
			<span>
				<ul>
					<li>0</li>
					<li>0</li>
					<li>0</li>
				</ul>
				<ul>
					<li>오늘</li>
					<li>이번주</li>
					<li>이번달</li>
				</ul>
			</span>
		</div>
	</div>
	
	<div id = "notice">
		<div id = "notice-header" class = "clearfix">
			<a href="">
				<span>공지사항</span>
				<span>더보기 ></span>
			</a>
		</div>
		
		<hr>
		
		<div id = "notice-body">
			<a href="" class = "clearfix">
				<span>[공지] 2022년 대한민국 숙박대전(지역편) 진행 안내</span>
				<span>2022.06.03.</span>
			</a>
			<a href="" class = "clearfix">
				<span>[공지] 서비스 점검 안내(5/24 03:00 ~ 05:30)</span>
				<span>2022.05.25.</span>
			</a>
		</div>
	</div>
	
<!-- container -->
</div>

<!-- footer -->
<c:import url="/WEB-INF/views/includes/hostFooter.jsp"></c:import>
<!-- footer -->

</body>
</html>