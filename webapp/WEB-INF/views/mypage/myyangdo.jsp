<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>여행할때 양도어때</title>

<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/includes/userHeaderFooter.css"
>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/mypage/mycommon.css"
>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/mypage/my.css"
>

<!-- //css -->
</head>

<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"
></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"
></script>
<!-- //js -->
<body class="pc and">
	<!-- Wrap -->
	<div id="wrap" class="wrap show">

		<!-- Header// -->
		<c:import url="/WEB-INF/views/includes/userHeader.jsp"></c:import>
		<!-- //Header// -->

		<!-- Subtop -->
		<c:import url="/WEB-INF/views/mypage/includes/mysubtop.jsp"></c:import>
		<!-- //Subtop -->

		<!-- Content  -->
		<div id="content" class="sub_wrap my_wrap">

			<!-- Nav -->
			<c:import url="/WEB-INF/views/mypage/includes/mynav.jsp"></c:import>
			<!-- Nav -->

			<div class="align_rt">
				<div class="reserve_list">
					<section class="list_wrap">
						<h3>
							양도대기 내역 <a class="more_info" style="display: none" href="${pageContext.request.contextPath}/my/list/relisted">더보기>></a>
						</h3>
						<ul class="list_wrap">
							<li class="reservation-detail"><div>
									<p class="pic">
										<img
											src="https://image.goodchoice.kr/resize_354x184/adimg_new/5942/36281/5907d34b8ddb9ce6ecac4edf865b6528.jpg"
											alt="삼산 도브" class="align"
										>
									</p>
									<a href="${pageContext.request.contextPath}/my/list/relisted" class="product-title"><i class="">양도대기</i> <strong>삼산 도브</strong> <span>
											07.30 토 - 07.31 일 • 1박 </span> <b>예약 상세 &gt;</b></a>
								</div></li>
						</ul>
						<!---->
					</section>
					<section class="list_cancel">
						<h3>
							양도완료 내역<a class="more_info" href="${pageContext.request.contextPath}/my/list/transferred">더보기>></a>
						</h3>
						<ul class="list_wrap">
							<li class="reservation-detail"><div>
									<button type="button" class="btn_del">삭제</button>
									<p class="pic">
										<img
											src="https://image.goodchoice.kr/resize_354x184/adimg_new/5942/36281/5907d34b8ddb9ce6ecac4edf865b6528.jpg"
											alt="삼산 도브" class="align"
										>
									</p>
									<a href="${pageContext.request.contextPath}/my/detail/transferred" class="product-title"><i class="bg_w">양도완료</i> <strong>삼산 도브</strong> <span>
											07.30 토 - 07.31 일 • 1박 </span> <b>예약 상세 &gt;</b></a>
								</div></li>
							<li class="reservation-detail"><div>
									<button type="button" class="btn_del">삭제</button>
									<p class="pic">
										<img
											src="https://image.goodchoice.kr/resize_354x184/adimg_new/5942/36281/5907d34b8ddb9ce6ecac4edf865b6528.jpg"
											alt="삼산 도브" class="align"
										>
									</p>
									<a href="${pageContext.request.contextPath}/my/detail/transferred" class="product-title"><i class="bg_w">양도완료</i> <strong>삼산 도브</strong> <span>
											07.30 토 - 07.31 일 • 1박 </span> <b>예약 상세 &gt;</b></a>
								</div></li>
						</ul>
						<!---->
					</section>
				</div>
			</div>
		</div>
		<!-- Footer -->
		<c:import url="/WEB-INF/views/includes/userFooter.jsp"></c:import>
		<!-- Footer -->
	</div>

	<!---->
</body>
</html>