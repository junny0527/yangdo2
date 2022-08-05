<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용규칙 관리</title>
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/hostHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/rules.css">


<body>

<!-- header -->
<c:import url="/WEB-INF/views/includes/hostHeader.jsp"></c:import>
<!-- header -->

<div id = "container">
	
	<div id = "process" class = "center-block">
		<ul>
			<li class = "imgs">
				<a href="${pageContext.request.contextPath}/host/companyreg">
					<span><img src="${pageContext.request.contextPath}/assets/image/host/mypage.png"></span>
					<span>업체 등록</span>
				</a>
			</li>
			<li class = "prog">
				<br>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
			</li>
			<li class = "imgs">
				<a href="${pageContext.request.contextPath}/host/introreg">
					<span><img src="${pageContext.request.contextPath}/assets/image/host/introduce.png"></span>
					<span>소개작성(필수)</span>
				</a>
			</li>
			<li class = "prog">
				<br>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
			</li>
			<li class = "imgs">
				<a href="${pageContext.request.contextPath}/host/introregopt">
					<span><img src="${pageContext.request.contextPath}/assets/image/host/introduce.png"></span>
					<span>소개작성(선택)</span>
				</a>
			</li>
			<li class = "prog">
				<br>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
			</li>
			<li class = "imgs">
				<a href="${pageContext.request.contextPath}/host/rules">
					<span><img src="${pageContext.request.contextPath}/assets/image/host/rules.png" class = "active"></span>
					<span>이용규칙 관리</span>
				</a>
			</li>
			<li class = "prog">
				<br>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
				<span class = "do">&nbsp;</span>
				<span>&nbsp;</span>
			</li>
			<li class = "imgs">
				<a href="${pageContext.request.contextPath}/host/roomreg">
					<span><img src="${pageContext.request.contextPath}/assets/image/host/room.png"></span>
					<span>객실 관리</span>
				</a>
			</li>
		</ul>
	</div>
	
	<form class="form-horizontal">
		<div class="guest-title-layer mb_0 pb_0">
			<ul class = "order">
				<li>[이용규칙관리] 는 업체 공통적인 정책을 기입하는 란입니다. (체크인, 체크아웃, 성수기 설정 등)</li>
				<li>우측 물음표를 클릭하시면 웹에서 어떻게 표시되는지 확인이 가능합니다.</li>
			</ul>
		</div>
	
		<table class="table table-bordered resize">
			<thead></thead>
			<tbody>
				<tr>
					<th>이용시간</th>
					<td id = "usetime" class="bd_r_none">
						<div class="form-layer mb_24">
							<span id = "design" class="form-title chk">체크인 가능시간</span>
							<span class="form-body">
								<div class="select-style middle-size">
									<select name="checkin">
										<option value="13" selected="">오후 01:00</option>
										<option value="14">오후 02:00</option>
										<option value="15">오후 03:00</option>
										<option value="16">오후 04:00</option>
										<option value="17">오후 05:00</option>
										<option value="18">오후 06:00</option>
										<option value="19">오후 07:00</option>
										<option value="20">오후 08:00</option>
                                        </select>
                                </div>
                            </span>
                        </div>
                        
                        <div class="form-layer mb_24">
                        	<span id = "design" class="form-title chk">체크아웃 완료시간</span>
                        	<span class="form-body">
                        		<div class="select-style middle-size">
                        			<select name="checkout">
                        				<option value="10" selected="">오전 10:00</option>
                        				<option value="11">오전 11:00</option>
                        				<option value="12">오후 12:00</option>
                        				<option value="13">오후 01:00</option>
                        				<option value="14">오후 02:00</option>
                        				<option value="15">오후 03:00</option>
                        				<option value="16">오후 04:00</option>
                        				<option value="17">오후 05:00</option>
                       				</select>
                  				</div>
              				</span>
           				</div>
       				</td>
       				<td class="help-tooltip popover-container">
                            <!-- BOD-1441
                            <a href="javascript:void(0)" data-toggle="popover"><img src="/image/host/asset/icn_tooltip_16x16.png" /></a>
                            <div class="hide">
                                <span><img src="/image/host/tooltips/detail/img_tooltip05.png" /></span>
                            </div>
                            -->
                    </td>
                </tr>
                
                <tr id="season">
                	<th>성수기 설정</th>
                	
                	<td class="bd_r_none">
                		<div class="form-layer">
                			<span class="form-title text-center title_align">준 성수기</span>
                			<span class="form-body">
                				<div class="subpeak-item form-inline mb_24">
									<input type="hidden" data-name="subpeak_id" value="5764">
									<input class="form-control middle-size datepicker" type="text" data-name="subpeak_start" data-role="datepicker" readonly="readonly">
									<span class="range"> ~ </span>
									<input class="form-control middle-size datepicker" type="text" data-name="subpeak_end" data-role="datepicker" readonly="readonly">
									<button type="button" class="btn btn-yeogi remove-layer" data-role="remove-subpeak">삭제</button>
								</div>
								<div class="form form-subpeak">
									<div class="subpeak-item form-inline mb_24 hide">
										<input type="hidden" data-name="subpeak_id" value="">
										<input class="form-control middle-size datepicker" type="text" data-name="subpeak_start" data-role="datepicker" value="" readonly="readonly">
										<span class="range"> ~ </span>
										<input class="form-control middle-size datepicker" type="text" data-name="subpeak_end" data-role="datepicker" value="" readonly="readonly">
										<button type="button" class="btn btn-yeogi remove-layer" data-role="remove-subpeak">삭제</button>
									</div>
								</div>
							</span>
                        </div>
                        
                        <div class="form-layer-text">
                            <button type="button" class="btn btn-default" data-role="add-subpeak">+ 추가</button>
                        </div>
                        
                        <hr>

                        <div class="form-layer">
                        	<span class="form-title text-center title_align">성수기</span>
                            <span class="form-body">
                            	<div class="peak-item form-inline mb_24">
                            		<input type="hidden" data-name="peak_id" value="">
                            		<input class="form-control middle-size datepicker" type="text" data-name="peak_start" data-role="datepicker" value="" readonly="readonly">
                            		<span class="range"> ~ </span>
                            		<input class="form-control middle-size datepicker" type="text" data-name="peak_end" data-role="datepicker" value="" readonly="readonly">
                            		<button type="button" class="btn btn-yeogi remove-layer" data-role="remove-peak">삭제</button>
                           		</div>

                                <div class="form form-peak">
                                    <div class="peak-item form-inline mb_24 hide">
                                        <input type="hidden" data-name="peak_id" value="">
                                        <input class="form-control middle-size datepicker" type="text" data-name="peak_start" data-role="datepicker" value="" readonly="readonly">
                                        <span class="range"> ~ </span>
                                        <input class="form-control middle-size datepicker" type="text" data-name="peak_end" data-role="datepicker" value="" readonly="readonly">
                                        <button type="button" class="btn btn-yeogi remove-layer" data-role="remove-peak">삭제</button>
                                    </div>
                                </div>
                            </span>
                        </div>
                        
                        <div class="form-layer-text">
                            <button type="button" class="btn btn-default" data-role="add-peak">+ 추가</button>
                        </div>
                   	</td>
                   	
                    <td id = "qmark" class="help-tooltip popover-container">
                    	<a href="javascript:void(0)" data-toggle="popover" data-original-title="" title=""><img src="${pageContext.request.contextPath}/assets/image/host/tooltip.png"></a>
                    	<div class="hide">
                    		<span><img src="${pageContext.request.contextPath}/assets/image/host/tooltip.png"></span>
                   		</div>
               		</td>
               	</tr>
				<tr>
					<th>추가인원<br>추가비용</th>
					<td class="bd_r_none">
						<div id = "additionalpeople">
							<div class = "decrease">
								<span class="form-title">성인</span>
								<span class="form-body">
									<input class="form-control normal-size" type="text" value="">
								</span>
								<span class="form-body">
									 원
								</span>
							</div>
							
							<div class = "decrease">
								<span class="form-title">아동</span>
								<span class="form-body">
									<input class="form-control normal-size" type="text" value="">
								</span>
								<span class="form-body">
									 원
								</span>
							</div>
							
							
							
							<div class = "decrease">
								<span class="form-title">유아</span>
								<span class="form-body">
									<input class="form-control normal-size" type="text" value="">
								</span>
								<span class="form-body">
									 원
								</span>
							</div>
						</div>
						<br>
						
						<p class = "description">* 성인(만 19세 이상), 아동(만 5세 이상, 만 19세 미만), 유아 (만 5세 미만).</p>
                   		<p class = "description">* 성인, 아동, 유아의 연령 기준은 사측의 규정을 따릅니다.</p>
       				</td>
       				<td class="help-tooltip popover-container">
               		</td>
                </tr>
				
               	<tr>
					<th>취소 및 <br>환불규정</th>
					<td class="bd_r_none">
						<div class="form-layer mb_24">
							<span class="form-body">
								<div class="radio-inline">
									<input id = "tenday" class="form-check-input" type="radio">
									<label for = "tenday" class="form-check-label">
									10일 전
									</label>
								</div>
								<div class="radio-inline">
									<input id = "sevenday" class="form-check-input" type="radio">
									<label for = "sevenday" class="form-check-label">
									7일 전
									</label>
								</div>
								<div class="radio-inline">
									<input id = "sixday" class="form-check-input" type="radio">
									<label for = "sixday" class="form-check-label">
									6일 전
									</label>
								</div>
							</span>
                        </div>
                        <p class = "description">* 환불 비율 적용 기준 날짜를 설정하실 수 있으며 취소 및 환불의 비율은 사측의 기준으로 일괄 적용됩니다.</p>
                        <p class = "description">* 환불 비율 책정 기준은 아래와 같습니다.</p>
                        
                        <div>
                        	<table id = "rules" border = '1'>
                        		<thead>
                        			<tr>
                        				<th>기준날짜</th>
                        				<th>10일 전</th>
                        				<th>7일 전</th>
                        				<th>6일 전</th>
                        			</tr>
                        		</thead>
                        		<tbody>
                        			<tr>
                        				<td id = "rateguide" rowspan = '11'>예약 취소 시 <br> 환불액 비율</td>
                        				<td>10일 전 : 100%</td>
                        				<td rowspan = "3"></td>
                        				<td rowspan = "4"></td>
                        			</tr>
                        			<tr>
                        				<td>9일 전 : 90%</td>
                        			</tr>
                        			<tr>
                        				<td>8일 전 : 80%</td>
                        			</tr>
                        			<tr>
                        				<td>7일 전 : 70%</td>
                        				<td>7일 전 : 100%</td>
                        			</tr>
                        			<tr>
                        				<td>6일 전 : 60%</td>
                        				<td>6일 전 : 90%</td>
                        				<td>6일 전 : 100%</td>
                        			</tr>
                        			<tr>
                        				<td>5일 전 : 50%</td>
                        				<td>5일 전 : 85%</td>
                        				<td>5일 전 : 90%</td>
                        			</tr>
                        			<tr>
                        				<td>4일 전 : 40%</td>
                        				<td>4일 전 : 80%</td>
                        				<td>4일 전 : 80%</td>
                        			</tr>
                        			<tr>
                        				<td>3일 전 : 30%</td>
                        				<td>3일 전 : 70%</td>
                        				<td>3일 전 : 70%</td>
                        			</tr>
                        			<tr>
                        				<td>2일 전 : 20%</td>
                        				<td>2일 전 : 50%</td>
                        				<td>2일 전 : 50%</td>
                        			</tr>
                        			<tr>
                        				<td>1일 전 : 10%</td>
                        				<td>1일 전 : 30%</td>
                        				<td>1일 전 : 30%</td>
                        			</tr>
                        			<tr>
                        				<td colspan = "3">숙박일 당일, no-show 환불 불가</td>
                        			</tr>
                        		</tbody>
                        	</table>
                        
                        </div>
                        
       				</td>
       				
       				<td id = "qmark2" class="help-tooltip popover-container">
               		</td>
                </tr>
       		</tbody>
        </table>
        
        <div class="submit-layer center-block">
        	<button class="btn btn-yeogi btn-submit" type="submit">저장하기</button>
       	</div>
	</form>
	
<!-- container -->
</div>

<!-- footer -->
<c:import url="/WEB-INF/views/includes/hostFooter.jsp"></c:import>
<!-- footer -->
</body>
</html>