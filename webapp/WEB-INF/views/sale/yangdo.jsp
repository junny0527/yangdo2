<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/sale/yand.css">
<body>
   <div id="wrap">
         <!-- 펜션어때 헤더 -->
         <c:import url="/WEB-INF/views/includes/header(user).jsp"></c:import>
         <!-- 펜션어때 헤더 -->
         
          <div id="content" class="clearfix">
             <h1>양도 하기</h1>
             
             <div id="Reservation_num" >예약번호 12831293128390</div>
             
             <div id="pension" class="clearfix">
	             <img id="pension_image" src="${pageContext.request.contextPath}/assets/image/sale/wow.png" >
	             
	             <div id="pension_pName" class="font-bold">대성리해오름</div>
             
	             <div id="flex">
	             	<div class="flex-s">
                        <div class="font-size-13 color-dan">체크-인</div>
                        <div class="font-size-17">
                            2022-09-18  15:00                      </div>
                    </div>
                    <div class="flex-e font-size-17">
                        <div class="font-size-13 color-dan">체크-아웃</div>
                        <div class="font-size-17">
                            2022-09-19  11:00                      </div>
                    </div>
	             </div>
	             
	             <div id="pension_rName" class="font-bold">해오름</div>
	             
	             <div id="pension_people" class="font-bold">기준 15인/ 최대 30인</div>
             </div>
             <!-- 컨텐츠(숙소) -->
             
             <div id="pay">
             	<div id="pay_refund">	
             		<table>
             			<tr>
             				<td>10일전:100%</td>
             			</tr>
             			<tr>
             				<td>9일전:90%</td>
             			</tr>
             			<tr>
             				<td>8일전:80%</td>
             			</tr>
             			<tr>
             				<td>7일전:70%</td>
             			</tr>
             			<tr>
             				<td>6일전:60%</td>
             			</tr>
             			<tr>
             				<td>5일전:50%</td>
             			</tr>
             			<tr>
             				<td>4일전:40%</td>
             			</tr>
             			<tr>
             				<td>3일전:30%</td>
             			</tr>
             			<tr>
             				<td>2일전:20%</td>
             			</tr>
             			<tr>
             				<td>1일전:10%</td>
             			</tr>
             			
             			<tr>
             				<td>숙박일 당일 및 No-show: 불가</td>
             			</tr>
             			<tr>
             				<td colspan="2">취소, 환불 시 수수료가 발생할 수 있습니다.</td>
             				<td></td>
             			</tr>
             		</table>
             	</div> 
				<div id="pay_addPerson">
					추가인원
					<div>
						<ul>
							<li id="pay_addPerson_adult">성인 : 4명</li>
							<li id="pay_addPerson_kid">아동 : 0명</li>
							<li id="pay_addPerson_baby">영유아 : 0명</li>
						</ul>
					</div>
				</div>
				
				<div id="pay_confirm" class="clearfix">
					<div id="pay_confirm_payment">결제가격: 1,000,000,000원</div>
					<div id="refund">	
						<div id="pay_confirm_refund">환불할시 받을 가격: </div>
						<div id="refund_pay" class="text-right">10,000,000원</div>
					</div>
					<input type="text" id="pay_confirm_transfer" name="" value="" placeholder="양도후 받을 금액을 입력하세요">원
				</div>
				<button id="btn_transfer" type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop">양도 하기</button>
             </div>
             <!-- 컨텐츠(페이) -->
             
             
             
             
             <div id="person">
             	<div id="person_Info">양도자 정보</div>
             	<div id="person_name" class="personInfo">이름 : 김민규</div>
             	<div id="person_hp" class="personInfo">연락처 : 010-1234-1234</div>
             </div>
              <!-- 컨텐츠(사람) -->
           	<div class="caution-field">
                  <h3 class="font-size-25 color-dan font-bold">
                      약관 및 정책에 동의해주세요.
                  </h3>
                  <div class="height-30"></div>
                  <div id="police" class="font-size-12 font-bold">
                      약관 및 정책
                  </div>
                  <div id="dongi" class="terms input-group" >
                      <div class="agree text-left" >
                          <input type="checkbox" id="all" class="checkbox" autocomplete="off">
                          <label for="all" class="dong"><span class="check-btn"></span> 전체 동의 <span class="blue">(필수)</span></label>
                      </div>
                      <div class="agreed text-left" >
                          <input type="checkbox" id="first_term" name="second_term" class="checkbox chk" data-important="" autocomplete="off">
                          <label for="first_term" class="dong"><span class="check-btn"></span> 취소 환불규정을 확인하였습니다.</label>
                      </div>
                      <div class="agreed text-left" >
                          <input type="checkbox" id="second_term" name="second_term" class="checkbox chk" data-important="" autocomplete="off">
                          <label for="second_term" class="dong"><span class="check-btn"></span> 양도어때에 등록하신 상품을 다른 곳에서 이중판매 하실 경우 발생한 불이익에 대해서 자사는 책임지지않으며 이미 판매된 예약권에 대한 소유권은 양도어때 고객에게 우선적으로 있음을 동의합니다.</label>
                      </div>
                      <div class="agreed text-left" >
                          <input type="checkbox" id="third_term" name="third_term" class="checkbox chk" data-important="" autocomplete="off">
                          <label for="third_term" class="dong"><span class="check-btn"></span> 판매등록 후 상품 검수, 양도 시 발생하는 확인절차와 양도절차에 대한 업무는 전적으로 양도어때에 위임함에 동의합니다.</label>
                      </div>
                  </div>
              </div>
             <!-- 컨텐츠(동의) -->
           
          </div>
         <!-- 컨텐츠 -->
         
      <!-- //footer -->
      <c:import url="/WEB-INF/views/includes/footer(user).jsp"></c:import>
      
  </div>
	<!-- wrap -->


<!-- Modal -->
<div class="modal fade" id="Modal-yang" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">양도 확인</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="con">양도 하시겠습니까? 
       		<div class="con color-dan">
       			가격: 10,000,000,000원
       		</div> 
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
        <button type="button" class="btn btn-danger">양도합니다</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="agree-Modal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">동의 체크</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="con">동의체크 미체크 되어있습니다
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-danger">확인</button>
      </div>
    </div>
  </div>
</div>

</body>

<script type="text/javascript">
	
$("#btn_transfer").on("click",function(){
	console.log("버튼클릭");
	$("#Modal-yang").modal("show");
});
	
	
</script>
</html>