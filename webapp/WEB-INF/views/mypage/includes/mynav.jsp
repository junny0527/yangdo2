<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="sidenav">
	<div class="sidenav-top clearfix">
		<ul>
			<li><a class="sidenav-top-info" href="">마흔두살해커 님</a></li>
			<li><a class="sidenav-top-point" href="">포인트 : 0 P</a></li>
			<li><a class="sidenav-top-ing" href="">진행중 : 1 건</a></li>
		</ul>
	</div>
	<div class="sidenav-bot">
		<ul>
			<li><a class="sidenav-bot-menu" href="${pageContext.request.contextPath}/my/myinfo">내
					정보 관리</a></li>
			<li class="dropdown-btn"><a class="sidenav-bot-menu"
				href="${pageContext.request.contextPath}/my/reservation"> 예약내역 <i
					class="fa fa-caret-down"></i>
			</a> <!-- sub navigation -->
				<div class="sidenav-bot-submenu">
					<ul>
						<li><a class="" href="">└ 예약확정 내역</a></li>
						<li><a class="" href="">└ 양도대기 내역</a></li>
						<li><a class="" href="">└ 양도완료 내역</a></li>
						<li><a class="" href="">└ 이용완료 내역</a></li>
						<li><a class="" href="">└ 예약취소 내역</a></li>
					</ul>
				</div> <!-- sub navigation --></li>

			<li><a class="" href="${pageContext.request.contextPath}/my/point">포인트</a>
			</li>
		</ul>
	</div>
</nav>
<!-- //Nav -->