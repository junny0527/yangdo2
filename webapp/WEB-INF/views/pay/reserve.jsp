<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제정보 결제</title>
</head>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/includes/userHeaderFooter.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/pay/a.css">

<body>
	<div id="wrap">
		<!-- 펜션어때 헤더 -->
		<c:import url="/WEB-INF/views/includes/userHeader.jsp"></c:import>
		<!-- 펜션어때 헤더 -->


		<!---->
		<div id="content" class="clearfix" data-v-f785cca6="">
			<div class="reserve" data-v-f785cca6="">
				<div class="right" data-v-33033856="" data-v-f785cca6="">
					<section class="info" data-v-33033856="">
						<p class="name" data-v-33033856="">
							<strong data-v-33033856="">펜션이름</strong>${rpMap.PNAME }
						</p>
						<p data-v-33033856="">
							<strong data-v-33033856="">객실명/기간</strong>${rpMap.RNAME } / 1박
						</p>
						<p data-v-33033856="">
							<strong data-v-33033856="">인원수</Strong>${rpMap.ADULT+rpMap.KID+rpMap.BABY}명
						</p>
						<p data-v-33033856="">
							<strong data-v-33033856="">체크인</strong>${rpMap.CHECK_IN }
						</p>
						<p data-v-33033856="">
							<strong data-v-33033856="">체크아웃</strong>${rpMap.CHECK_OUT }
						</p>
					</section>
					<section class="total_price_pc" data-v-33033856="">
						<p data-v-33033856="">
							<strong data-v-33033856=""><b data-v-33033856="">총
									결제 금액</b>(VAT포함)</strong><span class="in_price" data-v-33033856="">${rpMap.TOTAL_PRICE}</span>
						</p>
						<ul data-v-33033856="">
							<li data-v-33033856="">해당 객실가는 세금, 봉사료가 포함된 금액입니다</li>
							<li data-v-33033856="">결제완료 후 <span data-v-33033856="">예약자
									이름</span>으로 바로 <span data-v-33033856="">체크인</span> 하시면 됩니다
							</li>
						</ul>
					</section>
					<!---->
					<button onclick="requestPay()" type="button"
						class="btn_pay gra_left_right_red" data-v-33033856="">결제하기</button>
				</div>
				<div class="left" data-v-f785cca6="">
					<!---->
					<div data-v-35b6e85e="" data-v-f785cca6="">
						<section class="info_chkin" data-v-35b6e85e="">
							<h3 style="margin-top: 0;" data-v-35b6e85e="">예약자 정보</h3>
							<strong data-v-35b6e85e="">예약자 이름</strong>
							<p class="inp_wrap remove" data-v-35b6e85e="">
								<input type="text" name="userName" placeholder="체크인시 필요한 정보입니다."
									maxlength="20" data-v-35b6e85e="">
							</p>
							<p data-show="name" class="alert_txt" style="visibility: hidden"
								data-v-35b6e85e="">한글, 영문, 숫자만 입력 가능. (문자 사이 공백은 1칸만 입력 가능)
							</p>
							<div data-v-2c1e3bcc="" data-v-35b6e85e="">
								<strong class="mt_09" data-v-2c1e3bcc="">휴대폰 번호</strong> <span
									class="safety_txt" data-v-2c1e3bcc="">개인 정보 보호를 위해 안심번호로
									숙소에 전송됩니다.</span>
								<p class="inp_wrap remove" data-v-35b6e85e="">
									<input type="text" name="ph" placeholder="체크인시 필요한 정보입니다."
										maxlength="20" data-v-35b6e85e="">
								</p>
							</div>
							<!---->
							<hr class="hr-solid">
							<section class="price_wrap" data-v-3ce5aaac="" data-v-f785cca6="">
								<h3 data-v-3ce5aaac="">할인 수단 선택</h3>
								<div class="product-amount" data-v-3ce5aaac="">
									<strong data-v-3ce5aaac="">구매총액</strong><b data-v-3ce5aaac="">${rpMap.TOTAL_PRICE}원</b>
								</div>
								<hr>
								<div class="product-total-service" data-v-3ce5aaac="">
									<strong data-v-3ce5aaac="">상세 결제 내역</strong> <br>
									<div class="product-amount" data-v-3ce5aaac="">
										<span class="addprice" data-v-2c1e3bcc="">성인:
											${rpMap.ADULT}명</span><b data-v-3ce5aaac="">0원</b>
									</div>
									<div class="product-amount" data-v-3ce5aaac="">
										<span class="addprice" data-v-2c1e3bcc="">아동:
											${rpMap.KID}명</span><b data-v-3ce5aaac="">0원</b>
									</div>
									<div class="product-amount" data-v-3ce5aaac="">
										<span class="addprice" data-v-2c1e3bcc="">영유아:
											${rpMap.BABY}명</span><b data-v-3ce5aaac="">0원</b>
									</div>
									<div class="product-amount" data-v-3ce5aaac="">
										<span class="addprice" data-v-2c1e3bcc="">포인트 사용</span><b
											data-v-3ce5aaac="">0P</b>
									</div>
									<div class="product-amount" data-v-3ce5aaac="">
										<span class="addprice" data-v-2c1e3bcc="">합계</span><b
											data-v-3ce5aaac="">${rpMap.TOTAL_PRICE }원</b>
									</div>
								</div>
								<hr>
								<div class="product-point" data-v-3ce5aaac="">
									<span class="save-point" data-v-2c1e3bcc="">보유포인트:</span> <span
										class="see-point" data-v-2c1e3bcc="">${rpMap.POINTS }</span>
								</div>
								<div class="discount-container" data-v-3ce5aaac="">
									<div class="discount-header" data-v-3ce5aaac="">
										<button class="discount-method-button" data-v-3ce5aaac="">
											포인트 사용 0P</button>
										<div class="discount-point-amount" data-v-3ce5aaac="">
											<div class="value-total" data-v-3ce5aaac="">
												<input type="text" value="0" class="point-input"
													data-v-3ce5aaac=""> <span data-v-3ce5aaac="">P</span>
											</div>
										</div>
									</div>
								</div>
							</section>
						</section>
						<div class="point" style="display: block" data-v-35b6e85e="">

						</div>
						<!---->
					</div>
					<!---->
					<hr>
					<section class="pay_select" data-v-f785cca6="">
						<h3 data-v-f785cca6="">결제수단 선택</h3>
						<select id="payment-select" class="select_type_1">
							<option data-minprice="0" selected="selected" value="CARD"
								data-v-f785cca6="">선택해주세요</option>
							<option data-minprice="0" value="KAKAO" data-v-f785cca6="">카카오페이</option>
							<option data-minprice="0" value="NAVER" data-v-f785cca6="">
								네이버페이</option>
							<option data-minprice="0" value="CARD" data-v-f785cca6="">
								신용/체크카드</option>
						</select>
						<!---->
						<!---->
					</section>
					<section class="agree" data-v-d63b628c="" data-v-f785cca6="">
						<p class="all_check" data-v-d63b628c="">
							<label data-v-d63b628c=""><input type="checkbox"
								name="checkAll" class="inp_chk_02" data-v-d63b628c=""> <span
								data-v-d63b628c="">전체 동의</span></label>
						</p>
						<p data-v-d63b628c="">
							<input type="checkbox" name="checkOne" class="inp_chk_02"
								data-v-d63b628c=""> <span onclick="pop_agree_01();"
								data-v-d63b628c=""><i data-v-d63b628c="">숙소이용규칙 및
									취소/환불규정 동의</i><b data-v-d63b628c=""> (필수)</b></span>
						</p>
						<p data-v-d63b628c="">
							<input type="checkbox" name="checkOne" class="inp_chk_02"
								data-v-d63b628c=""> <span onclick="pop_agree_02();"
								data-v-d63b628c=""><i data-v-d63b628c="">개인정보 수집 및 이용
									동의</i><b data-v-d63b628c=""> (필수)</b></span>
						</p>
						<p data-v-d63b628c="">
							<input type="checkbox" name="checkOne" class="inp_chk_02"
								data-v-d63b628c=""> <span onclick="pop_agree_03();"
								data-v-d63b628c=""><i data-v-d63b628c="">개인정보 제 3자 제공
									동의</i><b data-v-d63b628c=""> (필수)</b></span>
						</p>
						<p class="guest_chk_area" data-v-d63b628c="">
							<input type="checkbox" name="checkOne" class="inp_chk_02"
								data-v-d63b628c=""> <span onclick="pop_agree_04();"
								data-v-d63b628c=""><i data-v-d63b628c="">만 14세 이상 확인</i><b
								data-v-d63b628c=""> (필수)</b></span>
						</p>
					</section>
				</div>
			</div>
		</div>

		<!---->
		<!---->


		<!-- 왼쪽끝 -->
		<!-- //footer -->
		<c:import url="/WEB-INF/views/includes/userFooter.jsp"></c:import>
	</div>

</body>
<script type="text/javascript">
	var IMP = window.IMP; // 생략 가능
	IMP.init('imp74601630');
	function requestPay () {
		//IMP.request_pay(param, callback)
		IMP.request_pay({ // param
          pg: "html5_inicis",
          pay_method: "card",
          merchant_uid: "ORD20180131-0000011",
          name: "노르웨이 회전 의자",
          amount: 100,
          buyer_email: "gildong@gmail.com",
          buyer_name: "${name:name}",
          buyer_tel: "010-4242-4242",
          buyer_addr: "서울특별시 강남구 신사동",
          buyer_postcode: "01181"
      }, function (rsp) { // callback
    	  if (rsp.success) { // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
    	        // jQuery로 HTTP 요청
    	        jQuery.ajax({
    	            url: "{서버의 결제 정보를 받는 endpoint}", // 예: https://www.myservice.com/payments/complete
    	            method: "POST",
    	            headers: { "Content-Type": "application/json" },
    	            data: {
    	                imp_uid: rsp.imp_uid,
    	                merchant_uid: rsp.merchant_uid
    	            }
    	        }).done(function (data) {
    	          // 가맹점 서버 결제 API 성공시 로직
    	        })
    	      } else {
    	        alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
    	      }
    	    });
		

    
    
	}
	
</script>
</html>