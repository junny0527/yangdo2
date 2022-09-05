<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="header" class="clearfix recommend_header">
	<div id="section" class="clearfix">
		<h1>
			<a href="${pageContext.request.contextPath}/main">양도어때</a>
		</h1>
		<ul class="clearfix gnb_pc">
			<li><a href="" class="color-sub">내주변</a></li>
			<li><a href="${pageContext.request.contextPath}/my/reservation" class="color-sub">예약내역</a></li>
			<li class="over">
				<button type="button">
					<span>더보기</span>
				</button>
				<ul class="list_03" style="display: none; opacity: 1;">
					<li class="list_03_1"><a href="">공지사항</a></li>
					<li class="list_03_1"><a href="">자주 묻는 질문</a></li>
					<li class="list_03_1"><a href="">1:1 문의</a></li>
					<li class="list_03_1"><a href="">약관 및 정책</a></li>
				</ul>
			</li>
			<c:choose>
				<c:when test="${authUser == null}">
					<li><a href="${pageContext.request.contextPath}/loginForm">로그인</a></li>
				</c:when>
				<c:otherwise>
					<li class="over pic clearfix">
						<a href="${pageContext.request.contextPath}/my/info?no=${authUser.no}"><img id="user-icon" src="https://image.goodchoice.kr/profile/ico/ico_21.png" alt=""></a>
						<ul class="list_04 clearfix" style="display: none;">
							<li class="list_04_1"><b>${authUser.nickName}</b></li>
							<li class="list_04_1"><a href="${pageContext.request.contextPath}/my/info">내정보관리</a></li>
							<li class="list_04_1"><a href="${pageContext.request.contextPath}/my/reservation">예약내역<!-- span>0건</span --></a></li>
							<li class="list_04_1"><a href="${pageContext.request.contextPath}/my/yangdo">양도내역<!-- span>0건</span --></a></li>
							<li class="list_04_1"><a href="${pageContext.request.contextPath}/my/point" data-point="0">포인트<!-- span>0P</span --></a></li>
							<li class="list_04_1"><a href="${pageContext.request.contextPath}/logout"><button type="button" class="pop_logout_open">로그아웃</button></a></li>
						</ul>
					</li>
				</c:otherwise>
			</c:choose>
		</ul>
		<button id="btn_search" type="button" class="btn btn_srch srch_open" style="right: 396px;">
			<img id="search-icon" src="${pageContext.request.contextPath}/assets/image/includes/ico_srch_2.png">
		</button>
	</div>
</div>

<script>

	$(".over").on("mouseenter",function(){
		$('ul',this).stop().fadeIn(150);
	});
	$(".over").on("mouseleave",function(){
		$('ul',this).stop().fadeOut(150);
	});
	
</script>
