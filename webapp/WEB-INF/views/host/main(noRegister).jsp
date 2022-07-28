<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업주 미등록 메인</title>
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/assets/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/hostHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/main.css">


<body>
<!-- 펜션어때 헤더 -->

<div id="wrap">
	<div id="header" class="clearfix">
		<div id="section">
			<h1><a href="">양도어때HOST</a></h1>
			<ul class="clearfix">
				<li><a href=""><img src="${pageContext.request.contextPath}/assets/img/mypageIcon.png"> 마이페이지</a></li>
				<li><a href=""><img src="${pageContext.request.contextPath}/assets/img/logout.png"> 로그아웃</a></li>
			</ul>
		</div>
	</div>
</div>
<!-- 펜션어때 헤더 -->

<!-- nav -->
<div id = "nav">
	<ul>
		<li><a href="">예약관리</a>
			<!-- 
			<ul id = "onHover">
				<li><a href="">예약내역</a></li>
				<li><a href="">정산 및 매출내역</a></li>
				<li><a href="">리뷰관리</a></li>
			</ul>
			 -->
		</li>
		<li><a href="">객실관리</a></li>
		<li><a href="">숙소관리</a>
			<!--  
			<ul id = "onHover">
				<li><a href="">소개작성</a></li>
				<li><a href="">이용규칙관리</a></li>
			</ul>
			-->
		</li>
		<li><a href="">고객센터</a>
			<!-- 
			<ul id = "onHover">
				<li><a href = "">공지사항</a></li>
				<li><a href = "">자주묻는질문</a></li>
				<li><a href = "">서비스 약관</a></li>
			</ul>
			 -->
		</li>
	</ul>
</div>
<!-- nav -->


<div id = "container">
	
	<div id = "register">
		<p>아래의 정보를 모두 입력하고 숙소 등록을 완료하세요.</p>
		<br>
		<a href=""><span>업체 정보 등록 ></span></a>
	</div>
	
	<div id = "process">
		<ul>
			<li class = "imgs">
				<a href="">
					<span><img src="${pageContext.request.contextPath}/assets/img/mypage.png" class = "active"></span>
					<span>마이페이지 입력</span>
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
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
			</li>
			<li class = "imgs">
				<a href="">
					<span><img src="${pageContext.request.contextPath}/assets/img/introduce.png"></span>
					<span>소개작성</span>
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
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
			</li>
			<li class = "imgs">
				<a href="">
					<span><img src="${pageContext.request.contextPath}/assets/img/rules.png"></span>
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
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
			</li>
			<li class = "imgs">
				<a href="">
					<span><img src="${pageContext.request.contextPath}/assets/img/room.png"></span>
					<span>객실 관리</span>
				</a>
			</li>
		</ul>
	</div>
	
	<div id = "salary">
		<div id = "roomsalary">
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
		
		<div id = "reviews">
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

<!-- //footer -->
<footer>
	<div class="align">
		<ul class="link">
			<li><a href="">회사소개</a> <span>|</span></li>
			<li><a href="">이용약관</a> <span>|</span></li>
			<li><a href="">개인정보처리방침</a> <span>|</span></li>
			<li><a href="">소비자 분쟁해결 기준</a> <span>|</span></li>
			<li><a href="">사업자 정보확인</a> <span>|</span></li>
			<li><a href="">양도어때 마케팅센터</a> <span>|</span></li>
			<li><a href="">액티비티 호스트센터</a> <span>|</span></li>
			<li><a href="">펜션 양도어때</a> <span>|</span></li>
			<li><a href="">콘텐츠산업진흥법에의한 표시</a></li>
		</ul>

		<p>
			<b>양도어때 고객센터 1670-4215</b> <span>오전 9시 - 새벽 3시</span>
		</p>

		<address>
			<span>(주) 양도어때컴퍼니</span> 주소 : 서울특별시 봉천동 봉천사로 611, 648타워 14층 | 대표이사 : 최종빈 | 사업자등록번호: 741-64-88541 <br> 통신판매번호 : 2011-서울봉천-75441 | 관광사업자 등록번호: 제2011-74호 | 전화번호 : 1670-4215 |
			전자우편주소 : yangdo@goodchoice.kr <br> Copyright GC COMPANY Corp. All rights reserved.
		</address>

	</div>
</footer>

</body>
</html>