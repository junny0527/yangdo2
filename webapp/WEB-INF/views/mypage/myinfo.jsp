<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap is developed mobile first, a strategy in which we optimize code for mobile 
devices first and then scale up components as necessary using CSS media queries. 
To ensure proper rendering and touch zooming for all devices, add the responsive viewport meta tag to your <head>. -->
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
				<div class="mypage">

					<form name="form1" action="${pageContext.request.contextPath}/my/update/nickname" autocomplete="off" method="post" data-form="nickName">
						<!-- 폼전송시 전달되는 data target element -->
						<div class="mypageForm__form-inputs-wrap" aria-hidden="true"></div>
						<input type="hidden" name="no" value="${uVo.no}">
						<!-- // 폼전송시 전달되는 data target element -->
						<section class="top_area">
							<strong>내 정보 관리</strong>
							<div class="pw_input">
								<div class="pw_input__title">
									<b>닉네임</b> <span class="title__uinfo">${uVo.nickName}</span>
								</div>
								<section class="modifying-section">
									<p class="inp_wrap remove form-errors">
										<input type="text" name="nickName" value="${uVo.nickName}" placeholder="새 닉네임을 입력해주세요." data-msg-required="새 닉네임을 입력하세요."
											data-rule-minlength="2" data-rule-maxlength="10" data-rule-spaceChar="true" data-rule-specialChar="true" required />
									</p>
								</section>
								<div class="pw_input__btns-wrap ">
									<button class="btns-wrap__edit-btn" type="button" id="modify-nickName">수정</button>
									<button class="btns-wrap__submit-btn" type="submit">수정완료</button>
									<button class="btns-wrap__cancel-btn" type="button">수정취소</button>
								</div>
							</div>
						</section>
					</form>
					<form name="form2" action="${pageContext.request.contextPath}/my/update/pw" autocomplete="off" method="post" data-form="pw">
						<!-- 폼전송시 전달되는 data target element -->
						<input type="hidden" name="no" value="${uVo.no}">
						<div class="mypageForm__form-inputs-wrap" aria-hidden="true"></div>
						<section class="top_area">
							<div class="pw_input">
								<div class="pw_input__title">
									<b>비밀번호</b> <span class="title__uinfo"></span>
								</div>
								<section class="modifying-section">
									<p class="inp_wrap remove form-errors">
										<input type="password" name="pw" value="" placeholder="새 비밀번호를 입력해주세요." data-rule-spaceChar="true" data-rule-specialChar="true"
											minlength="4" maxlength="15" data-msg-required="새로운 비밀번호 최소 4글자를를 입력하세요." required />
									</p>
								</section>
								<div class="pw_input__btns-wrap ">
									<button class="btns-wrap__edit-btn" id="modify-pw" type="button">수정</button>
									<button class="btns-wrap__submit-btn" type="submit">수정완료</button>
									<button class="btns-wrap__cancel-btn" type="button">수정취소</button>
								</div>
							</div>
						</section>
					</form>
					<form name="form3" action="${pageContext.request.contextPath}/my/update/hp" autocomplete="off" method="post" data-form="hp">
						<section>
							<!-- 폼전송시 전달되는 data target element -->
							<input type="hidden" name="no" value="${uVo.no}">
							<div class="mypageForm__form-inputs-wrap" aria-hidden="true"></div>
							<div class="pw_input phone_confirm">
								<div class="pw_input__title">
									<b>휴대폰 번호</b> <span class="title__uinfo">${uVo.hp}</span>
									<div class="safety_txt">개인 정보 보호를 위해 내 정보는 모두 안전하게 암호화됩니다.</div>
								</div>
								<div class="modifying-section">
									<div id="sendCode">
										<section>
											<div class="inp_wrap remove form-errors">
												<input type="tel" name="hp" value="" placeholder="숫자만 입력해주세요. (예시: 01011112222)" pattern="[0-9]{10,11}" data-msg-required="숫자만 입력하세요." maxlength="11"
													data-input="hp" data-rule-phonenumber="true" required />
												<button type="button" class="btn_checked">확인</button>
											</div>
										</section>
									</div>

								</div>
								<div class="pw_input__btns-wrap ">
									<button class="btns-wrap__edit-btn" type="button" id="modify-hp">수정</button>
									<button class="btns-wrap__submit-btn" id="hpMod" type="submit">수정완료</button>
									<button class="btns-wrap__cancel-btn" type="button">수정취소</button>
								</div>
							</div>
						</section>
					</form>
				</div>

				<div class="bot_btn" style="border-top: none; margin-top: 0px;">
					<p>양도어때 로그아웃 하시겠습니까?</p>
					<a href="${pageContext.request.contextPath}/logout" style="color: black;">로그아웃</a>
				</div>
			</div>
		</div>
		<!-- //Content  -->

		<!-- Footer -->
		<c:import url="/WEB-INF/views/includes/userFooter.jsp"></c:import>
		<!-- Footer -->
	</div>
	<!-- //Wrap -->

	<!-- 수정완료 클릭 모달창 -->
	<div id="btn-modify-modal" class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="btn-modify-label">수정하기</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">정보를 수정하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">아니요</button>
					<button id="btnMod" type="button" class="btn btn-primary">예</button>
				</div>
				<input type="hidden" name="no" value="" id="modify-data">
			</div>
		</div>
	</div>

</body>
<script>
	$(document).ready(function() {
		console.log('ready');
		// 페이지 준비 시 
		$(".modifying-section").hide();
		$(".pw_input__btns-wrap").removeClass("modifying");

	});

	// 수정 버튼 클릭 시 
	$('.btns-wrap__edit-btn').on('click', function() {

		$(this).parent().addClass("modifying");
		$(this).parent().prev(".modifying-section").toggle();

	});

	// 수정취소 버튼 클릭 시 
	$('.btns-wrap__cancel-btn').on("click", function() {
		$(".modifying-section").hide();
		$(".pw_input__btns-wrap").removeClass("modifying");
	});
</script>
</html>