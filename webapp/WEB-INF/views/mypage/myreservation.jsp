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
						<h3>
							예약완료 내역 <a class="more_info" style="display: block" href="${pageContext.request.contextPath}/my/list/reserve">더보기>></a>
						</h3>
						<c:forEach var="rList" items="${myMap.rList}" begin="0" end="1">
							<ul class="list_wrap">
								<li class="reservation-detail">
									<div>
										<!-- 이미지 -->
										<p class="pic">
											<img src="${pageContext.request.contextPath}/upload/${rList.saveName}" alt="양평 스마일카라반펜션" class="align">
										</p>
										<!-- 이미지 -->

										<!-- 예약상세 -->
										<a href="${pageContext.request.contextPath}/my/detail?resNo=${rList.resNo}" class="product-title">
											<i class="">예약완료</i> 
											<strong>${rList.pName}</strong>
											<span>체크인: ${rList.checkIn} ㆍ ${rList.inTime}<br> 체크아웃: ${rList.checkOut} ㆍ ${rList.outTime}</span>
										</a>
										<!-- 예약상세 -->
									</div>
								</li>
							</ul>
						</c:forEach>
					</section>
					<section class="list_cancel">
						<h3>
							이용완료 내역 <a class="more_info" href="${pageContext.request.contextPath}/my/list/used">더보기>></a>
						</h3>
						<c:forEach var="uList" items="${myMap.uList}" begin="0" end="1">
							<ul class="list_wrap">
								<li class="reservation-detail li-${uList.resNo}"><div>

										<!-- 삭제버튼 -->
										<button type="button" class="btn_del btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-sm" data-no="${uList.resNo}">삭제</button>
										<!-- 삭제버튼 -->

										<!-- 이미지 -->
										<p class="pic">
											<img src="${pageContext.request.contextPath}/upload/${uList.saveName}" alt="${uList.pName}" class="align">
										</p>
										<!-- 이미지 -->

										<!-- 예약상세 -->
										<a href="${pageContext.request.contextPath}/my/detail?resNo=${uList.resNo}" class="product-title"><i class="bg_w">이용완료</i> <strong>${uList.pName}</strong>
											<span>체크인: ${uList.checkIn} ㆍ ${uList.inTime}<br> 체크아웃: ${uList.checkOut} ㆍ ${uList.outTime}
										</span></a>
										<!-- 예약상세 -->
										<p class="btn_re">
											<a href="${pageContext.request.contextPath}/my/detail?resNo=${uList.resNo}"> 리뷰 남기기 </a>
										</p>
									</div></li>
							</ul>
						</c:forEach>
						<!---->
					</section>
					<section class="list_cancel">
						<h3>
							예약취소 내역 <a class="more_info" href="${pageContext.request.contextPath}/my/list/cancel">더보기>></a>
						</h3>
						<c:forEach var="cList" items="${myMap.cList}" begin="0" end="1">
							<ul class="list_wrap">
								<li class="reservation-detail li-${cList.resNo}"><div>

										<!-- 삭제버튼 -->
										<button type="button" class="btn_del btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-sm" data-no="${cList.resNo}">삭제</button>
										<!-- 삭제버튼 -->

										<!-- 이미지 -->
										<p class="pic">
											<img src="${pageContext.request.contextPath}/upload/${cList.saveName}" alt="삼산 도브" class="align">
										</p>
										<!-- 이미지 -->

										<!-- 예약상세 -->
										<a href="${pageContext.request.contextPath}/my/detail?resNo=${cList.resNo}" class="product-title"><i class="bg_w">예약취소</i> <strong>${cList.pName}</strong>
											<span>체크인: ${cList.checkIn} ㆍ ${cList.inTime}<br> 체크아웃: ${cList.checkOut} ㆍ ${cList.outTime}
										</span></a>
										<!-- 예약상세 -->

										<p class="btn_re">
											<a href="${pageContext.request.contextPath}/reservation?pensionNo=${myVo.pNo}&datepicker=${myVo.inDate}&datepicker2="> 다시 예약 </a>
										</p>
									</div></li>
							</ul>
						</c:forEach>
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

	<!-- Modal -->
	<div id="btn-del-modal" class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="btn-del-label">삭제하기</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">내역을 삭제하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					<button id="btnDel" type="button" class="btn btn-primary">삭제</button>
				</div>
				<input type="hidden" name="no" value="" id="delNo">
			</div>
		</div>
	</div>
</body>

<script>
	$(document).ready(function() {

		$('.btn_del').on('click', function() {

			var no = $(this).data('no');
			$('#delNo').val(no);

			$('#btn-del-modal').show();

		});

		$('#btnDel').on('click', function() {

			var no = $('#delNo').val();

			$.ajax({
				type : 'POST',
				url : '${pageContext.request.contextPath}/my/remove',
				dataType : 'json',
				data : {
					no : no
				},
				success : function(count) {
					if (count == 1) {
						$("#li-" + no).remove();
						$("#btn-del-modal").hide();
						location.reload();
					} else {
						$("#btn-del-modal").hide();
					}
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		});

	});
</script>

</html>