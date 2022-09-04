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
					<section class="list_wrap">
						<h3>
							양도대기 내역 <a class="more_info" style="display: block" href="${pageContext.request.contextPath}/my/list/relist">더보기>></a>
						</h3>
						<c:forEach var="yList" items="${myMap2.yList}" begin="0" end="1">
							<ul class="list_wrap">
								<li class="reservation-detail"><div>
										<p class="pic">
											<img src="${pageContext.request.contextPath}/upload/${yList.saveName}" alt="${yList.pName}" class="align">
										</p>
										<a href="${pageContext.request.contextPath}/my/detail?resNo=${yList.resNo}" class="product-title"><i class="">양도대기</i> <strong>${yList.pName}</strong> <span>
												체크인: ${yList.checkIn} ㆍ ${yList.inTime}<br> 체크아웃: ${yList.checkOut} ㆍ ${yList.outTime}
										</span> <b>예약 상세 &gt;</b></a>
									</div></li>
							</ul>
						</c:forEach>
						<!---->
					</section>
					<section class="list_cancel">
						<h3>
							양도완료 내역<a class="more_info" href="${pageContext.request.contextPath}/my/list/transfer">더보기>></a>
						</h3>
						<c:forEach var="tList" items="${myMap2.tList}" begin="0" end="1">

							<ul class="list_wrap">
								<li class="reservation-detail"><div>
										<button type="button" class="btn_del btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-sm" data-no="${uList.resNo}">삭제</button>
										<p class="pic">
											<img src="${pageContext.request.contextPath}/upload/${tList.saveName}" alt="${tList.pName}" class="align">
										</p>
										<a href="${pageContext.request.contextPath}/my/detail?resNo=${tList.resNo}" class="product-title"><i class="bg_w">양도완료</i> <strong>${tList.pName}</strong> <span>
												체크인: ${tList.checkIn} ㆍ ${tList.inTime}<br> 체크아웃: ${tList.checkOut} ㆍ ${tList.outTime}
										</span></a>
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
			</div>
		</div>
	</div>
</body>

<!---->
</body>

<script>
	$(document).ready(function() {
		$('.btn_del').on('click', function() {

			var no = $(this).data("no");
			$("#delNo").val(no);

			$('#btn-del-modal').show('focus');

		});
	});

	$('#btnDel').on("click", function() {

		var no = $("#delNo").val();

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
					$("#btn-del-modal").modal("hide");
					location.reload();
				} else {
					$("#btn-del-modal").modal("hide");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});

	function isEmpty(value) {
		if (value.length == 0 || value == null) {
			return true;
		} else {
			return false;
		}
	}

	function isNumeric(value) {
		var regExp = /^[0-9]+$/g;
		return regExp.test(value);
	}

	function currencyFormatter(amount) {
		return amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}
</script>
</html>