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
				<c:if test="${list == null}">
					<div class="list_none">
						<h3>이용완료 내역이 없습니다.</h3>
						<p>
							<a href="${pageContext.request.contextPath}/main?areaNo=123456"
								class="btn_red">다양한 숙소 보러가기</a>
						</p>
					</div>
				</c:if>
				<c:if test="${list != null}">
					<div class="reserve_list">
						<section>
							<h3>이용완료 내역</h3>
							<c:forEach var="list" items="${list}">
								<ul class="list_wrap">
									<li class="reservation-detail"><div>
											<button type="button" class="btn_del">삭제</button>
											<p class="pic">
												<img
													src="${pageContext.request.contextPath}/upload/${list.imgPath}"
													alt="삼산 도브" class="align">
											</p>
											<a
												href="${pageContext.request.contextPath}/my/detail?resNo=${list.resNo}"
												class="product-title"><i class="bg_w">이용완료</i> <strong>${list.pName }</strong>
												<span>체크인: ${list.checkIn} ㆍ ${list.inTime}<br>
													체크아웃: ${list.checkOut} ㆍ ${list.outTime}
											</span></a>
											<p class="btn_re">
												<a
													href="${pageContext.request.contextPath}/my/detail?resNo=${list.resNo}">
													리뷰 남기기 </a>
											</p>
										</div></li>
								</ul>
								<!---->
							</c:forEach>
						</section>
					</div>
				</c:if>
			</div>
		</div>
		<!-- Footer -->
		<c:import url="/WEB-INF/views/includes/userFooter.jsp"></c:import>
		<!-- Footer -->
	</div>
</body>


</html>