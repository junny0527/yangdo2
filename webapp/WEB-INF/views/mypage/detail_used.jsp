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
				<div class="reserve_detail">
					<!---->
					<div class="info" style="">
						<div>
							<i class="bg_w"> 이용완료 </i> <strong>삼선 도보</strong> <span>골드룸(기본 2인 최대 4인) • 1박</span>
						</div>
					</div>
					<section class="detail">
						<div>
							<p>
								<strong>체크인</strong>2022.08.30 화 15:00
							</p>
							<p>
								<strong>체크아웃</strong>2022.08.31 수 11:00
							</p>
							<p>
								<strong>인원</strong>기본 2인 / 최대 4인 (인당 추가 금액: 20,000원)
							</p>
						</div>
						<div>
							<p>
								<strong>예약번호</strong>100631482
							</p>
							<p>
								<strong>예약자 이름</strong>홍길동
							</p>
							<p>
								<strong>휴대폰 번호</strong>010-1234-1234 <span class="safety_txt_2">휴대폰 번호는 숙소에 전송되며, 퇴실
									후 7일간 보관됩니다. </span>
							</p>
						</div>
						<div class="sub_total">
							<p>
								<strong>결제정보</strong>
							</p>
							<p>
								<strong class="sub_info"> 주문금액 </strong> <b> 59,000원</b>
							</p>
							<p>
								<strong class="sub_info"> 추가금액 </strong> <b> 20,000원</b>
							</p>
							<p>
								<strong class="sub_info"> 할인금액 </strong> <b> - </b>
							</p>
						</div>
						<div class="total">
							<p>
								<strong>총 결제금액 </strong> <b> 79,000원</b>
							</p>
						</div>
					</section>
					<section>
						<div style="padding-top: 0; padding-bottom: 0">
							<div class="booking_detail_section_layout_wrap booking-cancel__section"
								style="border-bottom: none;"
							>
								<button type="button" class="btn_flat btn-green booking_detail_flat_button color-red-long">리뷰
									남기기</button>
								<!---->
								<form>
									<section>
										<strong>리뷰 작성 폼</strong>
										<div>
											<b>제목 : </b> <input type="text" name="review_title" class="review_section"
												placeholder="제목을 입력해주세요."
											><span> *필수항목</span>
										</div>
									</section>
								</form>

								<div class="review-intake-form__rating">
									<div class="review-table">
										<div class="review-table__cell review-intake-head title">
											<img
												src="https://thumbnail8.coupangcdn.com/thumbnails/remote/250x250ex/image/vendor_inventory/5db9/42a24dbdbb1d5f278d11e4cc90a1b24d7ce2c43cbf8b976d5b7f6093f75c.jpg"
												width="100" height="100" title="에비크 FHD 15인치 초슬림 DEX 포터블 HDR 휴대용 모니터 156B05"
												alt="에비크 FHD 15인치 초슬림 DEX 포터블 HDR 휴대용 모니터 156B05"
											/>
										</div>
										<div class="review-table__cell description">
											<div class="review-intake-form__product-title">에비크 FHD 15인치 초슬림 DEX 포터블 HDR 휴대용 모니터
												156B05</div>

											<div class="my-review__modify__star js_reviewModifyStarContainer" data-star=""
												data-text="최고"
											>
												<div class="my-review__modify__star__content">

													<div>
														<button class="my-review__modify__star__content__value js_reviewModifyStarBtn"
															type="button" value="1" data-text="나쁨"
														></button>
														<button class="my-review__modify__star__content__value js_reviewModifyStarBtn"
															type="button" value="2" data-text="별로"
														></button>
														<button class="my-review__modify__star__content__value js_reviewModifyStarBtn"
															type="button" value="3" data-text="보통"
														></button>
														<button class="my-review__modify__star__content__value js_reviewModifyStarBtn"
															type="button" value="4" data-text="좋음"
														></button>
														<button class="my-review__modify__star__content__value js_reviewModifyStarBtn"
															type="button" value="5" data-text="최고"
														></button>
														<span
															class="my-review__modify__star__content__status js_reviewModifyStatus default-review-star"
														>(필수)<em>*</em></span>
													</div>



												</div>
												<!---->
											</div>
										</div>
										<!---->
					</section>
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
</body>
</html>