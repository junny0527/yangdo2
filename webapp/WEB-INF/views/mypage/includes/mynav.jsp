<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav>
	<!-- aside top -->
	<div class="menu_top">
		<ul>
			<li class="item" style="padding: 10px 0px;"><a href="${pageContext.request.contextPath}/my/info">${authUser.nickName} 님</a></li>
			<%-- <li class="item_sub"><a
				href="${pageContext.request.contextPath}/my/point">포인트 : 0 P</a></li>
			<li class="item_sub"><a
				href="${pageContext.request.contextPath}/my/reservation">진행중 : 1
					건</a></li> --%>
		</ul>
	</div>
	<!-- aside top -->

	<!-- aside bottom -->
	<div class="menu_bottom">
		<ul>
			<li class="item"><a href="${pageContext.request.contextPath}/my/info">내정보관리</a></li>
			<!-- drop down menu -->
			<li class="item over"><a class="sub-btn" href="${pageContext.request.contextPath}/my/reservation"> 예약내역 </a>
				<ul class="sub-menu">
					<li><a class="sub-item" href="${pageContext.request.contextPath}/my/list/reserve">└ 예약완료 내역</a></li>
					<li><a class="sub-item" href="${pageContext.request.contextPath}/my/list/used">└ 이용완료 내역</a></li>
					<li><a class="sub-item" href="${pageContext.request.contextPath}/my/list/cancel">└ 예약취소 내역</a></li>
				</ul></li>
			<li class="item over"><a class="sub-btn" href="${pageContext.request.contextPath}/my/yangdo"> 양도내역 </a>
				<ul class="sub-menu">
					<li><a class="sub-item" href="${pageContext.request.contextPath}/my/list/relist">└ 양도대기 내역</a></li>
					<li><a class="sub-item" href="${pageContext.request.contextPath}/my/list/transfer">└ 양도완료 내역</a></li>
				</ul></li>
			<!-- drop down -->
			<li class="item"><a href="${pageContext.request.contextPath}/my/point">포인트</a></li>
		</ul>
	</div>
	<!-- aside bottom -->
</nav>
<!-- //Nav -->

<script>
	$(document).ready(function() {
		$(".over").on("mouseenter", function() {
			$('ul', this).stop().fadeIn(150);
		});
		$(".over").on("mouseleave", function() {
			$('ul', this).stop().fadeOut(150);
		});
	});
</script>