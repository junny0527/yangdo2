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
				<input type="hidden" name="page" value="1">
				<div>
					<div class="point_show gra_red">
						<span>사용 가능 포인트</span> <strong id="point-page-show">500 P</strong>
					</div>
					<ul class="point_list">
						<li>"삼산 도브(90P)"<span>2022.07.28</span>
							<p class="col_mint">-190</p></li>
					</ul>
					<ul class="point_list">
						<li>"도전룰렛 이벤트(100P)"<span>2022.07.20</span>
							<p class="col_red">+100</p></li>
					</ul>
					<ul class="point_list">
						<li>"스마일카라반펜션(590P)"<span>2022.07.17</span>
							<p class="col_red">+590</p></li>
					</ul>

				</div>

				<!-- 리스트 없을시 -->
				<div class="list_none">
					적립한 포인트가 없습니다.<br />
				</div>
			</div>

		</div>
		<!-- //Content  -->

		<!-- Footer -->
		<c:import url="/WEB-INF/views/includes/userFooter.jsp"></c:import>
		<!-- Footer -->
	</div>

	<!-- //Wrap -->

</body>
</html>