<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>여행할때 양도어때</title>

<!-- css -->
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/includes/userHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mypage/mycommon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mypage/my.css">

<!-- //css -->
</head>

<!-- js -->
<script src="https://use.fontawesome.com/800a23ce81.js"></script>
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
				<div class="reserve_detail">

					<c:import url="/WEB-INF/views/mypage/includes/mydetail.jsp"></c:import>

				</div>
			</div>
			<div>
				<!---->
			</div>
			<!-- Footer -->
			<c:import url="/WEB-INF/views/includes/userFooter.jsp"></c:import>
			<!-- Footer -->
		</div>
	</div>

	<!----------------------------------취소 환불 모달---------------------------------------------->
	<!-- Modal -->
	<div class="modal fade" id="btn-cancel-modal" tabindex="-1" role="dialog" aria-labelledby="btn-cancel-modalTitle" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-cancel-dialog">
				<div class="modal-content">
					<div class="modal-nav">
						<div class="modal-nav-wrap">
							<div class="modal-nav-title">취소내용 확인</div>
						</div>
					</div>
					<div class="modal-header">
						<div class="modal-header-notice-wrap">
							<span class="glyphicon glyphicon-exclamation-sign icon_notice"> </span>
							<p>
								<span>총 환불금액 및 환불 내용을 확인하신 후 <br> 정말 예약취소를 원하시면 취소 진행을 해주세요.
								</span>
							</p>
						</div>
						<div class="modal-guide-msg">
							지금 예약 취소 시 <br> 취소 수수료 <b>${sMap.cancelPRICE}원</b> 이 발생합니다.
						</div>
					</div>
					<div class="modal-body">
						<div class="modal-body-top-wrap">
							<div class="modal-body-top">
								<div class="modal-body-top-title">
									<div class="top-title-main">환불 예정 정보</div>
								</div>
								<div class="modal-body-top-content">
									<div class="modal-body-top-content-detail">
										<div class="body-left-content">결제금액</div>
										<div class="body-right-content">
											<div class="body-right-content-detail">${sMap.totalPRICE}원</div>
										</div>
									</div>
									<div class="modal-body-top-content">
										<div class="body-left-content">취소 수수료</div>
										<div class="body-right-content">
											<div class="body-right-content-detail">${sMap.cancelPRICE}원</div>
										</div>
									</div>
								</div>
							</div>

							<div class="modal-body-top-bottom">
								<div class="modal-body-top-content cancel-total-wrap">
									<div class="body-left-content">최종 환불금액</div>
									<div class="body-right-content">
										<div class="body-right-content-detail">${sMap.REFUND_PRICE}원</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-body-bottom">
						<div class="modal-body-bottom-title">취소 안내사항</div>
						<div class="modal-body-bottom-content">
							<ul class="bottom-content">
								<li class="bottom-content-detail">취소수수료가 발생한 경우 포인트 → 현금 순으로 차감됩니다. 실결제금액에서 현금에서 차감되는 취소수수료를 뺀 금액이 결제수단으로 환불 됩니다.</li>
								<li class="bottom-content-detail">취소수수료는 판매가(상품가격) 기준으로 산정 됩니다.</li>
								<li class="bottom-content-detail">예약/결제 당시에 적용된 취소/환불 규정에 따라 취소수수료가 계산됩니다.</li>
								<li class="bottom-content-detail">예약/결제 당시에 적용된 예약/결제 시 사용한 포인트는 포인트 잔액으로 복원 됩니다. 단, 취소 수수료를 차감한 금액으로 복원될 수 있습니다. 포인트 잔액은 취소에 의한 복원 여부에
									상관없이 원 유효기간 등에 따라 잔액이 소멸될 수 있으니 주의 바랍니다.</li>
								<li class="bottom-content-detail">환불은 예약취소 후 PG사 승인 취소 기간에 따라 주말, 공휴일을 제외한 영업일 기준 최대 3~5일 소요됩니다.</li>
							</ul>
							<div class="modal-cancel-footer">
								<div class="modal-btns-wrap multiple_btns">
									<input type="hidden" name="no" value="" id="cancelNo"> <input type="hidden" name="no" value="" id="cancelNo">
									<button type="button" class="btn_flat btn-grey" data-dismiss="modal">닫기</button>
									<button type="button" class="btn_flat btn-red" id="btnCancel" data-toggle="modal" data-target="#cancel-alert-modal">취소진행</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!----------------------------------//취소 환불 모달---------------------------------------------->
	<!----------------------------------취소 환불 완료 알림창---------------------------------------------->
	<div class="alert_msg box_shadow" id="cancel-alert-modal">
		<div class="msg popup_cont">
			<div class="alert-contents">
				<div class="alert-contents-text">
					<span>예약취소 되었습니다.</span>
				</div>
			</div>
			<div class="btn_center">
				<a href=# data-dismiss="modal" id="alertConfirm">확인</a>
			</div>
		</div>
	</div>
	<!----------------------------------//취소 환불 완료 알림창---------------------------------------------->
</body>


<script>
	$(document).ready(function() {
		console.log("준비")
	});

	$("#btn_cancel_confirm").on("click", function() {

		var no = $(this).data('no');
		$('#cancelNo').val(no);

		$("#btn-cancel-modal").show();
	});

	$('#btnCancel').on('click', function() {

		var no = $('#cancelNo').val();

		$.ajax({
			type : 'POST',
			url : '${pageContext.request.contextPath}/my/update/cancel',
			dataType : 'json',
			data : {
				no : no
			},
			success : function(count) {
				if (count == 1) {
					console.log("cancellation success");
					$("#btn-cancel-modal").hide();
					$("#cancel-alert-modal").show("fast");
				} else {
					console.log("cancellation failed to proceed");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});

	$("#alertConfirm").on("click", function() {
		console.log("confirm");
		location.href = "${pageContext.request.contextPath}/my/reservation"

	});
</script>
</html>