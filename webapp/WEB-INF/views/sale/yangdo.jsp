<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>양도하기 폼</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/includes/userHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/sale/yand.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>



<body>
	<div id="wrap">
		<!-- 펜션어때 헤더 -->
		<c:import url="/WEB-INF/views/includes/userHeader.jsp"></c:import>
		<!-- 펜션어때 헤더 -->

		<div id="content" class="clearfix">
			<h1>양도 하기</h1>

			<div id="Reservation_num">예약번호 ${sMap.NO}</div>

			<div id="pension" class="clearfix">
				<!-- 펜션이미지 -->
				<img id="pension_image" src="${pageContext.request.contextPath}/upload/${sMap.SAVE_NAME}">

				<!-- 펜션이름 -->
				<div id="pension_pName" class="font-bold">${sMap.PNAME}</div>
				
				<!-- 체크인 체크아웃 -->
				<div id="flex">
					<div class="flex-s">
						<div class="font-size-13 color-dan">체크-인</div>
						<div class="font-size-17">${sMap.CHECK_IN }</div>
					</div>
					<div class="flex-e font-size-17">
						<div class="font-size-13 color-dan">체크-아웃</div>
						<div class="font-size-17">${sMap.CHECK_OUT }</div>
					</div>
				</div>
				
				<!-- 방이름 -->
				<div id="pension_rName" class="font-bold">${sMap.ROOM_NAME }</div>
				<!-- 기준인원 -->
				<div id="pension_people" class="font-bold">기준 ${sMap.STANDARD_PEOPLE }인/ 최대 ${sMap.MAX_PEOPLE}인</div>
			</div>
			<!-- 컨텐츠(숙소) -->

			<div id="pay" class="clearfix">
				<!-- 환불날짜규정 -->
				<div id="refund_table">
					<c:if test="${sMap.REFUND_NO==10}">
						<table id = "pay_refund" border = '1'>
                        		<thead>
                        			<tr>
                        				<th class="text-center">기준날짜</th>
                        				<th class="text-center">10일 전</th>
                        			</tr>
                        		</thead>
                        		<tbody class="text-center">
                        			<tr>
                        				<td id = "rateguide" rowspan = '11'>예약 취소 시 <br> 환불금액 비율</td>
                        				<td>10일 전 : 100%</td>
                        			</tr>
                        			<tr>
                        				<td>9일 전 : 90%</td>
                        			</tr>
                        			<tr>
                        				<td>8일 전 : 80%</td>
                        			</tr>
                        			<tr>
                        				<td>7일 전 : 70%</td>
                        			</tr>
                        			<tr>
                        				<td>6일 전 : 60%</td>
                        			</tr>
                        			<tr>
                        				<td>5일 전 : 50%</td>
                        			</tr>
                        			<tr>
                        				<td>4일 전 : 40%</td>
                        			</tr>
                        			<tr>
                        				<td>3일 전 : 30%</td>
                        			</tr>
                        			<tr>
                        				<td>2일 전 : 20%</td>
                        			</tr>
                        			<tr>
                        				<td>1일 전 : 10%</td>
                        			</tr>
                        			<tr>
                        				<td>숙박일 당일, no-show 환불 불가</td>
                        			</tr>
                        		</tbody>
                        	</table>
                        </c:if>
					<c:if test="${sMap.REFUND_NO == 7 }">
						<table id="pay_refund"  border='1'>
							<thead>
								<tr>
									<th class="text-center">기준날짜</th>
									<th class="text-center">7일 전</th>
								</tr>
							</thead>
							<tbody class="text-center">
								<tr>
									<td id="rateguide" rowspan='8'>예약 취소 시 <br> 환불금액 비율
									</td>
									<td>7일 전 : 100%</td>
								</tr>
								<tr>
									<td>6일 전 : 90%</td>
								</tr>
								<tr>
									<td>5일 전 : 85%</td>
								</tr>
								<tr>
									<td>4일 전 : 80%</td>
								</tr>
								<tr>
									<td>3일 전 : 70%</td>
								</tr>
								<tr>
									<td>2일 전 : 50%</td>
								</tr>
								<tr>
									<td>1일 전 : 30%</td>
								</tr>
								<tr>
									<td>숙박일 당일, no-show 환불 불가</td>
								</tr>
							</tbody>
						</table>
					</c:if>
					
					<c:if test="${sMap.REFUND_NO == 6 }">
						<table id="pay_refund" border='1'>
							<thead>
								<tr>
									<th class="text-center">기준날짜</th>
									<th class="text-center">6일 전</th>
								</tr>
							</thead>
							<tbody class="text-center">
								<tr>
									<td id="rateguide" rowspan='7'>예약 취소 시 <br> 환불금액 비율
									</td>
									<td>6일 전 : 100%</td>
								</tr>
								<tr>
									<td>5일 전 : 90%</td>
								</tr>
								<tr>
									<td>4일 전 : 80%</td>
								</tr>
								<tr>
									<td>3일 전 : 70%</td>
								</tr>
								<tr>
									<td>2일 전 : 50%</td>
								</tr>
								<tr>
									<td>1일 전 : 30%</td>
								</tr>
								<tr>
									<td>숙박일 당일, no-show 환불 불가</td>
								</tr>
							</tbody>
						</table>
					</c:if>
					
				</div> 
				<!-- 인원정보 -->
				<div id="pay_addPerson">
					인원정보
					<div>
						<ul>
							<li id="pay_addPerson_adult">성인 : ${sMap.ADULT }명</li>
							<li id="pay_addPerson_kid">아동 : ${sMap.KID }명</li>
							<li id="pay_addPerson_baby">영유아 : ${sMap.BABY }명</li>
						</ul>
					</div>
				</div>
				
				<!-- 금액설정 -->
				<div id="pay_confirm" class="clearfix">
					<div id="pay_confirm_payment">결제금액: ${sMap.totalPRICE }원</div>
					<div id="refund" class="clearfix">
						<div id="pay_confirm_refund">환불시 금액:&nbsp;</div>
						<div id="refund_pay">${sMap.REFUND_PRICE}원</div>
					</div>
					<input type="text" id="pay_confirm_transfer" name="transPrice" value="" placeholder="양도후 받을 금액을 입력하세요">원
				</div>
				<button id="btn_transfer" type="button">양도 하기</button>
			</div>
			<!-- 컨텐츠(페이) -->



			<!-- 양도자정보 -->
			<div id="person">
				<div id="person_Info">양도자 정보</div>
				<div id="person_name" class="personInfo">이름 : ${sMap.RNAME }</div>
				<div id="person_hp" class="personInfo">연락처 : ${sMap.RHP }</div>
			</div>
			<!-- 컨텐츠(사람) -->
			<!-- 예약상태 -->
			<input type="hidden" name="status" value="${sMap.STATUS}">
			<!-- 환뷸규정 -->
			<div class="caution-field">
				<h3 class="font-size-25 color-dan font-bold">약관 및 정책에 동의해주세요.</h3>
				<div class="height-30"></div>
				<div id="police" class="font-size-12 font-bold">약관 및 정책</div>
				<div id="dongi" class="terms input-group">
					<div class="agree text-left">
						<input type="checkbox" id="all" class="checkbox" autocomplete="off"> <label for="all" class="dong"><span class="check-btn"></span> 전체 동의 <span class="blue">(필수)</span></label>
					</div>
					<div class="agreed text-left">
						<input type="checkbox" id="first_term" name="second_term" class="checkbox chk" data-important="" autocomplete="off"> <label for="first_term" class="dong"><span class="check-btn"></span>
							취소 환불규정을 확인하였습니다.</label>
					</div>
					<div class="agreed text-left">
						<input type="checkbox" id="second_term" name="second_term" class="checkbox chk" data-important="" autocomplete="off"> <label for="second_term" class="dong"><span
							class="check-btn"></span> 양도어때에 등록하신 상품을 다른 곳에서 이중판매 하실 경우 발생한 불이익에 대해서 자사는 책임지지않으며 이미 판매된 예약권에 대한 소유권은 양도어때 고객에게 우선적으로 있음을 동의합니다.</label>
					</div>
					<div class="agreed text-left">
						<input type="checkbox" id="third_term" name="third_term" class="checkbox chk" data-important="" autocomplete="off"> <label for="third_term" class="dong"><span class="check-btn"></span>
							판매등록 후 상품 검수, 양도 시 발생하는 확인절차와 양도절차에 대한 업무는 전적으로 양도어때에 위임함에 동의합니다.</label>
					</div>
				</div>
			</div>
			<!-- 컨텐츠(동의) -->

		</div>
		<!-- 컨텐츠 -->
		<!-- //footer -->
		<c:import url="/WEB-INF/views/includes/userFooter.jsp"></c:import>

	</div>
	<!-- wrap -->



</body>

<!-- Modal -->
<div id="yangdo-modal" class="modal fade">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">양도 확인</h4>
			</div>
			<div class="modal-body">
				<div class="con">
					양도 하시겠습니까?
					<div class="con color-dan">가격: <span id="modalPrice" class="con color-dan"></span>원</div>
				</div>
			</div>
			<form action="${pageContext.request.contextPath}/sale/update" method="get">
				<div class="modal-footer">
					<input type="hidden" name="no" value="${sMap.NO}">
					<input type="hidden" name="Status" value="6">
					<input type="hidden" id="hidPrice" name="transPrice" value="">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button id="yang" type="submit" class="btn btn-danger">양도합니다</button>
				</div>
			</form>
				
			
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->








<script type="text/javascript">

	function isEmpty (value){
		if(value.length == 0 || value == null){
			return true;
		}else{
			return false;
		}
	}
	
	function isNumeric(value){
		var regExp = /^[0-9]+$/g;
		return regExp.test(value);
	}
	
	function currencyFormatter(amount){
		return amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g,',');
	}
	
	$('#pay_confirm_transfer').on('blur',function(){
		var val = $("#pay_confirm_transfer").val();
		console.log(typeof val);
		if(!isEmpty(val) && isNumeric(val)){
			val = currencyFormatter(val);
			$('#pay_confirm_transfer').val(val);
		}
		
	});
	
	
	$("#btn_transfer").on("click", function() {
		console.log("버튼클릭");
		var transPrice = $("[name='transPrice']").val();
		if($(".chk:checked").length != 3){
			alert("동의해주세요");
		}else if(transPrice == '') {
			alert("금액을 입력해 주세요");
		}else{
			$("#modalPrice").text(transPrice);
			$("#hidPrice").val(transPrice);
			$("#yangdo-modal").modal("show");

		}
		
	
	});
	
	
	$("#yang").on("click",function(){
		console.log("콘솔클릭")
		//$("#yangdo-modal").modal("hide");

	});
	/* -- '전체' 선택 시 이벤트 -- */
	$("#all").on("click",function(){
	 //전체선택시 전부체크
		 if ($("#all").prop("checked")) {
		     $("input[type=checkbox]").prop("checked", true);
		 // '전체' 선택 해제 시 전부 체크해제
		 } else {
		     $("input[type=checkbox]").prop("checked", false);
		 }
	});
	 
	
	$(".chk").on("click",function(){
		// 모두 선택되어 있을 때 '전체' 체크
	    if($(".chk:checked").length == $(".chk").length){
	        $("#all").prop("checked", true);
	    // 하나라도 체크 해제할 때 '전체' 체크해제
	    }else{
	        $("#all").prop("checked", false);
	    }
	});
</script>
</html>