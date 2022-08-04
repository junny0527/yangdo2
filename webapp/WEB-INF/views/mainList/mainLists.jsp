<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./assets/css/includes/userHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="./assets/css/mainList/mainLists.css">
<link>
<body>
	<!-- wrap -->
	<div id="wrap" class="wrap show">
		<!-- header -->
		<c:import url="/WEB-INF/views/includes/userHeader.jsp"></c:import>
		<!-- header -->
		
		<!-- header 지역선택 -->
		<div class="sub_top_wrap">
			<div class="sub_top">
				<h2>펜션</h2>
				<div class="area">
					<div class="btn_area align_vertical">
						<span class="center-block">경기/인천</span>
						양평/용문
					</div>
				</div>
			</div>
		</div>
		<!-- header 지역선택 -->
		
		<!-- content -->
		<div id="content" class="sub_wrap">
			<!-- fillter -->
			<div class="filter_wrap">
				<section class="date_wrap">
					<h3>날짜</h3>
					<div class="btn_date">
						<img id="calendar" src="./assets/image/mainList/ico_cal_2.png">
						<span class="date_view">
							<b>8.2 ~ 8.3</b>
							<em><em>·1박</em></em>
							
						</span>
					</div>
				</section>
				<h3>상세조건</h3>
				<div class="btn_wrap">
					<button id="btn_child1" type="button">초기화</button>
					<button id="btn_child2" type="submit">적용</button>
				</div>
				<section>
					<ul>
						<li>
							<input type="checkbox" id="yangdo" name="reserve[]" class="inp_chk" value="">
							<label for="yangdo" class="label_chk">양도 중</label>
						</li>
					</ul>
				</section>
				<section>
					<input type="hidden" id="persons" name="persons">
					<strong>인원</strong>
					<div class="cnt_people">
						<button type="button" class="disable dn">-</button>
						<span>2</span>
						<button type="button" class="up">+</button>						
					</div>
				</section>
				<section>
					<strong>공용시설</strong>
					<ul class="hide_type half">
						<li>
							<input type="checkbox" id="swimming_pool" name="swimming_pool" class="inp_chk">
							<label for="swimming_pool" class="label_chk">수영장</label>
						</li>
						<li>
							<input type="checkbox" id="football" name="football" class="inp_chk">
							<label for="football" class="label_chk">족구장</label>
						</li>
						<li>
							<input type="checkbox" id="cafe" name="cafe" class="inp_chk">
							<label for="cafe" class="label_chk">카페</label>
						</li>
						<li>
							<input type="checkbox" id="singroom" name="singroom" class="inp_chk">
							<label for="singroom" class="label_chk">노래방</label>
						</li>
						<li>
							<input type="checkbox" id="store" name="store" class="inp_chk">
							<label for="store" class="label_chk">편의점</label>
						</li>
						<li>
							<input type="checkbox" id="parking" name="parking" class="inp_chk">
							<label for="parking" class="label_chk">주차장</label>
						</li>
						<li>
							<input type="checkbox" id="bbq" name="bbq" class="inp_chk">
							<label for="bbq" class="label_chk">BBQ</label>
						</li>
						<li>
							<input type="checkbox" id="restaurant" name="restaurant" class="inp_chk">
							<label for="restaurant" class="label_chk">주방/식당</label>
						</li>
						<li>
							<input type="checkbox" id="smoking_room" name="smoking_room" class="inp_chk">
							<label for="smoking_room" class="label_chk">흡연부스</label>
						</li>
					</ul>
				</section>
				<section>
					<strong>객실 내 시설</strong>
					<ul class="hide_type half">
						<li>
							<input type="checkbox" id="refrigerator" name="refrigerator" class="inp_chk">
							<label for="refrigerator" class="label_chk">냉장고</label>
						</li>
						<li>
							<input type="checkbox" id="aircon" name="aircon" class="inp_chk">
							<label for="aircon" class="label_chk">에어컨</label>
						</li>
						<li>
							<input type="checkbox" id="tv" name="tv" class="inp_chk">
							<label for="tv" class="label_chk">TV</label>
						</li>
						<li>
							<input type="checkbox" id="wifi" name="wifi" class="inp_chk">
							<label for="wifi" class="label_chk">와이파이</label>
						</li>
						<li>
							<input type="checkbox" id="bathroom_ware" name="bathroom_ware" class="inp_chk">
							<label for="bathroom_ware" class="label_chk">욕실용품</label>
						</li>
						<li>
							<input type="checkbox" id="washing_mu" name="washing_mu" class="inp_chk">
							<label for="washing_mu" class="label_chk">세탁기</label>
						</li>
						<li>
							<input type="checkbox" id="dry_mu" name="dry_mu" class="inp_chk">
							<label for="dry_mu" class="label_chk">드라이기</label>
						</li>
						<li>
							<input type="checkbox" id="bathtub" name="bathtub" class="inp_chk">
							<label for="bathtub" class="label_chk">욕조</label>
						</li>
						<li>
							<input type="checkbox" id="cook_ok" name="cook_ok" class="inp_chk">
							<label for="cook_ok" class="label_chk">취사가능</label>
						</li>
						<li>
							<input type="checkbox" id="room_smoking" name="room_smoking" class="inp_chk">
							<label for="room_smoking" class="label_chk">객실 내 흡연</label>
						</li>
						<li>
							<input type="checkbox" id="dog" name="dog" class="inp_chk">
							<label for="dog" class="label_chk">반려견 동반</label>
						</li>
					</ul>
				</section>
			</div>
			<!-- fillter -->
			<!-- List -->
			<div class="list_wrap">
				<div class="top_sort">
					<div class="pc">
						<div class="btn_wrap width_4">
							<button type="button" data-sort="HIT" class="on">
								<span>추천 순</span>
							</button>
							<button type="button" data-sort="DISTANCE" class="">
								<span>거리 순</span>
							</button>
							<button type="button" data-sort="LOWPRICE" class="">
								<span>낮은 가격 순</span>
							</button>
							<button type="button" data-sort="HIGHPRICE" class="">
								<span>높은 가격 순</span>
							</button>
						</div>
						<button type="button" class="btn_map text-center" onclick="pop_map_pc();">
						지도
						</button>
					</div>
				</div>
				<div id="poduct_list_area">
					<div class="title">
						<h3>양평군</h3>
					</div>
					<!-- 사진정보 -->
					<ul>					
						<li class="list_2 adcno3">
							<a href="">
								<p class="pic">
									<img class="lazy align" src="./assets/image/mainList/62e1e83e21944.jpg" style="margin-top: -159px; display: block;">
								</p>
								<div class="stage gra_black_vertical clearfix">
									<div class="evt_info">
										<span>양도중</span>
									</div>
									<div class="name">
										<strong>그린하우스펜션</strong>
										<p class="score">
											<em>4.5</em>
											<span>좋아요 (13)</span>
										</p>
										<p>양평군 | 백동낚시터 차량 10분</p>
									</div>
									<div class="price">
										<div class="map_html">
											<p>
												<b>350,000원</b>
											</p>	
										</div>
										<p>
											<b>350,000원</b>
										</p>
									</div>
								</div>
							</a>
						</li>
					</ul>	
					<!-- 사진 정보 -->
					<!-- 사진정보 -->
					<ul>					
						<li class="list_2 adcno3">
							<a href="">
								<p class="pic">
									<img class="lazy align" src="./assets/image/mainList/62e1e83e21944.jpg" style="margin-top: -159px; display: block;">
								</p>
								<div class="stage gra_black_vertical">
									<div class="evt_info">
										<span>양도중</span>
									</div>
									<div class="name">
										<strong>그린하우스펜션</strong>
										<p class="score">
											<em>4.5</em>
											<span>좋아요 (13)</span>
										</p>
										<p>양평군 | 백동낚시터 차량 10분</p>
									</div>
									<div class="price">
										<div class="map_html">
											<p>
												<b>350,000원</b>
											</p>	
										</div>
										<p>
											<b>350,000원</b>
										</p>
									</div>
								</div>
							</a>
						</li>
					</ul>	
					<!-- 사진 정보 -->
					<!-- 사진정보 -->
					<ul>					
						<li class="list_2 adcno3">
							<a href="">
								<p class="pic">
									<img class="lazy align" src="./assets/image/mainList/62e1e83e21944.jpg" style="margin-top: -159px; display: block;">
								</p>
								<div class="stage gra_black_vertical">
									
									<div class="name">
										<strong>그린하우스펜션</strong>
										<p class="score">
											<em>4.5</em>
											<span>좋아요 (13)</span>
										</p>
										<p>양평군 | 백동낚시터 차량 10분</p>
									</div>
									<div class="price">
										<div class="map_html">
											<p>
												<b>350,000원</b>
											</p>	
										</div>
										<p>
											<b>350,000원</b>
										</p>
									</div>
								</div>
							</a>
						</li>
					</ul>	
					<!-- 사진 정보 -->
				</div>
			</div>
			<!-- List -->
		</div>
		<!-- content -->
		
		<!-- footer -->
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
		
		<!-- footer -->
	</div>
	<!-- wrap -->
	
	<!-- 날짜선택 달력 -->
	<div class="comiseo-daterangepicker comiseo-daterangepicker-right ui-widget ui-widget-content ui-corner-all ui-front" style="left: 456px; top: 0px;">
		<div class="comiseo-daterangepicker-main ui-widget-content">
			<div class="comiseo-daterangepicker-calendar ui-widget-content hasDatepicker" id="dp1659620751080">
				<div class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"  style="display: block;">
					<!-- 년 월 -->
					<div class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all">
						<!-- 날짜 넘기는 왼쪽 버튼 -->
						<a class="ui-datepicker-prev ui-corner-all ui-state-disabled" title="Prev">
							<span class="ui-icon ui-icon-circle-triangle-w">Prev</span>
						</a>
						<!-- 날짜 넘기는 왼쪽버튼 -->
						
						<!-- 날짜 넘기는 오른쪽버튼 -->
						<a class="ui-datepicker-next ui-corner-all" data-handler="Next" data-event="click" title="Next">
							<span class="ui-icon ui-icon-circle-triangle-e">Next</span>
						</a>
						<!-- 날짜 넘기는 오른쪽버튼 -->
						
						<!-- 달력넘기는 영역 -->
						<div class="ui-datepicker-title">
							&nbsp;
							<span class="ui-datepicker-year">2022년&nbsp;</span>
							<span class="ui-datepicker-month">8월</span>
						</div>
						<!-- 달력넘기는 영역 -->
					</div>	
						<!-- 달력 -->
						<!-- 달력 요일 -->
		<table class="ui-datepicker-calendar">
			<thead>
				<tr>
					<th scope="col" class="ui-datepicker-week-end">
						<span title="일">일</span>
					</th>
					<th scope="col" >
						<span title="월">월</span>
					</th>
					<th scope="col" >
						<span title="화">화</span>
					</th>
					<th scope="col" >
						<span title="수">수</span>
					</th>
					<th scope="col" >
						<span title="목">목</span>
					</th>
					<th scope="col" >
						<span title="금">금</span>
					</th>
					<th scope="col" class="ui-datepicker-week-end">
						<span title="토">토</span>
					</th>
				</tr>
			</thead>
			<!-- 달력 요일 -->
			
					<!-- 달력 날짜-->
					<tbody>
						<tr>
							<td class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
							<td class="">
								<span class="ui-state-default">1</span>
							</td>
							<td class="">
								<span class="ui-state-default">2</span>
							</td>
							<td class="">
								<span class="ui-state-default">3</span>
							</td>
							<td class="">
								<span class="ui-state-default">4</span>
							</td>
							<td class="">
								<span class="ui-state-default">5</span>
							</td>
							<td class=" ui-datepicker-week-end sa-day ui-state-highlight ">
								<span class="ui-state-default">6</span>
							</td>
						</tr>
						<tr>
							<td class="ui-datepicker-week-end sun-day">
								<span class="ui-state-default">7</span>
							</td>
							<td class="">
								<span class="ui-state-default">8</span>
							</td>
							<td class="">
								<span class="ui-state-default">9</span>
							</td>
							<td class="">
								<span class="ui-state-default">10</span>
							</td>
							<td class="">
								<span class="ui-state-default">11</span>
							</td>
							<td class="">
								<span class="ui-state-default">12</span>
							</td>
							<td class="sa-day">
								<span class="ui-state-default">13</span>
							</td>
						</tr>
						<tr>
							<td class="ui-datepicker-week-end sun-day">
								<span class="ui-state-default">14</span>
							</td>
							<td class="">
								<span class="ui-state-default">15</span>
							</td>
							<td class="">
								<span class="ui-state-default">16</span>
							</td>
							<td class="">
								<span class="ui-state-default">17</span>
							</td>
							<td class="">
								<span class="ui-state-default">18</span>
							</td>
							<td class="">
								<span class="ui-state-default">19</span>
							</td>
							<td class="sa-day">
								<span class="ui-state-default">20</span>
							</td>
						</tr>
						<tr>
							<td class="ui-datepicker-week-end sun-day">
								<span class="ui-state-default">21</span>
							</td>
							<td class="">
								<span class="ui-state-default">22</span>
							</td>
							<td class="">
								<span class="ui-state-default">23</span>
							</td>
							<td class="">
								<span class="ui-state-default">24</span>
							</td>
							<td class="">
								<span class="ui-state-default">25</span>
							</td>
							<td class="">
								<span class="ui-state-default">26</span>
							</td>
							<td class="sa-day">
								<span class="ui-state-default">27</span>
							</td>
						</tr>
						<tr>
							<td class="ui-datepicker-week-end sun-day">
								<span class="ui-state-default">28</span>
							</td>
							<td class="">
								<span class="ui-state-default">29</span>
							</td>
							<td class="">
								<span class="ui-state-default">30</span>
							</td>
							<td class="">
								<span class="ui-state-default">31</span>
							</td>
							<td class="">
								<span class="ui-state-default">&nbsp;</span>
							</td>
							<td class="">
								<span class="ui-state-default">&nbsp;</span>
							</td>
							<td class="sa-day">
								<span class="ui-state-default">&nbsp;</span>
							</td>
						</tr>
					</tbody>
					<!-- 달력 날짜-->
				</table>
				</div>
			</div>
		</div>
		
		<!-- 선택완료 -->
		<div class="ui-helper-clearfix">
			<div class="comiseo-daterangepicker-buttonpanel">
				<button type="button" class="ui-priority-primary ui-button ui-corner-all ui-widget">
					선택완료
				</button>
				<!-- 버튼 clear / cancel -->
				<!--  
					<button type="button" class="ui-priority-primary ui-button ui-corner-all ui-widget">
						Clear
					</button>
					<button type="button" class="ui-priority-primary ui-button ui-corner-all ui-widget">
						Cancel
					</button>
					-->
				<!-- 버튼 clear / cancel -->
			</div>
		</div>
		<!-- 선택완료 -->
		
	</div>
	<!--달력 -->
	
	
	
</body>
</html>