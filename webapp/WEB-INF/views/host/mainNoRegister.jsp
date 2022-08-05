<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업주 미등록 메인</title>
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/hostHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/main.css">


<body>
<!-- header -->
<c:import url="/WEB-INF/views/includes/hostHeader.jsp"></c:import>
<!-- header -->

<div id = "container">
	
	<div id = "register">
		<p>아래의 정보를 모두 입력하고 숙소 등록을 완료하세요.</p>
		<br>
		<a href="${pageContext.request.contextPath}/host/companyreg"><span>업체 정보 등록 ></span></a>
	</div>
	
	<div id = "process" class = "center-block">
		<ul>
			<li class = "imgs">
				<a href="${pageContext.request.contextPath}/host/companyreg">
					<span><img src="${pageContext.request.contextPath}/assets/image/host/mypage.png" class = "active"></span>
					<span>업체 등록</span>
				</a>
			</li>
			<li class = "prog">
				<br>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
			</li>
			<li class = "imgs">
				<a href="${pageContext.request.contextPath}/host/introreg">
					<span><img src="${pageContext.request.contextPath}/assets/image/host/introduce.png"></span>
					<span>소개작성(필수)</span>
				</a>
			</li>
			<li class = "prog">
				<br>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
			</li>
			<li class = "imgs">
				<a href="${pageContext.request.contextPath}/host/introregopt">
					<span><img src="${pageContext.request.contextPath}/assets/image/host/introduce.png"></span>
					<span>소개작성(선택)</span>
				</a>
			</li>
			<li class = "prog">
				<br>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
			</li>
			<li class = "imgs">
				<a href="${pageContext.request.contextPath}/host/rules">
					<span><img src="${pageContext.request.contextPath}/assets/image/host/rules.png"></span>
					<span>이용규칙 관리</span>
				</a>
			</li>
			<li class = "prog">
				<br>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
			</li>
			<li class = "imgs">
				<a href="${pageContext.request.contextPath}/host/roomreg">
					<span><img src="${pageContext.request.contextPath}/assets/image/host/room.png"></span>
					<span>객실 관리</span>
				</a>
			</li>
		</ul>
	</div>
	
	<div id = "salary" class = "center-block clearfix">
		<div id = "roomsalary" class = "pull-left">
			<a href = "${pageContext.request.contextPath}/host/hostsales"><span>예약 객실 판매</span></a>
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
			<a href = "${pageContext.request.contextPath}/host/reviews"><span>등록된 리뷰 수(총 N개)</span></a>
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