<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 관리</title>
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/assets/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/hostHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/roomreg.css">

<body>
<!-- 펜션어때 헤더 -->

<div id="wrap">
	<div id="header" class="clearfix">
		<div id="section">
			<h1><a href="">양도어때HOST</a></h1>
			<ul class="clearfix">
				<li><a href=""><img src="${pageContext.request.contextPath}/assets/img/mypageIcon.png"> 마이페이지</a></li>
				<li><a href=""><img src="${pageContext.request.contextPath}/assets/img/logout.png"> 로그아웃</a></li>
			</ul>
		</div>
	</div>
</div>
<!-- 펜션어때 헤더 -->

<!-- nav -->
<div id = "nav" class = "center-block">
	<ul>
		<li><a href="">예약관리</a>
			<!-- 
			<ul id = "onHover">
				<li><a href="">예약내역</a></li>
				<li><a href="">정산 및 매출내역</a></li>
				<li><a href="">리뷰관리</a></li>
			</ul>
			 -->
		</li>
		<li><a href="">객실관리</a></li>
		<li><a href="">숙소관리</a>
			<!--  
			<ul id = "onHover">
				<li><a href="">소개작성</a></li>
				<li><a href="">이용규칙관리</a></li>
			</ul>
			-->
		</li>
		<li><a href="">고객센터</a>
			<!-- 
			<ul id = "onHover">
				<li><a href = "">공지사항</a></li>
				<li><a href = "">자주묻는질문</a></li>
				<li><a href = "">서비스 약관</a></li>
			</ul>
			 -->
		</li>
	</ul>
</div>
<!-- nav -->


<div id = "container">
	
	<div id = "process" class = "center-block">
		<ul>
			<li class="imgs">
				<a href="${pageContext.request.contextPath}/host/mypagereg"><span><img src="${pageContext.request.contextPath}/assets/img/mypage.png"></span>
				<span>마이페이지 입력</span></a>
			</li>
			<li class="prog">
				<br>
				<span class="do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class="do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class="do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class="do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class="do">&nbsp;</span>
				<span>&nbsp;</span>
			</li>
			<li class="imgs">
				<a href="${pageContext.request.contextPath}/host/introreg"><span><img src="${pageContext.request.contextPath}/assets/img/introduce.png"></span>
				<span>소개작성</span></a>
			</li>
			<li class="prog">
				<br>
				<span class="do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class="do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class="do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class="do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class="do">&nbsp;</span>
				<span>&nbsp;</span>
			</li>
			<li class="imgs">
				<a href="${pageContext.request.contextPath}/host/rules"><span><img src="${pageContext.request.contextPath}/assets/img/rules.png"></span>
				<span>이용규칙 관리</span></a>
			</li>
			<li class="prog">
				<br>
				<span class="do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class="do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class="do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class="do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class="do">&nbsp;</span>
				<span>&nbsp;</span>
			</li>
			<li class="imgs">
				<a href="${pageContext.request.contextPath}/host/roomreg"><span><img src="${pageContext.request.contextPath}/assets/img/room.png" class="active"></span>
				<span>객실 관리</span></a>
			</li>
		</ul>
	</div>
	
	<!-- 내용 시작 -->
	<!-- 객실 추가 -->
	<div id = "addroom" class = "center-block">
		<div class="guest_nav">
			<ul class="nav nav-tabs room-tabs">
				<li>
					<a href="">저장된 객실명</a>
				</li>
				<li>
					<a href="" id = "moreroom">+ 객실 추가</a>
				</li>
			</ul>
		</div>
		<div class="guest-title-layer">
			<ul id = "design">
				<li class = "instruction">[+ 객실추가]를 누르시면 객실을 추가할 수 있으며 최대 개수는 20개 입니다.</li>
				<li class = "instruction">요금설정에서는 요일이 겹치지 않게 주의해 주시기 바랍니다.</li>
				<li class = "instruction">해당 페이지의 요금 설정은 객실별 기준 가격입니다.</li>
				<li class = "instruction">객실별 판매 금액 수정은 등록 이후 '객실관리' 메뉴에서 가능합니다.</li>
				<li class = "instruction">[객실정보 복사추가]를 누르시면 선택하신 객실의 정보를 복사하여 추가 하실수 있습니다.</li>
			</ul>
			<div class = "room-copy-layer">
				<button type="button" class = "btn btn-primary">객실정보 복사추가</button>
			</div>
		</div>
		
	</div>
	<!-- 객실 추가 -->
	<!-- 객실정보 폼 -->
		<form id="room_form" class="form-horizontal">
			<table class="table resize">
				<tbody>
					<tr>
						<th>객실 정보</th>
						<td class="bd_r_none">
							<div class="form-layer mb_24">
								<span class="form-title">객실명</span>
								<span class="form-body">
									<input class="form-control normal-size" type="text" name="armgname" placeholder="이름을 입력하세요." maxlength="30" value="">
								</span>
							</div>
							
							<div class="form-layer mb_24">
								<span class="form-title">기준인원</span>
								<span class="form-body">
									<div class="select-style middle-size">
										<select name="room_type">
											<option value="" selected="selected" class="text-center">인원을 선택해주세요</option>
											<option value="2">2명</option>
											<option value="3">3명</option>
											<option value="4">4명</option>
											<option value="5">5명</option>
											<option value="6">6명</option>
											<option value="7">7명</option>
											<option value="8">8명</option>
											<option value="9">9명</option>
											<option value="10">10명</option>
										</select>
									</div>
								</span>
							</div>
							
							<div class="form-layer mb_24">
								<span class="form-title">최대인원</span>
								<span class="form-body">
									<div class="select-style middle-size">
										<select name="room_type">
											<option value="" selected="selected" class="text-center">인원을 선택해주세요</option>
											<option value="4">4명</option>
											<option value="5">5명</option>
											<option value="6">6명</option>
											<option value="7">7명</option>
											<option value="8">8명</option>
											<option value="9">9명</option>
											<option value="10">10명</option>
										</select>
									</div>
								</span>
							</div>
						</td>
						<td class = "border_right">
						</td>
					</tr>
					
					<tr>
						<th>객실 이미지<br>(최대 15장)</th>
						<td class="bd_r_none">
							<div class="form-layer mb_24">
								<p class = "order text-normal">* 객실의 전반적인 이미지를 업로드 해주시기 바랍니다.</p>
								<p class = "order text-normal">* 이미지 교체를 원하시면 "변경"을 선택하시고 삭제를 원하시면 우측 "삭제"를 선택하시기 바랍니다.</p>
								<p class = "order text-normal">* 이미지 장소는 짧게 기입해주시기 바랍니다. 예시) 객실명, 침대, 화장실 등</p>
								<p class = "order text-normal">* 첫 이미지가 메인 이미지입니다.</p>
							</div>
							
							<div class="form-layer mb_15">
								<ul id="room-images">
									<li class="backgrou">
										<input type="hidden" name="adino[]" value="235381">
										<div>
											<img data-adino="235381" src="${pageContext.request.contextPath}/assets/img/logout.png" class="img-rounded">
										</div>
										<button id = "changeimage" data-role="img-changer" data-adino="235381" data-ano="3309" data-armgno="0" data-type="8" type="button" class="btn btn-xs btn-success">변경</button>
										<button id = "deleteimage" data-role="img-delete" data-adino="235381" type="button" class="btn btn-xs btn-deleete">삭제</button>
									</li>
								</ul>
								
							</div>

							<div class="form-layer-text">
								<button id = "addimage" type="button" class="btn btn-default btn_add" data-role="img-uploader" data-ano="3309" data-armno="0" data-type="8">+ 이미지 추가</button>
							</div>
						</td>
						<td class = "border_right">
							<a href="javascript:void(0)" data-toggle="popover" data-original-title="" title="">
								<img id="tooltip" src="${pageContext.request.contextPath}/assets/img/tooltip.png">
							</a>
						</td>
					</tr>
					
					<tr>
						<th>객실 이용 안내</th>
						<td class="bd_r_none">
							<div class="form-layer mb_24">
								<span class="form-title">편의시설</span>
								<span class="form-body">
									<input class="form-control normal-size re-size" type="text" name="armgname" placeholder="객실 내 편의시설을 간략하게 작성해주세요." value="">
								</span>
							</div>
							<div class="form-layer mb_24">
								<span class="form-title">추가정보</span>
								<span class="form-body">
									<input class="form-control normal-size re-size" type="text" name="armgname" placeholder="객실 내 편의시설을 간략하게 작성해주세요." value="">
								</span>
							</div>
							<p id="detail">
							<br><br>	
							작성 예시
							<br><br>
							[편의시설]
							<br>
							침구류, 120인치 스크린빔, 오디오, 에어컨, 냉장고, 전자레인지, 취사도구 등
							<br><br>
							[추가정보]<br>
							스파 20,000 현장결제
							<br><br>
							</p>
						</td>
						<td class="bd_r_none border_right">
						</td>
					</tr>
					<tr >
						<th rowspan="4">
							요금설정<br>
							<a href="${pageContext.request.contextPath}/host/rules" class="btn_th_link">
								준/성수기<br>
								기간 설정
							</a>
						</th>
						<td class="bd_r_none">
							<div class="form-layer">
								<p class="description">
									<strong id = "priceinfo">* 해당 페이지의 요금 설정은 객실별 기준가격입니다. 금액 수정은 등록 이후 '객실관리' 에서 가능합니다.</strong>
								</p>
							</div>
							<div class="form-layer">
								<span class="form-title large">
									기본<br>(비수기)
								</span>
								
								<span id = "pricewidth" class="form-body" data-season="NOMAL">
									<div class="room-price room-price-wrap">
										<input data-role="type" type="hidden" value="NOMAL">
										<input data-role="adpno" type="hidden" value="">
										<input data-role="adpsino" type="hidden" value="">
										
										<div class="chk_date">
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-sun" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												일
											</label>
											
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-mon" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												월
											</label>
											
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-tue" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												화
											</label>
											
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-wed" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												수
											</label>
											
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-thu" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												목
											</label>
											
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-fri" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												금
											</label>
											
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-sat" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												토
											</label>
											
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-ho1" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												공휴일
											</label>
											
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-beh" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												공휴일 전날
											</label>
										</div>
										
										<div class="form-inline">
											<label data-role="price" class="radio-inline">
												정상가 : 
												<input data-role class="form-control input-sm" type="text">
												원
											</label>
										</div>
									</div>
										
										<div class="room-price room-price-wrap">
											<input data-role="type" type="hidden" value="NOMAL">
											<input data-role="adpno" type="hidden" value="">
											<input data-role="adpsino" type="hidden" value="">
										
										<div class="chk_date">
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-sun" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												일
											</label>
											
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-mon" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												월
											</label>
											
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-tue" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												화
											</label>
											
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-wed" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												수
											</label>
											
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-thu" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												목
											</label>
											
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-fri" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												금
											</label>
											
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-sat" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												토
											</label>
											
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-ho1" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												공휴일
											</label>
											
											<label class="checkbox-inline icon-label">
												<input type="checkbox" class="NORMAL-beh" onclick="weekOverlapCheck(this)" data-role="week" checked="checked">
												공휴일 전날
											</label>
										</div>
										
										<div class="form-inline">
											<label data-role="price" class="radio-inline">
												정상가 : 
												<input data-role class="form-control input-sm" type="text">
												원
											</label>
										</div>
										
									</div>
									
									<div class="form-layer-text addpricestyle" id="btd_day">
											<button type="button" class="btn btn-default btn_add_02" data-role="season-NORMAL">+ 요일별 요금 정보 추가</button>
									</div>
										
								</span>
							</div>
							
						</td>
						<td class="bd_r_none border_right">
						</td>
					</tr>
					
					<tr>
						<td class="bd_r_none">
							<div class="form-layer">
								<span class="form-title large">
									준 성수기<br>
									<p>
										<em id="datespace">
											* (이용규칙관리에서 설정한 날짜)
										</em>
									</p>
								</span>
								
								<span class="form-body" data-season="SUBPEAK">
									<div class="empty_holiday">
										준 성수기 날짜가 지정되어 있습니다.<br>
										<b class = "addprice">[+요일별 요금 정보 추가]</b>
										 를 클릭하시고 요일 요금 정보를 입력하세요.
									</div>
								</span>
							</div>
							
							<div class="form-layer-text addpricestyle">
								<button type="button" class="btn btn-default btn_add_02" data-role="season-SUBPEAK">+ 요일별 요금 정보 추가</button>
							</div>
						</td>
						<td class="bd_r_none border_right">
						</td>
					</tr>					
					
					<tr>
						<td class="bd_r_none">
							<div class="form-layer">
								<span class="form-title large">
									성수기<br>
									<p>
										<em id = "datespace">
											* 07/01 ~ 08/15
										</em>
									</p>
								</span>
								
								<span class="form-body" data-season="PEAK">
									<div class="empty_holiday">
										성수기 날짜가 지정되어 있습니다.<br>
										<b class = "addprice">[+요일별 요금 정보 추가]</b>
										 를 클릭하시고 요일 요금 정보를 입력하세요.
									</div>
								</span>
							</div>
							
							<div class="form-layer-text addpricestyle">
								<button type="button" class="btn btn-default btn_add_02" data-role="season-SUBPEAK">+ 요일별 요금 정보 추가</button>
							</div>
						</td>
						<td class="bd_r_none border_right">
						</td>
					</tr>
					
					<tr>
						<td class="bd_r_none border_bottom">
							<div class="form-layer">
								<span class="form-title large">
									추가인원<br>추가비용<br>
								</span>
								
								<span class="form-body">
									<!-- 
									<div class="empty_holiday">
										객실 기준인원을 초과하는 인원에 대한 추가비용을 설정해주세요.
									</div>
									 -->
									<div id = "additionalpeople">
										<div id = "additionalpeopledivide" class = "select-style normal-size clearfix">
											<select>
												<option value = "adult">성인</option>
												<option value = "youngsters">아동</option>
												<option value = "kid">유아</option>
											</select>
										</div>
										<div id = "additionalpeopleprice">
											<input class = "form-control normal-size" type = "text" placeholder = "금액(숫자만)을 입력해주세요.">
										</div>
									</div>
								</span>
							</div>
							
							<div class="form-layer-text addpricestyle">
								<button type="button" class="btn btn-default btn_add_02" data-role="season-SUBPEAK">+ 인원 추가비용 추가</button>
							</div>
						</td>
						<td class="bd_r_none border_bottom border_right">
						</td>
					</tr>
				</tbody>
			</table>
			
		<div class="submit-layer center-block">
			<button type="button" class="btn btn-default btn-submit btn-guest-room" onclick="deleteRoomInfo()">삭제하기</button>
			<button type="button" class="btn btn-yeogi btn-submit btn-guest-room" onclick="submitRoomInfo()">저장하기</button>
		</div>
	</form>
	
	<!-- 내용 끝 -->
<!-- container -->
</div>

<!-- //footer -->
<footer>
	<div class="align">
		<ul class="link">
			<li><a href="">회사소개</a> <span>|</span></li>
			<li><a href="">이용약관</a> <span>|</span></li>
			<li><a href="">개인정보처리방침</a> <span>|</span></li>
			<li><a href="">소비자 분쟁해결 기준</a> <span>|</span></li>
			<li><a href="">사업자 정보확인</a> <span>|</span></li>
			<li><a href="">양도어때 마케팅센터</a> <span>|</span></li>
			<li><a href="">액티비티 호스트센터</a> <span>|</span></li>
			<li><a href="">펜션 양도어때</a> <span>|</span></li>
			<li><a href="">콘텐츠산업진흥법에의한 표시</a></li>
		</ul>

		<p>
			<b>양도어때 고객센터 1670-4215</b> <span>오전 9시 - 새벽 3시</span>
		</p>

		<address>
			<span>(주) 양도어때컴퍼니</span> 주소 : 서울특별시 봉천동 봉천사로 611, 648타워 14층 | 대표이사 : 최종빈 | 사업자등록번호: 741-64-88541 <br> 통신판매번호 : 2011-서울봉천-75441 | 관광사업자 등록번호: 제2011-74호 | 전화번호 : 1670-4215 |
			전자우편주소 : yangdo@goodchoice.kr <br> Copyright GC COMPANY Corp. All rights reserved.
		</address>

	</div>
</footer>

</body>
</html>