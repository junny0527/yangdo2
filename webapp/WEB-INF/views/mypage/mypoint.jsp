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
<link href="${pageContext.request.contextPath}/assets/css/mypage/mypage_common.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/mypage/mypage_content.css" rel="stylesheet"
	type="text/css">
<!-- //css -->

</head>

<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<!-- //js -->

<body class="pc">

	<!-- Wrap -->
	<div class="wrap show">

		<!-- Header / Subtop -->
		<c:import url="/WEB-INF/views/mypage/includes/myheader.jsp"></c:import>
		<!-- //Header / Subtop -->

		<!-- Content  -->
		<div id="content" class="sub_wrap my_wrap">

			<!-- Nav -->
			<c:import url="/WEB-INF/views/mypage/includes/mynav.jsp"></c:import>
			<!-- Nav -->


			<div class="align_rt">
				<input type="hidden" name="page" value="1">
				<div>
					<div class="point_show gra_red">
						<span>사용 가능 포인트</span> <strong id="point-page-show">0 P</strong>
					</div>

					<ul class="point_list"></ul>
				</div>

				<!-- 리스트 없을시 -->
				<div class="list_none">
					적립한 포인트가 없습니다.<br />
				</div>
			</div>

		</div>
		<!-- //Content  -->

		<!-- Footer -->
		<c:import url="/WEB-INF/views/includes/footer(user).jsp"></c:import>
		<!-- Footer -->
	</div>

	<!-- 상단으로 -->
	<button class="btn_go_top">상단으로</button>

	<!-- //Wrap -->

</body>
</html>