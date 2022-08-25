<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach var="myVo" items="${myVo}">
	<!-- 예약완료이면 -->
	<c:if test="${myVo.status==1}">
		<!-- info -->
		<div class="info">
			<div>
				<i>예약완료</i> <strong>${myVo.pName}</strong> <span>${myVo.rName}(기준
					${myVo.sPple}인 ㆍ 최대 ${myVo.mPple}인)</span>
			</div>
		</div>
		<!-- info -->

		<!-- detail -->
		<section class="detail">
			<div>
				<p>
					<strong>체크인</strong>${myVo.checkIn} ㆍ ${myVo.inTime}
				</p>
				<p>
					<strong>체크아웃</strong>${myVo.checkOut} ㆍ ${myVo.outTime}
				</p>
				<p>
					<strong>인원</strong>기준 ${myVo.sPple}인 ㆍ 최대 ${myVo.mPple}인
				</p>
			</div>
			<div>
				<p>
					<strong>예약번호</strong>${myVo.resNo}
				</p>
				<p>
					<strong>예약자 이름</strong>${myVo.name}
				</p>
				<p>
					<strong>휴대폰 번호</strong>${myVo.hp} <span class="safety_txt_2">휴대폰
						번호는 숙소에 전송되며, 퇴실 후 7일간 보관됩니다. </span>
				</p>
			</div>
			<div class="sub_total">
				<p>
					<strong>결제정보</strong>
				</p>
				<p>
					<strong class="sub_info"> 주문금액 </strong> <b> ${myVo.tPrice}원</b>
				</p>
				<%-- <p>
			<strong class="sub_info"> 추가금액 </strong> <b> ${myVo.exPrice}원</b>
		</p>
		<p>
			<strong class="sub_info"> 할인금액 </strong> <b> ${myVo.dcPrice}원</b>
		</p> --%>
			</div>
			<div class="total">
				<p>
					<strong>총 결제금액</strong> <b> ${myVo.tPrice}원</b>
				</p>
			</div>
		</section>

		<a href="" class="btn_call">전화로 문의하기</a>

		<section>
			<div style="padding-top: 0; padding-bottom: 0">
				<div
					class="booking_detail_section_layout_wrap booking-cancel__section"
					style="border-bottom: none;">
					<div class="booking-detail-section-title__wrap">
						<div>
							<!---->
							<div class="sub-title">
								<div class="color-green">2022년 08월 28일 23:59까지 양도 가능합니다.</div>
								<div class="color-red">2022년 08월 24일 23:59까지 무료 취소 가능합니다.</div>
								<!---->
							</div>
						</div>
						<!---->
					</div>
					<a href="${pageContext.request.contextPath}/sale?no=${myVo.resNo}">
						<button type="button" id="btn_relist_confirm"
							class="btn_flat booking_detail_flat_button color-green">양도하기</button>
					</a>
					<button type="button" id="btn_cancel_confirm"
						class="btn_flat booking_detail_flat_button color-red btn-danger btn btn-primary"
						data-toggle="modal" data-target="#btn-cancel-modal">예약취소
					</button>
					<!---->
				</div>
				<!---->
			</div>
			<!---->
		</section>
		<!-- detail -->
	</c:if>
	<c:if test="${myVo.status==3}">
		<div class="info" style="">
			<div>
				<i class="bg_w">이용완료</i> <strong>${myVo.pName}</strong> <span>${myVo.rName}(기준
					${myVo.sPple}인 / 최대 ${myVo.mPple}인)</span>
			</div>
		</div>
		<section class="detail">
			<div>
				<p>
					<strong>체크인</strong>${myVo.checkIn} ㆍ ${myVo.inTime}
				</p>
				<p>
					<strong>체크아웃</strong>${myVo.checkOut} ㆍ ${myVo.outTime}
				</p>
				<p>
					<strong>인원</strong>기준 ${myVo.sPple}인 ㆍ 최대 ${myVo.mPple}인
				</p>
			</div>
			<div>
				<p>
					<strong>예약번호</strong>${myVo.resNo}
				</p>
				<p>
					<strong>예약자 이름</strong>${myVo.name}
				</p>
				<p>
					<strong>휴대폰 번호</strong>${myVo.hp} <span class="safety_txt_2">휴대폰
						번호는 숙소에 전송되며, 퇴실 후 7일간 보관됩니다. </span>
				</p>
			</div>
			<div class="sub_total">
				<p>
					<strong>결제정보</strong>
				</p>
				<p>
					<strong class="sub_info"> 주문금액 </strong> <b> ${myVo.tPrice}원</b>
				</p>
				<%-- <p>
			<strong class="sub_info"> 추가금액 </strong> <b> ${myVo.exPrice}원</b>
		</p>
		<p>
			<strong class="sub_info"> 할인금액 </strong> <b> ${myVo.dcPrice}원</b>
		</p> --%>
			</div>
			<div class="total">
				<p>
					<strong>총 결제금액</strong> <b> ${myVo.tPrice}원</b>
				</p>
			</div>
		</section>
		<section>
			<div style="padding-top: 0; padding-bottom: 0">
				<div
					class="booking_detail_section_layout_wrap booking-cancel__section"
					style="border-bottom: none;">
					<button type="button"
						class="btn_flat btn-green booking_detail_flat_button color-red-long">리뷰
						남기기</button>
				</div>
			</div>
		</section>
	</c:if>
	<c:if test="${myVo.status==4}">
		<div class="info" style="">
			<div>
				<i class="bg_w">예약취소</i> <strong>${myVo.pName}</strong> <span>${myVo.rName}(기준
					${myVo.sPple}인 / 최대 ${myVo.mPple}인)</span>
			</div>
		</div>

		<section class="detail">
			<div>
				<p>
					<strong>체크인</strong>${myVo.checkIn} ㆍ ${myVo.inTime}
				</p>
				<p>
					<strong>체크아웃</strong>${myVo.checkOut} ㆍ ${myVo.outTime}
				</p>
				<p>
					<strong>인원</strong>기준 ${myVo.sPple}인 ㆍ 최대 ${myVo.mPple}인
				</p>
			</div>
			<div>
				<p>
					<strong>예약번호</strong>${myVo.resNo}
				</p>
				<p>
					<strong>예약자 이름</strong>${myVo.name}
				</p>
				<p>
					<strong>휴대폰 번호</strong>${myVo.hp} <span class="safety_txt_2">휴대폰
						번호는 숙소에 전송되며, 퇴실 후 7일간 보관됩니다. </span>
				</p>
			</div>
			<div class="sub_total">
				<p>
					<strong>결제정보</strong>
				</p>
				<p>
					<strong class="sub_info"> 취소금액 </strong> <b> ${myVo.tPrice}원</b>
				</p>
				<%-- <p>
			<strong class="sub_info"> 추가금액 </strong> <b> ${myVo.exPrice}원</b>
		</p>
		<p>
			<strong class="sub_info"> 할인금액 </strong> <b> ${myVo.dcPrice}원</b>
		</p> --%>
			</div>
			<div class="total">
				<p>
					<strong>총 결제금액</strong> <b> ${myVo.tPrice}원</b>
				</p>
			</div>
		</section>
		<section>
			<div style="padding-top: 0; padding-bottom: 0">
				<div
					class="booking_detail_section_layout_wrap booking-cancel__section"
					style="border-bottom: none;">
					<!---->
					<button type="button"
						class="btn_flat btn-green booking_detail_flat_button color-green-long">다시
						예약</button>
				</div>
				<!---->
				<!---->
			</div>
		</section>
	</c:if>
	<c:if test="${myVo.status==6}">
		<div class="info" style="">
			<div>
				<i>양도대기</i> <strong>${myVo.pName}</strong> <span>${myVo.rName}(기준
					${myVo.sPple}인 최대 ${myVo.mPple}인)</span>
			</div>
		</div>

		<section class="detail">
			<div>
				<p>
					<strong>체크인</strong>${myVo.checkIn} ㆍ ${myVo.inTime}
				</p>
				<p>
					<strong>체크아웃</strong>${myVo.checkOut} ㆍ ${myVo.outTime}
				</p>
				<p>
					<strong>인원</strong>기준 ${myVo.sPple}인 ㆍ 최대 ${myVo.mPple}인
				</p>
			</div>
			<div>
				<p>
					<strong>예약번호</strong>${myVo.resNo}
				</p>
				<p>
					<strong>예약자 이름</strong>${myVo.name}
				</p>
				<p>
					<strong>휴대폰 번호</strong>${myVo.hp} <span class="safety_txt_2">휴대폰
						번호는 숙소에 전송되며, 퇴실 후 7일간 보관됩니다. </span>
				</p>
			</div>
			<div class="sub_total">
				<p>
					<strong>결제정보</strong>
				</p>
				<p>
					<strong class="sub_info"> 주문금액 </strong> <b> ${myVo.tPrice}원</b>
				</p>
				<%-- <p>
			<strong class="sub_info"> 추가금액 </strong> <b> ${myVo.exPrice}원</b>
		</p>
		<p>
			<strong class="sub_info"> 할인금액 </strong> <b> ${myVo.dcPrice}원</b>
		</p> --%>
			</div>
			<div class="total">
				<p>
					<strong>총 결제금액</strong> <b> ${myVo.tPrice}원</b>
				</p>
			</div>
		</section>

		<a href="" class="btn_call">전화로 문의하기</a>
		<section>
			<div style="padding-top: 0; padding-bottom: 0">
				<div
					class="booking_detail_section_layout_wrap booking-cancel__section"
					style="border-bottom: none;">
					<div class="booking-detail-section-title__wrap">
						<!---->
					</div>
					<button type="button"
						class="btn_flat btn-green booking_detail_flat_button color-green-long">양도내역
						확인하기</button>
					<!---->
					<!---->
				</div>
			</div>
			<!---->
		</section>
	</c:if>
	<c:if test="${myVo.status==5}">
		<div class="info" style="">
			<div>
				<i class="bg_w">양도완료</i> <strong>${myVo.pName}</strong> <span>${myVo.rName}(기준
					${myVo.sPple}인 최대 ${myVo.mPple}인)</span>
			</div>
		</div>
		<section class="detail">
			<div>
				<p>
					<strong>체크인</strong>${myVo.checkIn} ㆍ ${myVo.inTime}
				</p>
				<p>
					<strong>체크아웃</strong>${myVo.checkOut} ㆍ ${myVo.outTime}
				</p>
				<p>
					<strong>인원</strong>기준 ${myVo.sPple}인 ㆍ 최대 ${myVo.mPple}인
				</p>
			</div>
			<div>
				<p>
					<strong>예약번호</strong>${myVo.resNo}
				</p>
				<p>
					<strong>예약자 이름</strong>${myVo.name}
				</p>
				<p>
					<strong>휴대폰 번호</strong>${myVo.hp} <span class="safety_txt_2">휴대폰
						번호는 숙소에 전송되며, 퇴실 후 7일간 보관됩니다. </span>
				</p>
			</div>
			<div class="sub_total">
				<p>
					<strong>결제정보</strong>
				</p>
				<p>
					<strong class="sub_info"> 주문금액 </strong> <b> ${myVo.tPrice}원</b>
				</p>
				<%-- <p>
			<strong class="sub_info"> 추가금액 </strong> <b> ${myVo.exPrice}원</b>
		</p>
		<p>
			<strong class="sub_info"> 할인금액 </strong> <b> ${myVo.dcPrice}원</b>
		</p> --%>
			</div>
			<div class="total">
				<p>
					<strong>총 결제금액</strong> <b> ${myVo.tPrice}원</b>
				</p>
			</div>
		</section>
		<a href="" class="btn_call">전화로 문의하기</a>
		<section>
			<div style="padding-top: 0; padding-bottom: 0">
				<div
					class="booking_detail_section_layout_wrap booking-cancel__section"
					style="border-bottom: none;">
					<div class="booking-detail-section-title__wrap">
						<!---->
					</div>
					<button type="button"
						class="btn_flat btn-green booking_detail_flat_button color-green-long">메인으로
						이동하기</button>
					<!---->
					<!---->
				</div>
			</div>
			<!---->
		</section>
	</c:if>
</c:forEach>