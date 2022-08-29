<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 관리</title>
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/hostHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/roomreg.css">

<body>
	<!-- 펜션어때 헤더 -->

	<!-- header -->
	<c:import url="/WEB-INF/views/includes/hostHeader.jsp"></c:import>
	<!-- header -->


	<div id="container">

		<div id="process" class="center-block">
			<ul>
				<li class="imgs"><a href="${pageContext.request.contextPath}/host/companyreg"> <span><img src="${pageContext.request.contextPath}/assets/image/host/mypage.png"></span> <span>업체
							등록</span>
				</a></li>
				<li class="prog"><br> <span class="do">&nbsp;</span> <span>&nbsp;</span> <span class="do">&nbsp;</span> <span>&nbsp;</span> <span class="do">&nbsp;</span> <span>&nbsp;</span></li>
				<li class="imgs"><a href="${pageContext.request.contextPath}/host/introreg"> <span><img src="${pageContext.request.contextPath}/assets/image/host/introduce.png"></span> <span>소개작성(필수)</span>
				</a></li>
				<li class="prog"><br> <span class="do">&nbsp;</span> <span>&nbsp;</span> <span class="do">&nbsp;</span> <span>&nbsp;</span> <span class="do">&nbsp;</span> <span>&nbsp;</span></li>
				<li class="imgs"><a href="${pageContext.request.contextPath}/host/introregopt"> <span><img src="${pageContext.request.contextPath}/assets/image/host/introduce.png"></span> <span>소개작성(선택)</span>
				</a></li>
				<li class="prog"><br> <span class="do">&nbsp;</span> <span>&nbsp;</span> <span class="do">&nbsp;</span> <span>&nbsp;</span> <span class="do">&nbsp;</span> <span>&nbsp;</span></li>
				<li class="imgs"><a href="${pageContext.request.contextPath}/host/rules"> <span><img src="${pageContext.request.contextPath}/assets/image/host/rules.png"></span> <span>이용규칙
							관리</span>
				</a></li>
				<li class="prog"><br> <span class="do">&nbsp;</span> <span>&nbsp;</span> <span class="do">&nbsp;</span> <span>&nbsp;</span> <span class="do">&nbsp;</span> <span>&nbsp;</span></li>
				<li class="imgs"><a href="${pageContext.request.contextPath}/host/roomreg"> <span><img src="${pageContext.request.contextPath}/assets/image/host/room.png" class="active"></span> <span>객실
							관리</span>
				</a></li>
			</ul>
		</div>

		<!-- 내용 시작 -->
		<!-- 객실 추가 -->

		<!-- 객실 추가 -->
		<!-- 객실정보 폼 -->
		<form id="room_form" action="${pageContext.request.contextPath}/host/roomsave" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="guest-titie-layer mb_0 pb_0">
				<ul id="design">
					<li>[+ 객실추가]를 누르시면 객실을 추가할 수 있으며 최대 개수는 20개 입니다.</li>
					<li>요금설정에서는 요일이 겹치지 않게 주의해 주시기 바랍니다.</li>
					<li>해당 페이지의 요금 설정은 객실별 기준 가격입니다.</li>
					<li>객실별 판매 금액 수정은 등록 이후 '객실관리' 메뉴에서 가능합니다.</li>
				</ul>
			</div>

			<div id="roomsetting">
				<ul class="nav nav-tabs room-tabs">
					<c:forEach items="${rMap.rNoList}" var="rNoList">
						<li><a href="${pageContext.request.contextPath}/host/roomreg?no=${rNoList.no}">${rNoList.roomName} </a></li>
					</c:forEach>

					<li><a href="${pageContext.request.contextPath}/host/roomreg" id="moreroom">+ 객실 추가</a></li>
				</ul>

				<table class="table resize">
					<tbody>
						<tr>
							<th>객실 정보</th>
							<td class="bd_r_none">
								<div class="form-layer mb_24">
									<span class="form-title">객실명</span> <span class="form-body"> <input class="form-control normal-size" type="text" name="roomName" placeholder="이름을 입력하세요." maxlength="30"
										value="${rMap.rVo.roomName}">
									</span>
								</div>

								<div class="form-layer mb_24">
									<span class="form-title">기준인원</span> <span class="form-body">
										<div class="select-style middle-size">
											<select name="standardPeople">
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
												<c:if test="${rMap.rVo.standardPeople == 2}">
													<option value="2" selected="selected">2명</option>
												</c:if>
												<c:if test="${rMap.rVo.standardPeople == 3}">
													<option value="3" selected="selected">3명</option>
												</c:if>
												<c:if test="${rMap.rVo.standardPeople == 4}">
													<option value="4" selected="selected">4명</option>
												</c:if>
												<c:if test="${rMap.rVo.standardPeople == 5}">
													<option value="5" selected="selected">5명</option>
												</c:if>
												<c:if test="${rMap.rVo.standardPeople == 6}">
													<option value="6" selected="selected">6명</option>
												</c:if>
												<c:if test="${rMap.rVo.standardPeople == 7}">
													<option value="7" selected="selected">7명</option>
												</c:if>
												<c:if test="${rMap.rVo.standardPeople == 8}">
													<option value="8" selected="selected">8명</option>
												</c:if>
												<c:if test="${rMap.rVo.standardPeople == 9}">
													<option value="9" selected="selected">9명</option>
												</c:if>
												<c:if test="${rMap.rVo.standardPeople == 10}">
													<option value="10" selected="selected">10명</option>
												</c:if>
											</select>
										</div>
									</span>
								</div>

								<div class="form-layer mb_24">
									<span class="form-title">최대인원</span> <span class="form-body">
										<div class="select-style middle-size">
											<select name="maxPeople">
												<option value="${rMap.rVo.maxPeople == 0}" selected="selected" class="text-center">인원을 선택해주세요</option>
												<option value="4">4명</option>
												<option value="5">5명</option>
												<option value="6">6명</option>
												<option value="7">7명</option>
												<option value="8">8명</option>
												<option value="9">9명</option>
												<option value="10">10명</option>

												<c:if test="${rMap.rVo.maxPeople == 4}">
													<option value="4" selected="selected">4명</option>
												</c:if>
												<c:if test="${rMap.rVo.maxPeople == 5}">
													<option value="5" selected="selected">5명</option>
												</c:if>
												<c:if test="${rMap.rVo.maxPeople == 6}">
													<option value="6" selected="selected">6명</option>
												</c:if>
												<c:if test="${rMap.rVo.maxPeople == 7}">
													<option value="7" selected="selected">7명</option>
												</c:if>
												<c:if test="${rMap.rVo.maxPeople == 8}">
													<option value="8" selected="selected">8명</option>
												</c:if>
												<c:if test="${rMap.rVo.maxPeople == 9}">
													<option value="9" selected="selected">9명</option>
												</c:if>
												<c:if test="${rMap.rVo.maxPeople == 10}">
													<option value="10" selected="selected">10명</option>
												</c:if>
											</select>
										</div>
									</span>
								</div>
							</td>
							<td class="border_right"></td>
						</tr>

						<tr>
							<th>객실 이미지<br>(최대 15장)
							</th>
							<td class="bd_r_none" colspan="2">
								<div class="form-layer mb_24">
									<p class="order text-normal">* 객실의 전반적인 이미지를 업로드 해주시기 바랍니다.</p>
									<p class="order text-normal">* 이미지 교체를 원하시면 "변경"을 선택하시고 삭제를 원하시면 우측 "삭제"를 선택하시기 바랍니다.</p>
									<p class="order text-normal">* 이미지 장소는 짧게 기입해주시기 바랍니다. 예시) 객실명, 침대, 화장실 등</p>
									<p class="order text-normal">* 첫 이미지가 메인 이미지입니다.</p>
								</div>

								<div class="form-layer mb_15">
									<ul id="room-images">
										<c:forEach items="${rMap.riList}" var="riList">
											<li id="rList${riList.no}"  class="backgrou">
												<div class="thumb">
													<img alt="" src="${pageContext.request.contextPath}/upload/${riList.saveName}" class="img-rounded preview">
												</div>
												<button type="button" class="btn btn-xs btn-success changeimage">변경</button>
												<button type="button" class="btn btn-xs btn-deleete deleteimage">삭제</button>
												<input type="hidden" name="imgNo" value="${riList.no}">
											</li>
										</c:forEach>
										
									</ul>

								</div>

								<div class="form-layer-text">
									<button id="addimage" type="button" class="btn btn-default btn_add">+ 이미지 추가</button>
								</div>
							</td>
						</tr>

						<tr>
							<th>객실 이용 안내</th>
							<td class="bd_r_none">
								<div class="form-layer mb_24">
									<span class="form-title">편의시설</span> <span class="form-body"> <input class="form-control normal-size re-size" type="text" name="roomAmenities" placeholder="객실 내 편의시설을 간략하게 작성해주세요."
										value="${rMap.rVo.roomAmenities}">
									</span>
								</div>
								<div class="form-layer mb_24">
									<span class="form-title">추가정보</span> <span class="form-body"> <input class="form-control normal-size re-size" type="text" name="addInfo" placeholder="객실 내 편의시설을 간략하게 작성해주세요."
										value="${rMap.rVo.addInfo}">
									</span>
								</div>
								<p id="detail">
									<br> <br> 작성 예시 <br> <br> [편의시설] <br> 침구류, 120인치 스크린빔, 오디오, 에어컨, 냉장고, 전자레인지, 취사도구 등 <br> <br> [추가정보]<br> 스파 20,000 현장결제 <br> <br>
								</p>
							</td>
							<td class="bd_r_none border_right"></td>
						</tr>
						<tr>
							<th rowspan="3">요금 설정<br> <a href="${pageContext.request.contextPath}/host/rules" class="btn_th_link"> 준/성수기<br> 기간 설정
							</a>
							</th>

							<td class="bd_r_none">
								<div class="form-layer">
									<p class="description">
										<strong id="priceinfo">* 해당 페이지의 요금 설정은 객실별 기준가격입니다. 금액 수정은 등록 이후 '객실관리' 에서 가능합니다.</strong>
									</p>
								</div>
								<div class="form-layer">
									<span class="form-title large"> 기본<br>(비수기)
									</span> <span id="pricewidth" class="form-body">
										<div class="room-price room-price-wrap">
											<div class="chk_date">
												<label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-sun" name="gbWeeks1" value="일"
													<c:forEach items="${rMap.gb1List}" var="gb1List"> <c:if test="${gb1List.WEEKNAME == '일'}">checked</c:if> </c:forEach>> 일
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-mon" name="gbWeeks1" value="월"
													<c:forEach items="${rMap.gb1List}" var="gb1List"> <c:if test="${gb1List.WEEKNAME == '월'}">checked</c:if> </c:forEach>> 월
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-tue" name="gbWeeks1" value="화"
													<c:forEach items="${rMap.gb1List}" var="gb1List"> <c:if test="${gb1List.WEEKNAME == '화'}">checked</c:if> </c:forEach>> 화
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-wed" name="gbWeeks1" value="수"
													<c:forEach items="${rMap.gb1List}" var="gb1List"> <c:if test="${gb1List.WEEKNAME == '수'}">checked</c:if> </c:forEach>> 수
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-thu" name="gbWeeks1" value="목"
													<c:forEach items="${rMap.gb1List}" var="gb1List"> <c:if test="${gb1List.WEEKNAME == '목'}">checked</c:if> </c:forEach>> 목
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-fri" name="gbWeeks1" value="금"
													<c:forEach items="${rMap.gb1List}" var="gb1List"> <c:if test="${gb1List.WEEKNAME == '금'}">checked</c:if> </c:forEach>> 금
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-sat" name="gbWeeks1" value="토"
													<c:forEach items="${rMap.gb1List}" var="gb1List"> <c:if test="${gb1List.WEEKNAME == '토'}">checked</c:if> </c:forEach>> 토
												</label>
											</div>

											<div class="form-inline">
												<label class="radio-inline"> 정상가 : <input class="form-control input-sm" type="text" name="gbPrice1" value="${rMap.pList[0].price}"> 원
												</label>
											</div>
										</div>

										<div class="room-price room-price-wrap">
											<div class="chk_date">
												<label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-sun" name="gbWeeks2" value="일"
													<c:forEach items="${rMap.gb2List}" var="gb2List"> <c:if test="${gb2List.WEEKNAME == '일'}">checked</c:if> </c:forEach>> 일

												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-mon" name="gbWeeks2" value="월"
													<c:forEach items="${rMap.gb2List}" var="gb2List"> <c:if test="${gb2List.WEEKNAME == '월'}">checked</c:if> </c:forEach>> 월

												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-tue" name="gbWeeks2" value="화"
													<c:forEach items="${rMap.gb2List}" var="gb2List"> <c:if test="${gb2List.WEEKNAME == '화'}">checked</c:if> </c:forEach>> 화

												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-wed" name="gbWeeks2" value="수"
													<c:forEach items="${rMap.gb2List}" var="gb2List"> <c:if test="${gb2List.WEEKNAME == '수'}">checked</c:if> </c:forEach>> 수

												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-thu" name="gbWeeks2" value="목"
													<c:forEach items="${rMap.gb2List}" var="gb2List"> <c:if test="${gb2List.WEEKNAME == '목'}">checked</c:if> </c:forEach>> 목

												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-fri" name="gbWeeks2" value="금"
													<c:forEach items="${rMap.gb2List}" var="gb2List"> <c:if test="${gb2List.WEEKNAME == '금'}">checked</c:if> </c:forEach>> 금

												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-sat" name="gbWeeks2" value="토"
													<c:forEach items="${rMap.gb2List}" var="gb2List"> <c:if test="${gb2List.WEEKNAME == '토'}">checked</c:if> </c:forEach>> 토
												</label>
											</div>

											<div class="form-inline">
												<label data-role="price" class="radio-inline"> 정상가 : <input class="form-control input-sm" type="text" name="gbPrice2" value="${rMap.pList[1].price}"> 원
												</label>
											</div>

										</div>
									</span>
								</div>

							</td>
							<td class="bd_r_none border_right"></td>
						</tr>

						<tr>
							<td class="bd_r_none">
								<div class="form-layer">
									<span class="form-title large"> 준성수기 </span> <span id="pricewidth" class="form-body">
										<div class="room-price room-price-wrap">
											<div class="chk_date">
												<label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-sun" name="jsWeeks1" value="일"
													<c:forEach items="${rMap.js1List}" var="js1List"> <c:if test="${js1List.WEEKNAME == '일'}">checked</c:if> </c:forEach>> 일
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-mon" name="jsWeeks1" value="월"
													<c:forEach items="${rMap.js1List}" var="js1List"> <c:if test="${js1List.WEEKNAME == '월'}">checked</c:if> </c:forEach>> 월


												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-tue" name="jsWeeks1" value="화"
													<c:forEach items="${rMap.js1List}" var="js1List"> <c:if test="${js1List.WEEKNAME == '화'}">checked</c:if> </c:forEach>> 화

												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-wed" name="jsWeeks1" value="수"
													<c:forEach items="${rMap.js1List}" var="js1List"> <c:if test="${js1List.WEEKNAME == '수'}">checked</c:if> </c:forEach>> 수

												</label> <label class="checkbox-inline icon-label"> < <input type="checkbox" class="NORMAL-thu" name="jsWeeks1" value="목"
													<c:forEach items="${rMap.js1List}" var="js1List"> <c:if test="${js1List.WEEKNAME == '목'}">checked</c:if> </c:forEach>> 목

												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-fri" name="jsWeeks1" value="금"
													<c:forEach items="${rMap.js1List}" var="js1List"> <c:if test="${js1List.WEEKNAME == '금'}">checked</c:if> </c:forEach>> 금

												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-sat" name="jsWeeks1" value="토"
													<c:forEach items="${rMap.js1List}" var="js1List"> <c:if test="${js1List.WEEKNAME == '토'}">checked</c:if> </c:forEach>> 토

												</label>
											</div>

											<div class="form-inline">
												<label data-role="price" class="radio-inline"> 정상가 : <input data-role class="form-control input-sm" type="text" name="jsPrice1" value="${rMap.pList[2].price}"> 원
												</label>
											</div>
										</div>

										<div class="room-price room-price-wrap">
											<div class="chk_date">

												<label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-sun" name="jsWeeks2" value="일"
													<c:forEach items="${rMap.js2List}" var="js2List"> <c:if test="${js2List.WEEKNAME == '일'}">checked</c:if> </c:forEach>> 일

												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-mon" name="jsWeeks2" value="월"
													<c:forEach items="${rMap.js2List}" var="js2List"> <c:if test="${js2List.WEEKNAME == '월'}">checked</c:if> </c:forEach>> 월

												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-tue" name="jsWeeks2" value="화"
													<c:forEach items="${rMap.js2List}" var="js2List"> <c:if test="${js2List.WEEKNAME == '화'}">checked</c:if> </c:forEach>> 화
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-wed" name="jsWeeks2" value="수"
													<c:forEach items="${rMap.js2List}" var="js2List"> <c:if test="${js2List.WEEKNAME == '수'}">checked</c:if> </c:forEach>> 수
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-thu" name="jsWeeks2" value="목"
													<c:forEach items="${rMap.js2List}" var="js2List"> <c:if test="${js2List.WEEKNAME == '목'}">checked</c:if> </c:forEach>> 목
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-fri" name="jsWeeks2" value="금"
													<c:forEach items="${rMap.js2List}" var="js2List"> <c:if test="${js2List.WEEKNAME == '금'}">checked</c:if> </c:forEach>> 금
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-sat" name="jsWeeks2" value="토"
													<c:forEach items="${rMap.js2List}" var="js2List"> <c:if test="${js2List.WEEKNAME == '토'}">checked</c:if> </c:forEach>> 토
												</label>

											</div>

											<div class="form-inline">
												<label data-role="price" class="radio-inline"> 정상가 : <input class="form-control input-sm" type="text" name="jsPrice2" value="${rMap.pList[3].price}"> 원
												</label>
											</div>

										</div>


									</span>
								</div>
							</td>
							<td class="bd_r_none border_right"></td>
						</tr>

						<tr>
							<td class="bd_r_none">
								<div class="form-layer">
									<span class="form-title large"> 성수기 </span> <span id="pricewidth" class="form-body">
										<div class="room-price room-price-wrap">

											<div class="chk_date">

												<label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-sun" name="sWeeks1" value="일"
													<c:forEach items="${rMap.s1List}" var="s1List"> <c:if test="${s1List.WEEKNAME == '일'}">checked</c:if> </c:forEach>> 일
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-mon" name="sWeeks1" value="월"
													<c:forEach items="${rMap.s1List}" var="s1List"> <c:if test="${s1List.WEEKNAME == '월'}">checked</c:if> </c:forEach>> 월
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-tue" name="sWeeks1" value="화"
													<c:forEach items="${rMap.s1List}" var="s1List"> <c:if test="${s1List.WEEKNAME == '화'}">checked</c:if> </c:forEach>> 화
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-wed" name="sWeeks1" value="수"
													<c:forEach items="${rMap.s1List}" var="s1List"> <c:if test="${s1List.WEEKNAME == '수'}">checked</c:if> </c:forEach>> 수
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-thu" name="sWeeks1" value="목"
													<c:forEach items="${rMap.s1List}" var="s1List"> <c:if test="${s1List.WEEKNAME == '목'}">checked</c:if> </c:forEach>> 목
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-fri" name="sWeeks1" value="금"
													<c:forEach items="${rMap.s1List}" var="s1List"> <c:if test="${s1List.WEEKNAME == '금'}">checked</c:if> </c:forEach>> 금
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-sat" name="sWeeks1" value="토"
													<c:forEach items="${rMap.s1List}" var="s1List"> <c:if test="${s1List.WEEKNAME == '토'}">checked</c:if> </c:forEach>> 토
												</label>
											</div>

											<div class="form-inline">
												<label data-role="price" class="radio-inline"> 정상가 : <input class="form-control input-sm" type="text" name="sPrice1" value="${rMap.pList[4].price}"> 원
												</label>
											</div>
										</div>

										<div class="room-price room-price-wrap">
											<input type="hidden" name="sortation" value="peck">

											<div class="chk_date">

												<label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-sun" name="sWeeks2" value="일"
													<c:forEach items="${rMap.s2List}" var="s2List"> <c:if test="${s2List.WEEKNAME == '일'}">checked</c:if> </c:forEach>> 일
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-mon" name="sWeeks2" value="월"
													<c:forEach items="${rMap.s2List}" var="s2List"> <c:if test="${s2List.WEEKNAME == '월'}">checked</c:if> </c:forEach>> 월
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-tue" name="sWeeks2" value="화"
													<c:forEach items="${rMap.s2List}" var="s2List"> <c:if test="${s2List.WEEKNAME == '화'}">checked</c:if> </c:forEach>> 화
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-wed" name="sWeeks2" value="수"
													<c:forEach items="${rMap.s2List}" var="s2List"> <c:if test="${s2List.WEEKNAME == '수'}">checked</c:if> </c:forEach>> 수
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-thu" name="sWeeks2" value="목"
													<c:forEach items="${rMap.s2List}" var="s2List"> <c:if test="${s2List.WEEKNAME == '목'}">checked</c:if> </c:forEach>> 목
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-fri" name="sWeeks2" value="금"
													<c:forEach items="${rMap.s2List}" var="s2List"> <c:if test="${s2List.WEEKNAME == '금'}">checked</c:if> </c:forEach>> 금
												</label> <label class="checkbox-inline icon-label"> <input type="checkbox" class="NORMAL-sat" name="sWeeks2" value="토"
													<c:forEach items="${rMap.s2List}" var="s2List"> <c:if test="${s2List.WEEKNAME == '토'}">checked</c:if> </c:forEach>> 토
												</label>

											</div>

											<div class="form-inline">
												<label data-role="price" class="radio-inline"> 정상가 : <input class="form-control input-sm" name="sPrice2" type="text" value="${rMap.pList[5].price}"> 원
												</label>
											</div>

										</div>


									</span>
								</div>
							</td>
							<td class="bd_r_none border_right"></td>
						</tr>

						<tr id="reservation">
							<th>예약가능여부</th>
							<td>
								<div class="form-check form-switch">
									<c:choose>
										<c:when test="${rMap.rVo.reserveAvai == 'Y' }">
											<input class="form-check-input" type="checkbox" checked name="reserveAvai" value="Y" id="flexSwitchCheckChecked">
										</c:when>
										<c:when test="${rMap.rVo.reserveAvai == 'N' }">
											<input class="form-check-input" type="checkbox" name="reserveAvai" value="Y" id="flexSwitchCheckChecked">
										</c:when>
										<c:otherwise>
											<input class="form-check-input" type="checkbox" name="reserveAvai" value="Y" id="flexSwitchCheckChecked">
										</c:otherwise>
									</c:choose>

									<label class="form-check-label" for="flexSwitchCheckChecked">객실 예약 허용</label>
								</div>
								<p id="checkinfo" class="order text-normal">* 체크 해제 시 이용객들이 해당 객실을 예약 할 수 없습니다.</p>
							</td>
							<td class="bd_r_none border_right"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="submit-layer center-block">
				<button type="button" class="btn btn-default btn-submit btn-guest-room" onclick="deleteRoomInfo()">삭제하기</button>
				<button type="submit" class="btn btn-yeogi btn-submit btn-guest-room">저장하기</button>
			</div>
		</form>

		<!-- 내용 끝 -->
		<!-- container -->
	</div>

	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/hostFooter.jsp"></c:import>
	<!-- footer -->

</body>
<!-- 이미지 업로드 modal -->
<div id="img-uploader" class="modal fade in" aria-hidden="false">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title">이미지 업로드</h4>
			</div>

			<div class="modal-body">
				<form id="uploadForm" action="${pageContext.request.contextPath}/host/imgUpload" enctype="multipart/form-data" method="post">
					<div id="drop-zone" style="height: 200px; border: 1px dashed gray; border-radius: 3px; position: relative">
						<label style="position: relative; left: 50%; margin-left: -100px; top: 50%; margin-top: -15px; overflow: hidden"> <span class="btn btn-primary">드래그 하시거나 클릭하세요.</span> <input id="file"
							style="position: absolute; left: 0; top: 0; border-width: 0 0 100px 200px; border: solid transparent; direction: ltr; opacity: .0; cursor: pointer" type="file" multiple="multiple"
							name="imgfile">
						</label>
					</div>
				</form>
				<div id="upload-list" style="margin-top: 10px"></div>
				<span> * 여러장을 한꺼번에 드래그하여 업로드 할 수 있습니다. <br> <strong>&nbsp;&nbsp;<font color="#ff0000">최대 15장 까지 등록이 가능합니다.</font></strong> <br> <strong>&nbsp;&nbsp;사진 권장사이즈 : 1920 *
						1080 또는 960 * 540</strong>
				</span> <span class="btn btn-success" id="succes" data-dismiss="modal" aria-label="Close" style="float: right; margin-top: -25px;">확인</span>
			</div>

		</div>
	</div>
</div>

<!-- 이미지 삭제 modal -->
<div id = "img-delete" class="modal fade in" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">삭제 확인</h4>
      </div>
      <div class="modal-body">
        <p>정말 삭제하시겠습니까?</p>
      </div>
      <div class="modal-footer">
        <button id="cancel" type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button id="imgDelete" type="button" class="btn btn-danger">삭제</button>
      </div>
    </div>
  </div>
</div>
<!-- 이미지 삭제 modal -->
<script type="text/javascript">
	var fileList = []; 
	
	$(function (){
	    // 파일 드롭 다운
	    fileDropDown();
	});
	
	$("#addimage").on("click", function() {
		$("#img-uploader").modal("show");
	});

	$(".changeimage").on("click", function() {
		$("#img-uploader").modal("show");
	});

	$(".deleteimage").on("click", function() {
		$("#img-delete").modal("show");
		
		
		$("#cancel").on("click", function() {
			$("#img-delete").modal("hide");
		})
	});
	
	$("#imgDelete").on("click",function(){

		var no = $("[name='imgNo']").val();
		$.ajax({
			url : "${pageContext.request.contextPath }/api/host/room/imgDelete",		
			type : "post",
			contentType : "application/json",
			data :	JSON.stringify(no),
			dataType : "json",
			success : function(result){
				
				if(result == 'success'){
					$("#img-delete").modal("hide");
					
					alert("사진이 삭제되었습니다.");
					
					$("#rList"+no).remove();
				}else{
					alert("오류입니다");
				}

				 
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});

	});
	
	// 파일 드롭 다운
	function fileDropDown(){
	    var dropZone = $("#drop-zone");
	    //Drag기능
	    dropZone.on('dragenter',function(e){
	        e.stopPropagation();
	        e.preventDefault();
	        // 드롭다운 영역 css
	        dropZone.css('background-color','#E3F2FC');
	    });
	    dropZone.on('dragleave',function(e){
	        e.stopPropagation();
	        e.preventDefault();
	        // 드롭다운 영역 css
	        dropZone.css('background-color','#FFFFFF');
	    });
	    dropZone.on('dragover',function(e){
	        e.stopPropagation();
	        e.preventDefault();
	        // 드롭다운 영역 css
	        dropZone.css('background-color','#E3F2FC');
	    });
	    dropZone.on('drop',function(e){
	    	console.log("드롭!");
	        e.preventDefault();
	        // 드롭다운 영역 css
	        dropZone.css('background-color','#FFFFFF');
	         
	        var files = e.originalEvent.dataTransfer.files;
	        var str = '';
	        for(i=0; i<files.length; i++){
                var f = files[i];
                fileList.push(f);
                var fileName = f.name;
                var fileSize = f.size / 1024 / 1024;
                fileSize = fileSize < 1 ? fileSize.toFixed(3) : fileSize.toFixed(1);
    			str += '<div class="details">';
    			str += '	<span class="name">' + fileName + '</span>';
    			str += '	<span class="size">' + fileSize + 'MB</span>';
    			str += '	<div class="progress">';
    			str += '		<div class="bar"></div>';
    			str += '	</div>';
    			str += '</div>';
          	 }
	         $("#upload-list").append(str);
	         
	         uploadFile(fileList);
	    });
	}
	
	
	// 파일 등록
	function uploadFile(fileList){
		
        var formData = new FormData($("#uploadForm")[0]);
        if(fileList.length > 0){
            fileList.forEach(function(f){
                formData.append("fileList", f);
            });
        }         
  	    $.ajax({
            url : "${pageContext.request.contextPath}/api/host/room/imgUpload",
            data : formData,
            type:'POST',
            enctype:'multipart/form-data',
            processData:false,
            contentType:false,
            dataType:'json',
            cache:false,
            success:function(riList){
                alert("저장에 성공하셨습니다.");
                console.log(riList);
                
                
                for(var i = 0; i<riList.length; i++){
                	var div = '';
            		div += '<li class="backgrou">'
            		div += '	<div class="thumb"> '
            		div += '		<img src="${pageContext.request.contextPath}/upload/'+riList[i].saveName+'"class="img-rounded preview">'
            		div += '    </div>'
            		div += '	<button type="button" class="btn btn-xs btn-success changeimage">변경</button>'
            		div += '    <button type="button" class="btn btn-xs btn-deleete deleteimage">삭제</button>'
            		div += '</li>';
            		
            		$("#room-images").append(div);
                }
                
                
            },error:function(XHR, status, error){
                alert("오류 발생.\n관리자에게 문의해주세요.");
            }
        });
	    
	}


	function render() {
		var str = '';
		str += '<div id="roomsetting">'
		str += '	<ul class="nav nav-tabs room-tabs">'
		str += '		<li><a href="">저장된 객실명</a></li>'
		str += '		<li><a href="" id="moreroom">+ 객실 추가</a></li>'
		str += '	</ul>'
		str += '	<table class="table resize">'
		str += '		<tbody>'
		str += '			<tr>'
		str += '				<th>객실 정보</th>'
		str += '				<td class="bd_r_none">'
		str += '					<div class="form-layer mb_24">'
		str += '						<span class="form-title">객실명</span>'
		str += '						<span class="form-body">'
		str += '							<input class="form-control normal-size" type="text" name="roomName" placeholder="이름을 입력하세요." maxlength="30" value="">'
		str += '						</span>'
		str += '					</div>'
		str += '					<div class="form-layer mb_24">'
		str += '						<span class="form-title">기준인원</span>'
		str += '						<span class="form-body">'
		str += '							<div class="select-style middle-size">'
		str += '								<select name="standardPeople">'
		str += '									<option value="" selected="selected" class="text-center">인원을 선택해주세요</option>'
		str += '									<option value="2">2명</option>'
		str += '									<option value="3">3명</option>'
		str += '									<option value="4">4명</option>'
		str += '									<option value="5">5명</option>'
		str += '									<option value="6">6명</option>'
		str += '									<option value="7">7명</option>'
		str += '									<option value="8">8명</option>'
		str += '									<option value="9">9명</option>'
		str += '									<option value="9">9명</option>'
		str += '									<option value="10">10명</option>'
		str += '								</select>'
		str += '							</div>'
		str += '						</span>'
		str += '					</div>'
		str += '					<div class="form-layer mb_24">'
		str += '						<span class="form-title">최대인원</span>'
		str += '						<span class="form-body">'
		str += '							<div class="select-style middle-size">'
		str += '								<select name="maxPeople">'
		str += '									<option value="" selected="selected" class="text-center">인원을 선택해주세요</option>'
		str += '									<option value="4">4명</option>'
		str += '									<option value="5">5명</option>'
		str += '									<option value="6">6명</option>'
		str += '									<option value="7">7명</option>'
		str += '									<option value="8">8명</option>'
		str += '									<option value="9">9명</option>'
		str += '									<option value="10">10명</option>'
		str += '								</select>'
		str += '							</div>'
		str += '						</span>'
		str += '					</div>'
		str += '				</td>'
		str += '				<td class="border_right"></td>'
		str += '			</tr>'
		str += '			<tr>'
		str += '				<th>객실 이미지<br>(최대 15장)</th>'
		str += '				<td class="bd_r_none">'
		str += '					<div class="form-layer mb_24">'
		str += '						<p class="order text-normal">* 객실의 전반적인 이미지를 업로드 해주시기 바랍니다.</p>'
		str += '						<p class="order text-normal">* 이미지 교체를 원하시면 "변경"을 선택하시고 삭제를 원하시면 우측 "삭제"를 선택하시기 바랍니다.</p>'
		str += '						<p class="order text-normal">* 이미지 장소는 짧게 기입해주시기 바랍니다. 예시) 객실명, 침대, 화장실 등</p>'
		str += '						<p class="order text-normal">* 첫 이미지가 메인 이미지입니다.</p>'
		str += '					</div>'
		str += '					<div class="form-layer mb_15">'
		str += '						<ul id="room-images">'
		str += '						</ul>'
		str += '					</div>'
		str += '					<div class="form-layer-text">'
		str += '						<button id="addimage" type="button" class="btn btn-default btn_add">+ 이미지 추가</button>'
		str += '					</div>'
		str += '				</td>'
		str += '				<td class="border_right">'
		str += '					<a href="javascript:void(0)" data-toggle="popover" data-original-title="" title=""> '
		str += '						<img id="tooltip" src="${pageContext.request.contextPath}/assets/image/host/tooltip.png">'
		str += '					</a>'
		str += '				</td>'
		str += '			</tr>'
		str += '			<tr>'
		str += '				<th>객실 이용 안내</th>'
		str += '				<td class="bd_r_none">'
		str += '					<div class="form-layer mb_24">'
		str += '						<span class="form-title">편의시설</span>'
		str += '						<span class="form-body">'
		str += '							<input class="form-control normal-size re-size" type="text" name="roomAmenities" placeholder="객실 내 편의시설을 간략하게 작성해주세요." value="">'
		str += '						</span>'
		str += '					</div>'
		str += '					<div class="form-layer mb_24">'
		str += '						<span class="form-title">추가정보</span>'
		str += '						<span class="form-body">'
		str += '							 <input class="form-control normal-size re-size" type="text" name="addInfo" placeholder="객실 내 편의시설을 간략하게 작성해주세요." value="">'
		str += '						</span>'
		str += '					</div>'
		str += '					<p id="detail">'
		str += '						<br> <br> 작성 예시 <br> <br> [편의시설] <br> 침구류, 120인치 스크린빔, 오디오, 에어컨, 냉장고, 전자레인지, 취사도구 등 <br> <br> [추가정보]<br> 스파 20,000 현장결제 <br> <br>'
		str += '					</p>'
		str += '				</td>'
		str += '				<td class="bd_r_none border_right"></td>'
		str += '			</tr>'
		str += '			<tr>'
		str += '				<th rowspan="3">요금 설정<br> <a href="${pageContext.request.contextPath}/host/rules" class="btn_th_link"> 준/성수기<br> 기간 설정 </a> </th>'
		str += '					<td class="bd_r_none">'
		str += '						<div class="form-layer">'
		str += '							<p class="description">'
		str += "								<strong id='priceinfo'>* 해당 페이지의 요금 설정은 객실별 기준가격입니다. 금액 수정은 등록 이후 '객실관리' 에서 가능합니다.</strong>"
		str += '							</p>'
		str += '						</div>'
		str += '						<div class="form-layer">'
		str += '							<span class="form-title large"> 기본<br>(비수기)</span>'
		str += '							<span id="pricewidth" class="form-body">'
		str += '								<div class="room-price room-price-wrap">'
		str += '									<div class="chk_date">'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-sun" name="gbWeeks1" value="sunday> 일'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-mon" name="gbWeeks1" value="monday"> 월'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-tue" name="gbWeeks1" value="tuesday"> 화'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-wed" name="gbWeeks1" value="wednesday"> 수'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-thu" name="gbWeeks1" value="thursday"> 목'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-fri" name="gbWeeks1" value="friday"> 금'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-sat" name="gbWeeks1" value="saturday"> 토'
		str += '										</label>'
		str += '									</div>'
		str += '									<div class="form-inline">'
		str += '										<label class="radio-inline">'
		str += '											정상가 : <input class="form-control input-sm" type="text" name="gbPrice1"> 원'
		str += '										</label>'
		str += '									</div>'
		str += '								</div>'
		str += '								<div class="room-price room-price-wrap">'
		str += '									<div class="chk_date">'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-sun" name="gbWeeks2" value="sunday"> 일'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-mon" name="gbWeeks2" value="monday"> 월'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-tue" name="gbWeeks2" value="tuesday"> 화'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-wed" name="gbWeeks2" value="wednesday"> 수'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-thu" name="gbWeeks2" value="thursday"> 목'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-fri" name="gbWeeks2" value="friday"> 금'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-sat" name="gbWeeks2" value="saturday"> 토'
		str += '										</label>'
		str += '									</div>'
		str += '									<div class="form-inline">'
		str += '										<label class="radio-inline">'
		str += '											정상가 : <input class="form-control input-sm" type="text" name="gbPrice2"> 원'
		str += '										</label>'
		str += '									</div>'
		str += '								</div>'
		str += '							</span>'
		str += '						</div>'
		str += '					</td>'
		str += '					<td class="bd_r_none border_right"></td>'
		str += '				</tr>'
		str += '				<tr>'
		str += '					<td class="bd_r_none">'
		str += '						<div class="form-layer">'
		str += '							<span class="form-title large"> 준성수기 </span>'
		str += '							<span id="pricewidth" class="form-body">'
		str += '								<div class="room-price room-price-wrap">'
		str += '									<div class="chk_date">'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-sun" name="jsWeeks1" value="sunday"> 일'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-mon" name="jsWeeks1" value="monday"> 월'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-tue" name="jsWeeks1" value="tuesday"> 화'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-wed" name="jsWeeks1" value="wednesday"> 수'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-thu" name="jsWeeks1" value="thursday"> 목'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-fri" name="jsWeeks1" value="friday"> 금'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-sat" name="jsWeeks1" value="saturday"> 토'
		str += '										</label>'
		str += '									</div>'
		str += '									<div class="form-inline">'
		str += '										<label class="radio-inline">'
		str += '											정상가 : <input class="form-control input-sm" type="text" name="jsPrice1"> 원'
		str += '										</label>'
		str += '									</div>'
		str += '								</div>'
		str += '								<div class="room-price room-price-wrap">'
		str += '									<div class="chk_date">'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-sun" name="jsWeeks2" value="sunday"> 일'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-mon" name="jsWeeks2" value="monday"> 월'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-tue" name="jsWeeks2" value="tuesday" > 화'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-wed" name="jsWeeks2" value="wednesday"> 수'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-thu" name="jsWeeks2" value="thursday"> 목'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-fri" name="jsWeeks2" value="friday"> 금'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-sat" name="jsWeeks2" value="saturday"> 토'
		str += '										</label>'
		str += '									</div>'
		str += '									<div class="form-inline">'
		str += '										<label class="radio-inline">'
		str += '											정상가 : <input class="form-control input-sm" type="text" name="jsPrice2"> 원'
		str += '										</label>'
		str += '									</div>'
		str += '								</div>'
		str += '							</span>'
		str += '						</div>'
		str += '					</td>'
		str += '					<td class="bd_r_none border_right"></td>'
		str += '				</tr>'
		str += '				<tr>'
		str += '					<td class="bd_r_none">'
		str += '						<div class="form-layer">'
		str += '							<span class="form-title large"> 성수기 </span>'
		str += '							<span id="pricewidth" class="form-body">'
		str += '								<div class="room-price room-price-wrap">'
		str += '									<div class="chk_date">'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-sun" name="sWeeks1" value="sunday"> 일'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-mon" name="sWeeks1" value="monday"> 월'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-tue" name="sWeeks1" value="tuesday"> 화'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-wed" name="sWeeks1" value="wednesday"> 수'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-thu" name="sWeeks1" value="thursday"> 목'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-fri" name="sWeeks1" value="friday"> 금'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-sat" name="sWeeks1" value="saturday"> 토'
		str += '										</label>'
		str += '									</div>'
		str += '									<div class="form-inline">'
		str += '										<label class="radio-inline">'
		str += '											정상가 : <input class="form-control input-sm" type="text" name="sPrice1"> 원'
		str += '										</label>'
		str += '									</div>'
		str += '								</div>'
		str += '								<div class="room-price room-price-wrap">'
		str += '									<div class="chk_date">'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-sun" name="sWeeks2" value="sunday"> 일'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-mon" name="sWeeks2" value="monday"> 월'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-tue" name="sWeeks2" value="tuesday" > 화'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-wed" name="sWeeks2" value="wednesday"> 수'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-thu" name="sWeeks2" value="thursday"> 목'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-fri" name="sWeeks2" value="friday"> 금'
		str += '										</label>'
		str += '										<label class="checkbox-inline icon-label">'
		str += '											<input type="checkbox" class="NORMAL-sat" name="sWeeks2" value="saturday"> 토'
		str += '										</label>'
		str += '									</div>'
		str += '									<div class="form-inline">'
		str += '										<label class="radio-inline">'
		str += '											정상가 : <input class="form-control input-sm" type="text" name="sPrice2"> 원'
		str += '										</label>'
		str += '									</div>'
		str += '								</div>'
		str += '							</span>'
		str += '						</div>'
		str += '					</td>'
		str += '					<td class="bd_r_none border_right"></td>'
		str += '				</tr>'
		str += '				<tr id="reservation">'
		str += '					<th>예약가능여부</th>'
		str += '					<td>'
		str += '						<div class="form-check form-switch">'
		str += '							<input class="form-check-input" type="checkbox" name="reserveAvai" value="Y" id="flexSwitchCheckChecked" checked>'
		str += '							<label class="form-check-label" for="flexSwitchCheckChecked">'
		str += '								객실 예약 허용'
		str += '							</label>'
		str += '						</div>'
		str += '						<p id="checkinfo" class="order text-normal">* 체크 해제 시 이용객들이 해당 객실을 예약 할 수 없습니다.</p>'
		str += '					</td>'
		str += '					<td class="bd_r_none border_right"></td>'
		str += '				</tr>'
		str += '			</tbody>'
		str += '		</table>'
		str += '	</div>'

	}
</script>

</html>