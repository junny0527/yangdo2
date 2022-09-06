<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<fmt:parseNumber var="refund_price" type="number" value="${sMap.REFUND_PRICE}" />
<!-- 예약완료이면 -->
<c:if test="${dMap.myVo.status==1}">
	<!-- info -->
	<div class="info">
		<div>
			<i>예약완료</i> <strong>${dMap.myVo.pName}</strong> <span>${dMap.myVo.rName}(기준 ${dMap.myVo.sPple}인 ㆍ 최대 ${dMap.myVo.mPple}인)</span>
		</div>
	</div>
	<!-- info -->

	<!-- detail -->
	<section class="detail">
		<div>
			<p>
				<strong>체크인</strong>${dMap.myVo.checkIn} ㆍ ${dMap.myVo.inTime}
			</p>
			<p>
				<strong>체크아웃</strong>${dMap.myVo.checkOut} ㆍ ${dMap.myVo.outTime}
			</p>
			<p>
				<strong>인원</strong>기준 ${dMap.myVo.sPple}인 ㆍ 최대 ${dMap.myVo.mPple}인
			</p>
		</div>
		<div>
			<p>
				<strong>예약번호</strong>${dMap.myVo.resNo}
			</p>
			<p>
				<strong>예약자 이름</strong>${dMap.myVo.name}
			</p>
			<p>
				<strong>휴대폰 번호</strong>${dMap.myVo.hp} <span class="safety_txt_2">휴대폰 번호는 숙소에 전송되며, 퇴실 후 7일간 보관됩니다. </span>
			</p>
		</div>
		<div class="sub_total">
			<p>
				<strong>결제정보</strong>
			</p>
			<p>
				<strong class="sub_info"> 주문금액 </strong> <b> ${dMap.myVo.orgPrice}원</b>
			</p>
			<p>
				<strong class="sub_info"> 추가금액 </strong> <b> ${dMap.myVo.addPrice}원</b>
			</p>
			<%-- <p>
					<strong class="sub_info"> 할인금액 </strong> <b> ${dMap.myVo.dcPrice}원</b>
				</p> --%>
		</div>
		<div class="total">
			<p>
				<strong>총 결제금액</strong> <b> ${dMap.myVo.tPrice}원</b>
			</p>
		</div>
	</section>

	<a href="tel:${dMap.myVo.comHp}" class="btn_call">전화로 문의하기</a>

	<c:choose>
		<c:when test="${dMap.myVo.pRno == null || dMap.myVo.pRno == 0}">
			<section>
				<div style="padding-top: 0; padding-bottom: 0">
					<div class="booking_detail_section_layout_wrap booking-cancel__section" style="border-bottom: none;">
						<div class="booking-detail-section-title__wrap">
							<!-- <div>
						<div class="sub-title">
							<div class="color-green">2022년 08월 28일 23:59까지 양도 가능합니다.</div>
							<div class="color-red">2022년 08월 24일 23:59까지 무료 취소 가능합니다.</div>
						</div>
					</div> -->
							<!---->
						</div>

						<a href="${pageContext.request.contextPath}/sale?no=${dMap.myVo.resNo}">
							<button type="button" id="btn_relist_confirm" class="btn_flat booking_detail_flat_button color-green">양도하기</button>
						</a>
						<button type="button" id="btn_cancel_confirm" class="btn_flat booking_detail_flat_button color-red btn-danger btn btn-primary"
							data-toggle="modal" data-target="#btn-cancel-modal" data-no="${dMap.myVo.resNo}">예약취소</button>
						<!---->
					</div>
					<!---->
				</div>
				<!---->
			</section>
			<!-- detail -->
		</c:when>
		<c:otherwise>
			<section>
				<div style="padding-top: 0; padding-bottom: 0">
					<div class="booking_detail_section_layout_wrap booking-cancel__section" style="border-bottom: none;">
						<div class="booking-detail-section-title__wrap">
							<!-- <div>
						<div class="sub-title">
							<div class="color-green">2022년 08월 28일 23:59까지 양도 가능합니다.</div>
							<div class="color-red">2022년 08월 24일 23:59까지 무료 취소 가능합니다.</div>
						</div>
					</div> -->
							<!---->
						</div>
						<button type="button" id="btn_cancel_confirm" class="btn_flat booking_detail_flat_button color-red-long btn-danger btn btn-primary"
							data-toggle="modal" data-target="#btn-cancel-modal" data-no="${dMap.myVo.resNo}">예약취소</button>
						<!---->
					</div>
					<!---->
				</div>
				<!---->
			</section>
		</c:otherwise>
	</c:choose>
</c:if>
<c:if test="${dMap.myVo.status==3}">
	<div class="info" style="">
		<div>
			<i class="bg_w">이용완료</i> <strong>${dMap.myVo.pName}</strong> <span>${dMap.myVo.rName}(기준 ${dMap.myVo.sPple}인 / 최대 ${dMap.myVo.mPple}인)</span>
		</div>
	</div>
	<section class="detail">
		<div>
			<p>
				<strong>체크인</strong>${dMap.myVo.checkIn} ㆍ ${dMap.myVo.inTime}
			</p>
			<p>
				<strong>체크아웃</strong>${dMap.myVo.checkOut} ㆍ ${dMap.myVo.outTime}
			</p>
			<p>
				<strong>인원</strong>기준 ${dMap.myVo.sPple}인 ㆍ 최대 ${dMap.myVo.mPple}인
			</p>
		</div>
		<div>
			<p>
				<strong>예약번호</strong>${dMap.myVo.resNo}
			</p>
			<p>
				<strong>예약자 이름</strong>${dMap.myVo.name}
			</p>
			<p>
				<strong>휴대폰 번호</strong>${dMap.myVo.hp} <span class="safety_txt_2">휴대폰 번호는 숙소에 전송되며, 퇴실 후 7일간 보관됩니다. </span>
			</p>
		</div>
		<div class="sub_total">
			<p>
				<strong>결제정보</strong>
			</p>
			<p>
				<strong class="sub_info"> 주문금액 </strong> <b> ${dMap.myVo.orgPrice}원</b>
			</p>
			<p>
				<strong class="sub_info"> 추가금액 </strong> <b> ${dMap.myVo.addPrice}원</b>
			</p>
			<%-- <p>
			<strong class="sub_info"> 할인금액 </strong> <b> ${dMap.myVo.dcPrice}원</b>
		</p> --%>
		</div>
		<div class="total">
			<p>
				<strong>총 이용금액</strong> <b> ${dMap.myVo.tPrice}원</b>
			</p>
		</div>
	</section>
	<c:choose>
		<c:when test="${dMap.check==1}">
			<section>
				<div style="padding-top: 0; padding-bottom: 0">
					<div class="booking_detail_section_layout_wrap booking-cancel__section" style="border-bottom: none;">
						<a href="${pageContext.request.contextPath}/reservation?pensionNo=${dMap.myVo.pNo}&datepicker=${dMap.myVo.inDate}&datepicker2=">
							<button type="button" class="btn_flat btn-green booking_detail_flat_button color-green-long">리뷰 보기</button>
						</a>
					</div>
				</div>
			</section>
		</c:when>
		<c:otherwise>
			<section>
				<div style="padding-top: 0; padding-bottom: 0">
					<div class="booking_detail_section_layout_wrap booking-cancel__section" style="border-bottom: none;">
						<a href="${pageContext.request.contextPath}/my/review?resNo=${dMap.myVo.resNo}">
							<button type="button" class="btn_flat btn-green booking_detail_flat_button color-red-long">리뷰 남기기</button>
						</a>
					</div>
				</div>
			</section>
		</c:otherwise>
	</c:choose>
</c:if>
<c:if test="${dMap.myVo.status==4}">
	<div class="info" style="">
		<div>
			<i class="bg_w">예약취소</i> <strong>${dMap.myVo.pName}</strong> <span>${dMap.myVo.rName}(기준 ${dMap.myVo.sPple}인 / 최대 ${dMap.myVo.mPple}인)</span>
		</div>
	</div>

	<section class="detail">
		<div>
			<p>
				<strong>체크인</strong>${dMap.myVo.checkIn} ㆍ ${dMap.myVo.inTime}
			</p>
			<p>
				<strong>체크아웃</strong>${dMap.myVo.checkOut} ㆍ ${dMap.myVo.outTime}
			</p>
			<p>
				<strong>인원</strong>기준 ${dMap.myVo.sPple}인 ㆍ 최대 ${dMap.myVo.mPple}인
			</p>
		</div>
		<div>
			<p>
				<strong>예약번호</strong>${dMap.myVo.resNo}
			</p>
			<p>
				<strong>예약자 이름</strong>${dMap.myVo.name}
			</p>
			<p>
				<strong>휴대폰 번호</strong>${dMap.myVo.hp} <span class="safety_txt_2">휴대폰 번호는 숙소에 전송되며, 퇴실 후 7일간 보관됩니다. </span>
			</p>
		</div>
		<div class="sub_total">
			<p>
				<strong>결제정보</strong>
			</p>
			<p>
				<strong class="sub_info"> 결제금액 </strong> <b> ${dMap.myVo.tPrice}원</b>
			</p>
			<p>
				<strong class="sub_info"> 주문금액 </strong> <b> ${dMap.myVo.orgPrice}원 </b>
			</p>
			<p>
				<strong class="sub_info"> 추가금액 </strong> <b> ${dMap.myVo.addPrice}원</b>
			</p>
			<p>
				<strong class="sub_info"> 취소수수료 </strong> <b> ${sMap.REFUND_PRICE}원</b>
			</p>
		</div>
		<div class="total">
			<p>
				<strong>총 환불금액</strong> <b class="col_mint"> ${sMap.cancelPRICE}원 </b>
			</p>
		</div>
	</section>
	<section>
		<div style="padding-top: 0; padding-bottom: 0">
			<div class="booking_detail_section_layout_wrap booking-cancel__section" style="border-bottom: none;">
				<!---->
				<a href="${pageContext.request.contextPath}/reservation?pensionNo=${dMap.myVo.pNo}&datepicker=${dMap.myVo.inDate}&datepicker2=">
					<button type="button" class="btn_flat btn-green booking_detail_flat_button color-green-long">다시 예약</button>
				</a>
			</div>
			<!---->
			<!---->
		</div>
	</section>
</c:if>
<c:if test="${dMap.myVo.status==6}">
	<div class="info" style="">
		<div>
			<i>양도대기</i> <strong>${dMap.myVo.pName}</strong> <span>${dMap.myVo.rName}(기준 ${dMap.myVo.sPple}인 최대 ${dMap.myVo.mPple}인)</span>
		</div>
	</div>

	<section class="detail">
		<div>
			<p>
				<strong>체크인</strong>${dMap.myVo.checkIn} ㆍ ${dMap.myVo.inTime}
			</p>
			<p>
				<strong>체크아웃</strong>${dMap.myVo.checkOut} ㆍ ${dMap.myVo.outTime}
			</p>
			<p>
				<strong>인원</strong>기준 ${dMap.myVo.sPple}인 ㆍ 최대 ${dMap.myVo.mPple}인
			</p>
		</div>
		<div>
			<p>
				<strong>예약번호</strong>${dMap.myVo.resNo}
			</p>
			<p>
				<strong>예약자 이름</strong>${dMap.myVo.name}
			</p>
			<p>
				<strong>휴대폰 번호</strong>${dMap.myVo.hp} <span class="safety_txt_2">휴대폰 번호는 숙소에 전송되며, 퇴실 후 7일간 보관됩니다. </span>
			</p>
		</div>
		<div class="sub_total">
			<p>
				<strong>결제정보</strong>
			</p>
			<p>
				<strong class="sub_info"> 결제금액 </strong> <b> ${dMap.myVo.tPrice}원</b>
			</p>
			<p>
				<strong class="sub_info"> 주문금액 </strong> <b> ${dMap.myVo.orgPrice}원</b>
			</p>
			<p>
				<strong class="sub_info"> 추가금액 </strong> <b> ${dMap.myVo.addPrice}원</b>
			</p>
			<p>
				<strong class="sub_info"> 취소수수료 </strong> <b>${sMap.REFUND_PRICE}원 </b>
			</p>
		</div>
		<div class="total">
			<p>
				<strong>양도금액</strong> <b class="col_mint"> ${dMap.myVo.trPrice}원</b>
			</p>
		</div>
	</section>

	<a href="tel:${dMap.myVo.comHp}" class="btn_call">전화로 문의하기</a>
	<section>
		<div style="padding-top: 0; padding-bottom: 0">
			<div class="booking_detail_section_layout_wrap booking-cancel__section" style="border-bottom: none;">
				<div class="booking-detail-section-title__wrap">
					<!---->
				</div>
				<a href="${pageContext.request.contextPath}/reservation?pensionNo=${dMap.myVo.pNo}&datepicker=${dMap.myVo.inDate}&datepicker2=">
					<button type="button" class="btn_flat btn-green booking_detail_flat_button color-green-long">양도내역 확인하기</button>
				</a>
				<!---->
				<!---->
			</div>
		</div>
		<!---->
	</section>
</c:if>
<c:if test="${dMap.myVo.status==5}">
	<div class="info" style="">
		<div>
			<i class="bg_w">양도완료</i> <strong>${dMap.myVo.pName}</strong> <span>${dMap.myVo.rName}(기준 ${dMap.myVo.sPple}인 최대 ${dMap.myVo.mPple}인)</span>
		</div>
	</div>
	<section class="detail">
		<div>
			<p>
				<strong>체크인</strong>${dMap.myVo.checkIn} ㆍ ${dMap.myVo.inTime}
			</p>
			<p>
				<strong>체크아웃</strong>${dMap.myVo.checkOut} ㆍ ${dMap.myVo.outTime}
			</p>
			<p>
				<strong>인원</strong>기준 ${dMap.myVo.sPple}인 ㆍ 최대 ${dMap.myVo.mPple}인
			</p>
		</div>
		<div>
			<p>
				<strong>예약번호</strong>${dMap.myVo.resNo}
			</p>
			<p>
				<strong>예약자 이름</strong>${dMap.myVo.name}
			</p>
			<p>
				<strong>휴대폰 번호</strong>${dMap.myVo.hp} <span class="safety_txt_2">휴대폰 번호는 숙소에 전송되며, 퇴실 후 7일간 보관됩니다. </span>
			</p>
		</div>
		<div class="sub_total">
			<p>
				<strong>결제정보</strong>
			</p>
			<p>
				<strong class="sub_info"> 결제금액 </strong> <b> ${dMap.myVo.tPrice}원</b>
			</p>
			<p>
				<strong class="sub_info"> 주문금액 </strong> <b> ${dMap.myVo.orgPrice}원</b>
			</p>
			<p>
				<strong class="sub_info"> 추가금액 </strong> <b> ${dMap.myVo.addPrice}원</b>
			</p>
		</div>
		<div class="total">
			<p>
				<strong>양도 체결 금액</strong> <b> ${dMap.myVo.trPrice}원</b>
			</p>
		</div>
	</section>
	<a href="tel:${dMap.myVo.comHp}" class="btn_call">전화로 문의하기</a>
	<section>
		<div style="padding-top: 0; padding-bottom: 0">
			<div class="booking_detail_section_layout_wrap booking-cancel__section" style="border-bottom: none;">
				<div class="booking-detail-section-title__wrap">
					<!---->
				</div>
				<a href="${pageContext.request.contextPath}/main">
					<button type="button" class="btn_flat btn-green booking_detail_flat_button color-green-long">메인으로 이동하기</button>
				</a>
				<!---->
				<!---->
			</div>
		</div>
		<!---->
	</section>
</c:if>