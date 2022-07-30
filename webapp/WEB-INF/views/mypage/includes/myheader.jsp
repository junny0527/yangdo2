<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Header -->
<header>
	<section>
		<h1>
			<a href="" title="양도어때">양도어때</a>
		</h1>

		<ul class="gnb_pc clearfix">
			<li><a href="">검색</a></li>
			<li><a href="">내주변</a></li>
			<li><a href="">예약내역</a></li>
			<li>
				<button type="button">
					<span>더보기</span>
				</button> <!-- 
                        <ul class="list_03" style="display: block;">
                            <li><a href="">공지사항</a></li>
                            <li><a href="">자주 묻는 질문</a></li>
                            <li><a href="">1:1 문의</a></li>
                            <li><a href="">약관 및 정책</a></li>
                        </ul> -->
			</li>

			<li class="pic"><a href="${pageContext.request.contextPath}/my/info"><img
					src="${pageContext.request.contextPath}/assets/image/host/mypageIcon.png" alt="" /></a> <%-- <ul class="list_04" style="display: none">
                            <li><b>마흔두살해커</b></li>
                            <li><a href="${pageContext.request.contextPath}/my/info">내정보</a></li>
                            <li><a href="${pageContext.request.contextPath}/my/reservation">예약내역<!-- span>0건</span --></a></li>
                            <li><a href="${pageContext.request.contextPath}/my/point" data-point="100">포인트<!-- span>100P</span --></a></li>
                            <li><button type="button" class="pop_logout_open">로그아웃</button></li>
                        </ul> --%></li>
		</ul>
	</section>
</header>
<!-- //Header -->

<!-- Sub Top -->
<div class="sub_top_wrap">
	<div class="sub_top bg_kong_2">
		<h2>내정보</h2>
	</div>
</div>
<!-- //Sub Top -->
