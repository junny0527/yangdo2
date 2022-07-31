<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 펜션어때 헤더 -->

	<div id="wrap">
		<div id="header" class="clearfix">
			<div id="section">
				<h1>
					<a href="">양도어때HOST</a>
				</h1>
				<ul class="clearfix">
					<li><a href="${pageContext.request.contextPath}/host/mypagereg"><img src="${pageContext.request.contextPath}/assets/img/mypageIcon.png"> 마이페이지</a></li>
					<li><a href=""><img src="${pageContext.request.contextPath}/assets/img/logout.png"> 로그아웃</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 펜션어때 헤더 -->

	<!-- nav -->
	<div id = "nav" class = "center-block">
	<ul>
		<li><a href="">예약관리</a>
			<!-- 
			<ul class = "onHover">
				<li><a href="">예약내역</a></li>
				<li><a href="">정산 및 매출내역</a></li>
				<li><a href="">리뷰관리</a></li>
			</ul>
			 -->
		</li>
		<li><a href="">객실관리</a></li>
		<li><a href="${pageContext.request.contextPath}/host/introreg">숙소관리</a>
			<!--  
			<ul class = "onHover">
				<li><a href="">소개작성</a></li>
				<li><a href="">이용규칙관리</a></li>
			</ul>
			-->
		</li>
		<li><a href="">고객센터</a>
			<!-- 
			<ul class = "onHover">
				<li><a href = "">공지사항</a></li>
				<li><a href = "">자주묻는질문</a></li>
				<li><a href = "">서비스 약관</a></li>
			</ul>
			 -->
		</li>
	</ul>
</div>
<!-- nav -->