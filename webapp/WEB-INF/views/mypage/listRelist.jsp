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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/includes/userHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mypage/mycommon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mypage/my.css">

<!-- //css -->
</head>

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
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
					<section>
						<h3>양도대기 내역</h3>
						<c:choose>
							<c:when test="${!empty list}">
								<c:forEach var="list" items="${list}">
									<ul class="list_wrap">
										<li class="reservation-detail"><div>
												<p class="pic">
													<img src="${pageContext.request.contextPath}/upload/${list.saveName}" alt="${list.pName }" class="align">
												</p>
												<a href="${pageContext.request.contextPath}/my/detail?resNo=${list.resNo}" class="product-title"><i class="">양도대기</i> <strong>${list.pName }</strong>
													<span>체크인: ${list.checkIn} ㆍ ${list.inTime}<br> 체크아웃: ${list.checkOut} ㆍ ${list.outTime}
												</span></a>
											</div></li>
									</ul>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<div class="list_none">양도대기 내역이 없습니다.</div>
							</c:otherwise>
						</c:choose>
						<!---->
					</section>
				</div>
			</div>
		</div>
		<!-- Footer -->
		<c:import url="/WEB-INF/views/includes/userFooter.jsp"></c:import>
		<!-- Footer -->
	</div>
</body>


</html>