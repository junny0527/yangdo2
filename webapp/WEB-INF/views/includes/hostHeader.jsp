<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 펜션어때 헤더 -->

<div id="wrap">
	<div id="header" class="clearfix">
		<div id="section">
			<h1>
				<a href="${pageContext.request.contextPath}/host/newhost">양도어때HOST</a>
			</h1>
			<ul class="clearfix">
				<li>
					<a href="${pageContext.request.contextPath}/host/customerservice"><img src="${pageContext.request.contextPath}/assets/image/host/customercenter.png"> 고객센터</a>
					<!-- 
					<ul>
						<li><a href = "">공지사항</a></li>
						<li><a href = "">자주묻는질문</a></li>
						<li><a href = "">서비스 약관</a></li>
					</ul>
					 -->
				</li>
				<li><a href=""><img src="${pageContext.request.contextPath}/assets/image/host/logout.png"> 로그아웃</a></li>
			</ul>
		</div>
	</div>
</div>
<!-- 펜션어때 헤더 -->

<!-- nav -->
<div id = "nav" class = "center-block">
	<ul>
		<li><a id = "showReserve" href="${pageContext.request.contextPath}/host/reservemanage">예약관리</a>
			<div id = "reserve">
				<ul>
					<li><a href="${pageContext.request.contextPath}/host/reservemanage">예약관리</a></li>
					<li><a href="">정산 및 매출내역</a></li>
					<li><a href="">리뷰관리</a></li>
				</ul>
			</div>
		</li>
		<li><a id = "showIntroduce" href="${pageContext.request.contextPath}/host/introreg">숙소관리</a>
			<div id = "introduce">
				<ul>
					<li><a href="${pageContext.request.contextPath}/host/introreg">소개작성(필수)</a></li>
					<li><a href="${pageContext.request.contextPath}/host/introregopt">소개작성(선택)</a></li>
				</ul>
			</div>
		</li>
		<li><a href="${pageContext.request.contextPath}/host/rules">이용규칙 관리</a></li>
		<li><a href="${pageContext.request.contextPath}/host/roomreg">객실관리</a></li>
	</ul>
</div>
<!-- nav -->


<script type = "text/javascript">

$("#showReserve").on("mouseover",function(){
	$("#reserve").css("display","block");
})

$("#showReserve").on("mouseout",function(){
	$("#reserve").css("display","none");
})

$("#showIntroduce").on("mouseover",function(){
	$("#introduce").css("display","block");
})

$("#showIntroduce").on("mouseout",function(){
	$("#introduce").css("display","none");
})


</script>


<!--  
$('.header nav ul li').bind("mouseover", function () {
        var sub = $(this).find('.sub');
        var sub_li = $(this).find('.sub li a');

        sub.css('display', 'block');
        sub_li.css('display', 'block');
        sub.addClass('open');
    });

    $('.header nav ul li').bind("mouseleave", function () {
        $('.sub').css('display', 'none');
        $('.sub li a').css('display', 'none');
        $('.sub').removeClass('open');
    });

    $('.header nav ul li ul.sub li').bind("mouseover", function(){
       $(this).find('a').css('color', '#00bfa5');
       $(this).find('a').css('font-weight', '600');
    });

    $('.header nav ul li ul.sub li').bind("mouseleave", function(){
       $(this).find('a').css('color', '#777');
       $(this).find('a').css('font-weight', 'normal');
    });
-->