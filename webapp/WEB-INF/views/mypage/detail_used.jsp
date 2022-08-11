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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css"
>
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

<!-- fontawesome -->
<script src="https://kit.fontawesome.com/d80d4fed4a.js" crossorigin="anonymous"></script>
<!-- //fontawesome -->
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
							</div>
						</div>
					</section>
					<!---->
					<form class=review_form>
						<section>
							<strong>리뷰 작성 폼</strong>
							<div class="star_rating">
								<b>별점주기 : </b>
							</div>
							<fieldset class="rating">
								<input type="radio" id="star5" name="rating" value="5" /><label class="full" for="star5"
									title="Awesome - 5 stars"
								></label> <input type="radio" id="star4half" name="rating" value="4 and a half" /><label
									class="half" for="star4half" title="Pretty good - 4.5 stars"
								></label> <input type="radio" id="star4" name="rating" value="4" /><label class="full"
									for="star4" title="Pretty good - 4 stars"
								></label> <input type="radio" id="star3half" name="rating" value="3 and a half" /><label
									class="half" for="star3half" title="Meh - 3.5 stars"
								></label> <input type="radio" id="star3" name="rating" value="3" /><label class="full"
									for="star3" title="Meh - 3 stars"
								></label> <input type="radio" id="star2half" name="rating" value="2 and a half" /><label
									class="half" for="star2half" title="Kinda bad - 2.5 stars"
								></label> <input type="radio" id="star2" name="rating" value="2" /><label class="full"
									for="star2" title="Kinda bad - 2 stars"
								></label> <input type="radio" id="star1half" name="rating" value="1 and a half" /><label
									class="half" for="star1half" title="Meh - 1.5 stars"
								></label> <input type="radio" id="star1" name="rating" value="1" /><label class="full"
									for="star1" title="Sucks big time - 1 star"
								></label> <input type="radio" id="starhalf" name="rating" value="half" /><label class="half"
									for="starhalf" title="Sucks big time - 0.5 stars"
								></label>
							</fieldset>
							<div>
								<span>*필수항목</span>
							</div>
							<div>
								<b>리뷰제목 : </b>
								<p class="inp_wrap remove form-errors">
									<input type="text" name="review_title" class="review_section" placeholder="리뷰 제목을 입력해주세요.">
								</p>
								<span> *필수항목</span>
							</div>
							<div>
								<b>상세리뷰 : </b>
							</div>
							<textarea rows="10" cols="68" placeholder="리뷰 상세내용을 입력해주세요."></textarea>
						</section>

					</form>
					<!---->
				</div>
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
</body>

<script type="text/javascript">
	var $star_rating = $('.star-rating .fa');

	var SetRatingStar = function() {
		return $star_rating
				.each(function() {
					if (parseInt($star_rating.siblings('input.rating-value')
							.val()) >= parseInt($(this).data('rating'))) {
						return $(this).removeClass('fa-star-o').addClass(
								'fa-star');
					} else {
						return $(this).removeClass('fa-star').addClass(
								'fa-star-o');
					}
				});
	};

	$star_rating.on('click',
			function() {
				$star_rating.siblings('input.rating-value').val(
						$(this).data('rating'));
				return SetRatingStar();
			});

	SetRatingStar();
	$(document).ready(function() {

	});
</script>
</html>