<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
	-webkit-appearance: none;
	margin: 0;
}
</style>
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

<!-- css -->
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

		<div data-v-f785cca6="" data-v-924c7d26="">
			<!---->
			<div id="content" class="clearfix" data-v-f785cca6="">
				<form name="roomPay" id="roomPay"
					onsubmit="requestPay(this); return false;">
					<div class="reserve" data-v-f785cca6="">
						<div class="right" data-v-33033856="" data-v-f785cca6="">
							<section class="info" data-v-33033856="">
								<p class="name" data-v-33033856="">
									<strong data-v-33033856="">예약번호</strong>NO.${rpMap.NO }
								</p>
								<p data-v-33033856="">
									<strong data-v-33033856="">펜션이름</strong>${rpMap.PNAME }
								</p>
								<p data-v-33033856="">
									<strong data-v-33033856="">객실명/기간</strong>${rpMap.ROOM_NAME } /
									${rpMap.DDay}박
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
											결제 금액</b>(VAT포함)</strong><span class="in_price total" data-v-33033856="">${rpMap.TOTAL_PRICE}원</span>
								</p>
								<ul data-v-33033856="">
									<li data-v-33033856="">해당 객실가는 세금, 봉사료가 포함된 금액입니다</li>
									<li data-v-33033856="">결제완료 후 <span data-v-33033856="">예약자
											이름</span>으로 바로 <span data-v-33033856="">체크인</span> 하시면 됩니다
									</li>
								</ul>
							</section>
							<!---->
							<input type="submit" class="btn_pay gra_left_right_red"
								data-v-33033856="" value="결제버튼" />
						</div>
						<div class="left" data-v-f785cca6="">
							<!---->
							<div data-v-35b6e85e="" data-v-f785cca6="">
								<section class="info_chkin" data-v-35b6e85e="">
									<h3 style="margin-top: 0;" data-v-35b6e85e="">예약자 정보</h3>
									<strong data-v-35b6e85e="">예약자 이름</strong>
									<p class="inp_wrap remove" data-v-35b6e85e="">
										<input type="text" name="userName" id="userName"
											placeholder="체크인시 필요한 정보입니다." maxlength="20"
											data-v-35b6e85e="" required>
									</p>
									<p data-show="name" class="alert_txt"
										style="visibility: hidden" data-v-35b6e85e="">한글, 영문, 숫자만
										입력 가능. (문자 사이 공백은 1칸만 입력 가능)</p>
									<div data-v-2c1e3bcc="" data-v-35b6e85e="">
										<strong class="mt_09" data-v-2c1e3bcc="">휴대폰 번호</strong> <span
											class="safety_txt" data-v-2c1e3bcc="">개인 정보 보호를 위해
											안심번호로 숙소에 전송됩니다.</span>
										<p class="inp_wrap remove" data-v-35b6e85e="">
											<input type="text" name="hp" id="hp" placeholder="체크인시 필요한 정보입니다."
												maxlength="20" data-v-35b6e85e="" required>
										</p>
									</div>
									<!---->
									<hr class="hr-solid">
									<section class="price_wrap" data-v-3ce5aaac=""
										data-v-f785cca6="">
										<h3 data-v-3ce5aaac="">할인 수단 선택</h3>
										<div class="product-amount" data-v-3ce5aaac="">
											<strong data-v-3ce5aaac="">구매총액</strong><b data-v-3ce5aaac="">${rpMap.TOTAL_PRICE}원</b>
										</div>
										<hr>
										<div class="product-total-service" data-v-3ce5aaac="">
											<strong data-v-3ce5aaac="">상세 결제 내역</strong> <br>
											<div class="product-amount" data-v-3ce5aaac="">
												<span class="addprice" data-v-2c1e3bcc="">성인:
													${rpMap.ADULT}명</span><b data-v-3ce5aaac="">${rpMap.ADULT_KID_PRICE*rpMap.ADULT}원</b>
											</div>
											<div class="product-amount" data-v-3ce5aaac="">
												<span class="addprice" data-v-2c1e3bcc="">아동:
													${rpMap.KID}명</span><b data-v-3ce5aaac="">${rpMap.ADD_KID_PRICE*rpMap.KID}원</b>
											</div>
											<div class="product-amount" data-v-3ce5aaac="">
												<span class="addprice" data-v-2c1e3bcc="">영유아:
													${rpMap.BABY}명</span><b data-v-3ce5aaac="">${rpMap.ADD_BABY_PRICE*rpMap.BABY}원</b>
											</div>
											<div class="product-amount" data-v-3ce5aaac="">
												<span class="addprice" data-v-2c1e3bcc="">포인트 사용</span><b
													data-v-3ce5aaac="" id="usedPoint">0P</b>
											</div>
											<div class="product-amount" data-v-3ce5aaac="">
												<span class="addprice" data-v-2c1e3bcc="">합계</span><b
													class="total" data-v-3ce5aaac=""> <fmt:formatNumber
														value="${rpMap.TOTAL_PRICE}" pattern="#,###" /> 원
												</b>
											</div>
										</div>
										<hr>
										<div class="product-point" data-v-3ce5aaac="">
											<span class="save-point" data-v-2c1e3bcc="">보유포인트:</span> <span
												class="see-point" data-v-2c1e3bcc="" id="savePoint">${rpMap.POINTS == null ? 0 : rpMap.POINTS }P</span>
										</div>
										<div class="discount-container" data-v-3ce5aaac="">
											<div class="discount-header" data-v-3ce5aaac="">
												<button type="button" id="pointBtn"
													class="discount-method-button" data-v-3ce5aaac="">
													포인트 사용 0P</button>
												<div class="discount-point-amount" data-v-3ce5aaac="">
													<div class="value-total" data-v-3ce5aaac="">
														<input type="number" id="point" value="0"
															class="point-input" data-v-3ce5aaac=""> <span
															data-v-3ce5aaac="">P</span>
													</div>
												</div>
											</div>
										</div>
										<!-- 예약상태 -->
														<input  type="hidden" name="status" value="${sMap.STATUS}">
									</section>
								</section>
								<div class="point" style="display: block" data-v-35b6e85e="">

								</div>
								<!---->
							</div>
							<!---->
							<hr class="hr-solid">
							<section class="pay_select" data-v-f785cca6="">
								<h3 data-v-f785cca6="">결제수단 선택</h3>
								<select id="payment-select" class="select_type_1">
									<option data-minprice="0" selected="selected" value="CARD"
										data-v-f785cca6="">선택해주세요</option>
									<option data-minprice="0" value="KAKAO" data-v-f785cca6="">카카오페이</option>
									<option data-minprice="0" value="NAVER" data-v-f785cca6="">
										네이버페이</option>
									<option data-minprice="0" value="CARD" data-v-f785cca6=""
										name="CARD">신용/체크카드</option>
								</select>
								<!---->
								<!---->
							</section>
							<section class="agree" data-v-d63b628c="" data-v-f785cca6="">
								<p class="all_check" data-v-d63b628c="">
									<label data-v-d63b628c="" for="all" class="dong"><input
										type="checkbox" id="all" name="checkAll" class="inp_chk_02"
										data-v-d63b628c=""> <span data-v-d63b628c="">전체
											동의</span></label>
								</p>
								<p data-v-d63b628c="">
									<input type="checkbox" name="checkOne" class="inp_chk_02"
										data-v-d63b628c=""> <span onclick="pop_agree_01();"
										data-v-d63b628c=""><i data-v-d63b628c="">숙소이용규칙 및
											취소/환불규정 동의</i><b data-v-d63b628c=""> (필수)</b></span>
								</p>
								<p data-v-d63b628c="">
									<input type="checkbox" name="checkOne" class="inp_chk_02"
										data-v-d63b628c=""> <span onclick="pop_agree_01();"
										data-v-d63b628c=""><i data-v-d63b628c="">숙소이용규칙 및
											양도/환불규정 동의</i><b data-v-d63b628c=""> (필수)</b></span>
								</p>
								<p data-v-d63b628c="">
									<input type="checkbox" name="checkOne" class="inp_chk_02"
										data-v-d63b628c=""> <span onclick="pop_agree_02();"
										data-v-d63b628c=""><i data-v-d63b628c="">개인정보 수집 및
											이용 동의</i><b data-v-d63b628c=""> (필수)</b></span>
								</p>
								<p data-v-d63b628c="">
									<input type="checkbox" name="checkOne" class="inp_chk_02"
										data-v-d63b628c=""> <span onclick="pop_agree_03();"
										data-v-d63b628c=""><i data-v-d63b628c="">개인정보 제 3자
											제공 동의</i><b data-v-d63b628c=""> (필수) </b></span>
								</p>
							</section>
						</div>
					</div>
				</form>
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
	$(function() {
		const IMP = window.IMP; // 생략 가능
		IMP.init('imp74601630');

		$("#pointBtn").on("click", function() {
			let point = Number($("#point").val());
			let minPoint = Number('${rpMap.POINTS}');
			let totalPrice = Number('${rpMap.TOTAL_PRICE}');
			if (minPoint < point) {
				alert("보유 포인트 이상 사용할 수 없습니다.");
				return false;
			}
			const user = '${authUser}';
			console.log("user: ", user);
			$("#pointBtn").text("포인트 사용 " + point + "P");
			$('#savePoint').text(minPoint - point);
			$("#usedPoint").text("-" + point + " P")
			$('.total').text(moneyFormat(totalPrice - point));

		});
	});
	
	const moneyFormat = (money) => {
		return String(money).replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

	function requestPay(form) {
	
		/* IMP.request_pay({ // param
	          pg: "html5_inicis",
	          pay_method: "card",
	          merchant_uid: "YANGDO"+ new Date().getTime(),
	          name: '${rpMap.PNAME}',
	          amount: 100,
	          buyer_email: "bonjun03@naver.com",
	          buyer_name: $('#userName').val(),
	          buyer_tel: "${rpMap.RHP}"
	      }, function (rsp) { // callback
	    	  if ( rsp.success ) { */
	    	        
	    	        /* msg += '고유ID : ' + rsp.imp_uid;
	    	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	    	        msg += '결제 금액 : ' + rsp.paid_amount;
	    	        msg += '카드 승인번호 : ' + rsp.apply_num; */
	    	        // todo 예약테이블에 insert
	    	        // post요청 submit();
	    	        
	    	        const data = {
	    	        	no: '${rpMap.NO}',
	    	        	name: $('#userName').val(),
	    	        	hp: $('#hp').val(),
	    	        	status: '${rpMap.STATUS}'
	    	        	totalprice: '${rpMap.TOTAL_PRICE}'
	    	        };
	    	        
	    	    	$.ajax({
	    	    		type : "POST",
	    	    		url : "/yangdo/res/reserve", //요청 할 URL
	    	    		contentType : "application/json; charset=utf-8",
	    	    		data : JSON.stringify(data), //넘길 파라미터
	    	    		success : function(data) {
	    	    			console.log("data: ", data);
	    	    			alert("결제가 성공되었습니다.");
	    	    			// location.href = '주소'
	    	    		},
	    	    		error : function(err) {
	    	    			console.log(err + "접속 도중 오류가 발생했습니다."); //에러시 실행 할 내용
	    	    		}
	    	    	});
	    	        
	    /* 	    } else {
	    	        alert("결제가 실패되었습니다.")
	    	    }
	      }); */
		/* let data = '${rpMap}';
		console.log("rpMap:", data);
		console.log("requestPay invoked......")
		console.log("roomPay: ", document.roomPay);
		console.log("allItems: ", $("#roomPay").serialize()); */
	}

	//동의버튼
	$("#all").on("click", function() {
		//전체선택시 전부체크
		if ($("#all").prop("checked")) {
			$("input[type=checkbox]").prop("checked", true);
			// '전체' 선택 해제 시 전부 체크해제
		} else {
			$("input[type=checkbox]").prop("checked", false);
		}
	});

	$(".chk").on("click", function() {
		// 모두 선택되어 있을 때 '전체' 체크
		if ($(".chk:checked").length == $(".chk").length) {
			$("#all").prop("checked", true);
			// 하나라도 체크 해제할 때 '전체' 체크해제
		} else {
			$("#all").prop("checked", false);
		}
	});
</script>
</html>