<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>여행할때 양도어때</title>

<!-- css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/includes/userHeaderFooter.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/mypage/mycommon.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/mypage/my.css">

<!-- //css -->
</head>

<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
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
				<div class="reserve_detail">
					<!---->
					<div class="info" style="">
						<div>
							<i class="bg_w"> ${dlist.status}</i> <strong>${dlist.pName}</strong>
							<span>${dlist.rName}(기준 ${dlist.sPple}인 / 최대
								${dlist.mPple}인)</span>
						</div>
					</div>

					<!-- mydetail -->
					<c:import url="/WEB-INF/views/mypage/includes/mydetail.jsp"></c:import>
					<!-- //mydetail -->

					<section>
						<div style="padding-top: 0; padding-bottom: 0">
							<div
								class="booking_detail_section_layout_wrap booking-cancel__section"
								style="border-bottom: none;">

								<!---->
							</div>
							<button type="button"
								class="btn_flat btn-green booking_detail_flat_button color-green-long">다시
								예약</button>
							<!---->
							<!---->
						</div>
					</section>
				</div>
				<!---->
			</div>
		</div>
		<div>
			<!---->
		</div>
		<!-- Footer -->
		<c:import url="/WEB-INF/views/includes/userFooter.jsp"></c:import>
		<!-- Footer -->
	</div>
</body>
</html>
