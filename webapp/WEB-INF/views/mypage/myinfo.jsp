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
<link href="${pageContext.request.contextPath}/assets/css/mypage/mypage_common.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/mypage/mypage_content.css"
	rel="stylesheet" type="text/css">
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
				<div class="mypage">
					<form name="form1" action="" autocomplete="off" method="post" novalidate data-form="unick">
						<!-- 폼전송시 전달되는 data target element -->
						<div class="mypageForm__form-inputs-wrap" aria-hidden="true">
							<input type="text" name="unick" id="test1" aria-hidden="true" value="오아시스풍덩" /> <input
								type="text" name="uname" aria-hidden="true" value="" /> <input type="tel" name="uphone"
								aria-hidden="true" value="010****7177" />
						</div>

						<!-- <input type="hidden" name="yeogi_token" value="1a18221b9b01d41df750eaf481160389"> <input
							type="hidden" id="utype" name="utype" value="4"> <input type="hidden" name="utype"
							value="4">
						// 폼전송시 전달되는 data target element -->

						<section class="top_area">
							<strong>내 정보 수정</strong>
							<%-- <div class="login_info">
								<div>
									<img src="${pageContext.request.contextPath}/assets/image/mypage/ico_22.png" alt="">
								</div>
								<p>Naver 회원으로 로그인</p>
							</div> --%>

							<div class="pw_input">
								<div class="pw_input__title">
									<b>닉네임</b> <span class="title__uinfo">오아시스풍덩</span>
								</div>
								<section class="modifying-section" style="display: block;">
									<p class="inp_wrap remove form-errors">
										<input type="text" value="오아시스풍덩" placeholder="체크인시 필요한 정보입니다." data-input="unick"
											data-msg-required="닉네임을 입력하세요." data-rule-minlength="2" data-rule-maxlength="14"
											data-rule-spaceChar="true" data-rule-specialChar="true" />
									</p>
									<button type="button" class="btn_etc btn_confirm active" onclick="changeNickname();">딴거할래요</button>
									<!-- 활성화 클래스 'active' -->
								</section>
								<div class="pw_input__btns-wrap modifying">
									<button class="btns-wrap__edit-btn" type="button">수정</button>
									<button class="btns-wrap__submit-btn" type="submit">수정완료</button>
									<button class="btns-wrap__cancel-btn" type="button">수정취소</button>
								</div>
							</div>
						</section>
					</form>
					<form name="form2" action="https://www.goodchoice.kr/my/mypageInfoUpdate" autocomplete="off"
						method="post" novalidate data-form="uname">
						<!-- 폼전송시 전달되는 data target element -->
						<div class="mypageForm__form-inputs-wrap" aria-hidden="true">
							<input type="text" name="unick" aria-hidden="true" value="오아시스풍덩" /> <input type="text"
								name="uname" aria-hidden="true" value="" /> <input type="tel" name="uphone"
								aria-hidden="true" value="010****7177" />
						</div>
						<input type="hidden" name="yeogi_token" value="1a18221b9b01d41df750eaf481160389"> <input
							type="hidden" name="utype" value="4">

						<section class="top_area">
							<div class="pw_input">
								<div class="pw_input__title">
									<b>예약자 이름</b> <span class="title__uinfo"></span>
								</div>
								<section class="modifying-section" style="display: block;">
									<p class="inp_wrap remove form-errors">
										<input type="text" id="uname" value="" placeholder="체크인시 필요한 정보입니다." data-input="uname"
											data-rule-spaceChar="true" data-rule-specialChar="true" />
									</p>
								</section>
								<div class="pw_input__btns-wrap modifying">
									<button class="btns-wrap__edit-btn" type="button"
										style="android: attr/borderlessButtonStyle">수정</button>
									<button class="btns-wrap__submit-btn" type="submit">수정완료</button>
									<button class="btns-wrap__cancel-btn" type="button"
										style="android: attr/borderlessButtonStyle">수정취소</button>
								</div>
							</div>
						</section>
					</form>

					<form name="form3" action="https://www.goodchoice.kr/my/mypageInfoUpdate" autocomplete="off"
						method="post" novalidate data-form="uphone">
						<section>
							<!-- 폼전송시 전달되는 data target element -->
							<div class="mypageForm__form-inputs-wrap" aria-hidden="true">
								<input type="text" name="unick" aria-hidden="true" value="오아시스풍덩" /> <input type="text"
									name="uname" aria-hidden="true" value="" /> <input type="tel" name="uphone"
									aria-hidden="true" value="010****7177" />
							</div>
							<input type="hidden" name="yeogi_token" value="1a18221b9b01d41df750eaf481160389"> <input
								type="hidden" name="utype" value="4">
							<div class="pw_input phone_confirm">
								<div class="pw_input__title">
									<b>휴대폰 번호</b> <span class="title__uinfo">010****7177</span>
									<div class="safety_txt">개인 정보 보호를 위해 내 정보는 모두 안전하게 암호화됩니다.</div>
								</div>
								<div class="modifying-section" style="display: block;">
									<div id="sendCode">
										<section>
											<div class="inp_wrap remove form-errors">
												<input type="tel" id="phone_number" value="" placeholder="체크인시 필요한 정보입니다."
													maxlength="13" data-input="uphone" data-msg-required="휴대폰 번호를 인증받으세요."
													data-rule-phonenumber="true" />
												<button type="button" class="btn_checked">확인</button>
											</div>
											<button type="button" class="btn_send btn_confirm">인증번호 전송</button>
											<!-- 활성화 클래스 'active' -->
										</section>
									</div>
									<div id="verificationCode" style="display: none;">
										<b>인증 번호</b>
										<section>
											<div class="inp_wrap remove">
												<input type="tel" id="digit" minlength="4" maxlength="4"> <span class="timer">&nbsp;</span>
											</div>
											<button type="button" class="btn_ok btn_confirm" data-verification-type="call"
												data-verification-next="mypageVerify">확인</button>
										</section>
									</div>
									<input type="hidden" id="phone_certification_point" value="MYPAGE" style="display: none;">
								</div>
								<div class="pw_input__btns-wrap modifying">
									<button class="btns-wrap__edit-btn " type="button">수정</button>
									<button class="btns-wrap__submit-btn" type="submit">수정완료</button>
									<button class="btns-wrap__cancel-btn" type="button">수정취소</button>
								</div>
							</div>
						</section>
					</form>
					<!-- <button class="btn_submit disabled btn_one" type="submit">저장</button>-->

				</div>

				<div class="bot_btn">
					<p>양도어때를 이용하고 싶지 않으신가요?</p>
					<button type="button"
						onclick="pop_twobtn('ell','로그아웃 하시겠습니까?','취소','로그아웃','close_layer()','logoutPro()');">로그아웃</button>
					<button type="button">
						<a href="">회원탈퇴</a>
						<!-- withdraw 폼으로 redirect -->
					</button>
				</div>
			</div>
		</div>
		<!-- //Content  -->

		<!-- Footer -->
		<c:import url="/WEB-INF/views/includes/footer(user).jsp"></c:import>
		<!-- Footer -->
	</div>

	<!-- 상단으로 -->
	<button class="btn_go_top" onclick="moveTop();">상단으로</button>

	<!-- //Wrap -->
</body>
</html>