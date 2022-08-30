<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 펜션어때 헤더 -->

<div id="wrap">
	<div id="header" class="clearfix">
		<div id="section">
			<h1>
				<a href="${pageContext.request.contextPath}/host/mainchoice">양도어때HOST</a>
			</h1>
			<ul class="clearfix">
				<li><a href="${pageContext.request.contextPath}/host/customerservice"><img src="${pageContext.request.contextPath}/assets/image/host/customercenter.png"> 고객센터</a></li>
				<li><a href="${pageContext.request.contextPath}/host/logout"><img src="${pageContext.request.contextPath}/assets/image/host/logout.png"> 로그아웃</a></li>
			</ul>
		</div>
	</div>
</div>
<!-- 펜션어때 헤더 -->

<!-- nav -->
<div id = "nav" class = "center-block">
	<ul>
		<li class = "center-block over">
			<a id = "showReserve" href="${pageContext.request.contextPath}/host/reservemanage">예약관리</a>
			<ul class = "sub">
				<li><a href="${pageContext.request.contextPath}/host/reservemanage">예약관리</a></li>
				<li><a href="${pageContext.request.contextPath}/host/hostsales">매출내역</a></li>
				<li><a href="${pageContext.request.contextPath}/host/reviews">리뷰관리</a></li>
			</ul>
		</li>
		<li class = "center-block over">
			<a id = "showIntroduce" href="${pageContext.request.contextPath}/host/introreg">숙소관리</a>
			<ul class = "sub">
				<li><a href="${pageContext.request.contextPath}/host/introreg">소개작성(필수)</a></li>
				<li><a href="${pageContext.request.contextPath}/host/introregopt">소개작성(선택)</a></li>
				<li><a href="${pageContext.request.contextPath}/host/companyreg">업체관리</a></li>
			</ul>
		</li>
		<li><a href="${pageContext.request.contextPath}/host/rules">이용규칙 관리</a></li>
		<li><a href="${pageContext.request.contextPath}/host/roomreg">객실관리</a></li>
	</ul>
</div>


<!-- nav -->

<script type = "text/javascript">

$(document).ready(function(){
	$('.sub').css('display', 'none');
	
	$('#nav ul li').on("mouseover", function () {
	    var sub = $(this).find('.sub');
	    var sub_li = $(this).find('.sub li a');
	
	    sub.css('display', 'block');
	    sub_li.css('display', 'block');
	    sub.addClass('open');
	});
	
	$('#nav ul li').on("mouseleave", function () {
	    $('.sub').css('display', 'none');
	    $('.sub li a').css('display', 'none');
	    $('.sub').removeClass('open');
	});
	
	$('#nav ul li ul.sub li').on("mouseover", function(){
	   $(this).find('a').css('color', '#00bfa5');
	   $(this).find('a').css('font-weight', '600');
	});
	
	$('#nav ul li ul.sub li').on("mouseleave", function(){
	   $(this).find('a').css('color', 'black');
	   $(this).find('a').css('font-weight', 'normal');
	});
});
</script>