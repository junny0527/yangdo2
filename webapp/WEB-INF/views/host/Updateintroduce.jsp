<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소개 작성(필수)</title>
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/hostHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/introduce.css">

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
					<span><img src="${pageContext.request.contextPath}/assets/image/host/introduce.png" class = "active"></span>
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
					<span><img src="${pageContext.request.contextPath}/assets/image/host/rules.png"></span>
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
		<!-- 프로세스 -->

		<div id="content">
			<div class="list-layer">
				<form class="form-horizontal" id="intro-form" method="post" action="/guest/intro" name="intro" enctype="multipart/form-data">
					<input type="hidden" name="ano" value="">
					<input type="hidden" name="uno" value="">
					<input class="form-control normal-size" id="input_jibunAddress" type="hidden" name="jibun_address1">
					
					<div id = "design">
						<div class="guest-title-layer mb_0 pb_0">
							<ul>
								<li class = "instruction">[소개 작성] 은 펜션전체를 소개하는 양식입니다. (사진, 오시는 길 등)</li>
								<li class = "instruction">우측 물음표를 클릭하시면 웹에서 어떻게 표시되는지 확인이 가능합니다.</li>
							</ul>
						</div>
						
						<h3 class="guest-h3">[필수 기입 정보]</h3>
					</div>
					<table id="intro" class="table resize">
						<thead></thead>
						<tbody>
							<!-- 기본정보 -->
							<tr>
								<th id = "firstline">펜션<br> 기본 정보
								</th>
								<td id = "firstline" class="bd_r_none">
									<div class="form-layer mb_24">
										<span class="form-title">펜션명</span> <span class="form-body"> <input class="form-control normal-size" type="text" name="aname" placeholder="업체명을 입력하세요." value="">
										</span>
									</div>
									<div class="form-layer mb_24">
										<span class="form-title">펜션 주소</span>
										<!-- BOD-1458 -->
										<span class="form-body">
											<input class="form-control normal-size" id="input_roadAddress" type="text" name="address1" readonly placeholder="업체 주소를 입력하세요." value="">
											<button type="button" class="btn btn-yeogi btn-normal-layer" onclick="daumPostCode()">주소 검색</button>
										</span>
									</div>
									<div class="form-layer newline mb_24">
										<span class="form-body">
											<input id="address"class="form-control normal-size" type="text" name="address2" placeholder="나머지 주소를 입력하세요." value="">
										</span>
									</div>
									<div class="form-layer-text">
										<input type="hidden" id = "delivername" value = "">
										<input type="hidden" id = "postalcode" value = "">
										<div id = "legalname" class = "order">
											<input type = "text" readonly value = "법정동 코드: ">
											<input id = "lawcode" type="text" readonly value = "">
											<input id = "fullname" type="text" readonly value = "">
										</div>
									</div>
								</td>
								<td id = "firstline">
									<a href="javascript:void(0)" data-toggle="popover" data-original-title="" title="">
										<img id="tooltip" src="${pageContext.request.contextPath}/assets/image/host/tooltip.png">
									</a>
								</td>
							</tr>
							<!--// 기본정보 -->

							<!-- 업체 이미지 -->
							<tr>
								<th>업체 이미지<br>(최대 20장)
								</th>
								<td class="bd_r_none">
									<div class="form-layer mb_15 text-left">
										<p class="order text-normal">* 객실 및 업체 전경, 로비, 주차장 등 업체의 전반적인 이미지를 업로드해주시기 바랍니다.</p>
										<p class="order text-normal">* 이미지 교체를 원하시면 "변경"을 선택하시고 삭제를 원하시면 우측 "삭제"를 선택하시기 바랍니다.</p>
										<p class="order text-normal">* 이미지 장소는 짧게 기입해주시기 바랍니다. 예시) 전경, 로비, 주차장 등</p>
										<p class="order text-normal">* 첫 이미지가 메인 이미지입니다.</p>
									</div>

									<div class="form-layer mb_15">
										<ul id="house-images">
											<li class="backgrou">
												<input type="hidden" name="adino[]" value="235381">
												<div>
													<img data-adino="235381" src="${pageContext.request.contextPath}/assets/image/host/logout.png" class="img-rounded">
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
								
								<td class="help-tooltip popover-container"><a href="javascript:void(0)" data-toggle="popover"><img id="tooltip" src="${pageContext.request.contextPath}/assets/image/host/tooltip.png"></a>
									<div class="hide">
										<span><img src="${pageContext.request.contextPath}/assets/image/host/tooltip.png"></span>
									</div>
								</td>
							</tr>
							<!--// 업체 이미지 -->

							<!-- 편의시설/서비스 안내 -->
							<tr id="target_host">
								<th>공용시설<br>서비스 안내
								</th>
								<td class="bd_r_none">
									<div class="form-layer align_chk">
										<label for="theme0" class="checkbox-inline icon-label"> <input type="checkbox" id="theme0" name="ad_theme[]" value="0">수영장</label>
										<label for="theme1" class="checkbox-inline icon-label"> <input type="checkbox" id="theme1" name="ad_theme[]" value="1">족구장</label>
										<label for="theme2" class="checkbox-inline icon-label"> <input type="checkbox" id="theme2" name="ad_theme[]" value="2">카페</label>
										<label for="theme3" class="checkbox-inline icon-label"> <input type="checkbox" id="theme3" name="ad_theme[]" value="3">노래방</label>
										<label for="theme4" class="checkbox-inline icon-label"> <input type="checkbox" id="theme4" name="ad_theme[]" value="4">편의점</label>
										<label for="theme5" class="checkbox-inline icon-label"> <input type="checkbox" id="theme5" name="ad_theme[]" value="5">주차장</label>
										<label for="theme6" class="checkbox-inline icon-label"> <input type="checkbox" id="theme6" name="ad_theme[]" value="6">BBQ</label>
										<label for="theme7" class="checkbox-inline icon-label"> <input type="checkbox" id="theme7" name="ad_theme[]" value="7">주방/식당</label>
										<label for="theme8" class="checkbox-inline icon-label"> <input type="checkbox" id="theme8" name="ad_theme[]" value="8">흡연부스</label>
									</div>
								</td>
								<td class="help-tooltip popover-container"><a href="javascript:void(0)" data-toggle="popover"><img id="tooltip" src="${pageContext.request.contextPath}/assets/image/host/tooltip.png"></a>
									<div class="hide">
										<span><img src="${pageContext.request.contextPath}/assets/image/host/tooltip.png"></span>
									</div></td>
							</tr>
							<tr id="target_host1">
								<th>편의시설<br>서비스 안내
								</th>
								<td class="bd_r_none">
									<div class="form-layer align_chk">
										<label for="theme9" class="checkbox-inline icon-label"> <input type="checkbox" id="theme9" name="ad_theme[]" value="90">냉장고</label>
										<label for="theme10" class="checkbox-inline icon-label"> <input type="checkbox" id="theme10" name="ad_theme[]" value="10">에어컨</label>
										<label for="theme11" class="checkbox-inline icon-label"> <input type="checkbox" id="theme11" name="ad_theme[]" value="11">TV</label>
										<label for="theme12" class="checkbox-inline icon-label"> <input type="checkbox" id="theme12" name="ad_theme[]" value="12">와이파이</label>
										<label for="theme13" class="checkbox-inline icon-label"> <input type="checkbox" id="theme13" name="ad_theme[]" value="13">욕실용품</label>
										<label for="theme14" class="checkbox-inline icon-label"> <input type="checkbox" id="theme14" name="ad_theme[]" value="14">세탁기</label>
										<label for="theme15" class="checkbox-inline icon-label"> <input type="checkbox" id="theme15" name="ad_theme[]" value="15">드라이기</label>
										<label for="theme16" class="checkbox-inline icon-label"> <input type="checkbox" id="theme16" name="ad_theme[]" value="16">욕조</label>
										<label for="theme17" class="checkbox-inline icon-label"> <input type="checkbox" id="theme17" name="ad_theme[]" value="17">반려견동반</label>
										<label for="theme18" class="checkbox-inline icon-label"> <input type="checkbox" id="theme18" name="ad_theme[]" value="18">객실 내 흡연</label>
										<label for="theme19" class="checkbox-inline icon-label"> <input type="checkbox" id="theme19" name="ad_theme[]" value="19">취사가능</label>
									</div>
								</td>
								<td class="help-tooltip popover-container"><a href="javascript:void(0)" data-toggle="popover"><img id="tooltip" src="${pageContext.request.contextPath}/assets/image/host/tooltip.png"></a>
									<div class="hide">
										<span><img src="${pageContext.request.contextPath}/assets/image/host/tooltip.png"></span>
									</div></td>
							</tr>
							<!--// 편의시설/서비스 안내 -->
							<!-- TODO : BOD-1252 sub BOD-1268 호스트하우스 업주CMS 에서 해당 기능 제한함. 정책변경에 의해 해제할 수 있음. 주석처리함. -->
							<!--
                    <tr id="target_host">
                       <th>취향필터</th>
                        <td class="bd_r_none">
                            <div class="form-layer align_chk">
                                                                    <label for="favorite_36" class="checkbox-inline icon-label">
                                        <input type="checkbox" id="favorite_36" name="favorite_info[]"  value="36" />서핑스팟근처                                    </label>
                                                                    <label for="favorite_73" class="checkbox-inline icon-label">
                                        <input type="checkbox" id="favorite_73" name="favorite_info[]"  value="73" />파티가능                                    </label>
                                                                    <label for="favorite_12" class="checkbox-inline icon-label">
                                        <input type="checkbox" id="favorite_12" name="favorite_info[]"  value="12" />루프탑라운지                                    </label>
                                                                    <label for="favorite_26" class="checkbox-inline icon-label">
                                        <input type="checkbox" id="favorite_26" name="favorite_info[]"  value="26" />조식맛집                                    </label>
                                                                    <label for="favorite_11" class="checkbox-inline icon-label">
                                        <input type="checkbox" id="favorite_11" name="favorite_info[]"  value="11" />오션뷰                                    </label>
                                                            </div>
                        </td>
                        <td class="help-tooltip popover-container"></td>
                    </tr>
                    -->

							<!-- 오시는길 -->
							<tr>
								<th>오시는길</th>
								<td colspan="2">
									<div id = "visitpath" class="form-layer">
										<input type="text" class="form-control writeform" name="traffic_info" placeholder="주요 버스터미널, 기차역 등에서 숙소를 찾아가는 방법을 간단히 기재해 주세요. 예시)대성리역 차량 10분" value=""> <br> 
										<input type="text" class="form-control writeform" name="traffic_info2" placeholder="주요 버스터미널, 기차역 등에서 숙소를 찾아가는 방법을 간단히 기재해 주세요. 예시)대성리역 차량 10분" value=""> <br> 
										<input type="text" class="form-control writeform" name="traffic_info3" placeholder="주요 버스터미널, 기차역 등에서 숙소를 찾아가는 방법을 간단히 기재해 주세요. 예시)대성리역 차량 10분" value=""> 
									</div> <span class="exam-button"> <i class="fa fa-angle-up" aria-hidden="true"></i></span>

								</td>
							</tr>
							<!--// 오시는길 -->
							<tr>
								<th>주변 정보</th>
								<td colspan="2">
									<div class="form-layer-text">
										<p class="order text-normal">* 숙소 주변의 명소(교통, 관광, 쇼핑 등 )와 이동수단, 게스트하우스로부터 소요시간을 기입해주세요.</p>
										<p class="order text-normal">* [명소 / 이동수단 / 소요시간] 순으로 한줄만 입력이 가능하며 최대 3개까지 작성 가능합니다.</p>
										<p class="order text-normal">* 예시) 가산디지털단지역 도보 5분</p>
										<p class="order text-normal">* 예시) 팔당댐 차량 10분</p>
									</div> <br>
									<div class="form-layer">
										<input type="text" class="form-control writeform" name="traffic_info" placeholder="교통, 관광, 쇼핑 명소부터 게스트하우스까지의 소요시간을 작성해 주세요." value=""> <br> 
										<input type="text" class="form-control writeform" name="traffic_info2" placeholder="교통, 관광, 쇼핑 명소부터 게스트하우스까지의 소요시간을 작성해 주세요." value=""> <br> 
										<input type="text" class="form-control writeform" name="traffic_info3" placeholder="교통, 관광, 쇼핑 명소부터 게스트하우스까지의 소요시간을 작성해 주세요." value="">
									</div> <span class="exam-button"> <i class="fa fa-angle-up" aria-hidden="true"></i></span>
									<div class="exam-layer-guide3">
									</div>
								</td>
							</tr>
							<tr>
								<th>숙소 이용 규칙
								</th>
								<td colspan="2">
									<div class="form-layer">
										<textarea class="form-control textarea-layer" rows="6" name="detail[]" placeholder="숙소 내 필수 이용규칙이 있을 경우 기재해주세요."></textarea>
									</div> <span class="exam-button"> <i class="fa fa-angle-up" aria-hidden="true"></i></span>
									<div class="exam-layer-guide4">
										<div id="detail" class="exam-detail-layer">
											<ul>
												<li>작성 예시</li>
												<li>전 객실 금연</li>
												<li>(금연건물로 흡연 시 미환불 강제퇴실)</li>		
												<li>애완동물 출입금지</li>	
												<li>금, 토 24시간 출입 자유</li>
												<li>(단, 일~월 소등시간 AM 1시, 1시 이후 출입 제한)</li>
												<li>AM 1시 이후 샤워 불가</li>	
												<li>객실 내 식음 금지, 식당 이용</li>								
											</ul>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>

					<div class="submit-layer center-block">
						<button class="btn btn-yeogi btn-submit" type="submit">저장하기</button>
					</div>
				</form>
			</div>
		</div>
		<!-- 컨텐츠 -->
		<!-- container -->
	</div>

<!-- footer -->
<c:import url="/WEB-INF/views/includes/hostFooter.jsp"></c:import>
<!-- footer -->
	
<!-- 이미지 업로드 modal -->
<div id = "img-uploader" class = "modal fade in" aria-hidden="false">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title">이미지 업로드</h4>
			</div>
			
			<div class="modal-body" style="height:300px">
				<div id="drag-and-drop-zone" style="height:200px;border:1px dashed gray;border-radius:3px;position:relative">
					<label style="position:relative;left:50%;margin-left:-100px;top:50%;margin-top:-15px;overflow:hidden">
						<span class="btn btn-primary">드래그 하시거나 클릭하세요.</span>
						<input style="position:absolute;left:0;top:0;border-width: 0 0 100px 200px;border:solid transparent;direction: ltr;opacity:.0;cursor:pointer" type="file" name="files[]" multiple="multiple" title="Click to add Files">
					</label>
				</div>
			<div id="upload-list" style="margin-top:10px"></div>
			<span>
				* 여러장을 한꺼번에 드래그하여 업로드 할 수 있습니다. <br><strong>&nbsp;&nbsp;<font color="#ff0000">최대 20장 까지 등록이 가능합니다.</font></strong>
				<br>
				<strong>&nbsp;&nbsp;사진 권장사이즈 : 1920 * 1080 또는 960 * 540</strong>
			</span>
			<span class="btn btn-success" data-dismiss="modal" aria-label="Close" style="float: right; margin-top:-25px;">확인</span>
			</div>
		</div>
	</div>
</div>
<div class="modal-backdrop fade in"></div>
<!-- 이미지 업로드 modal -->	

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
        <button id = "cancel" type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-danger">삭제</button>
      </div>
    </div>
  </div>
</div>
<!-- 이미지 삭제 modal -->

<!-- popover -->
<div id = "basicinfo" class = "popover fade left in" role = "tooltip">
</div>

<div id = "basicinfo" class = "popover fade left in" role = "tooltip">
</div>

<div id = "basicinfo" class = "popover fade left in" role = "tooltip">
</div>


</body>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function daumPostCode(){
		 new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수
	                var delname = data.sigungu;
	                var fullname = data.sido + ' ' + data.sigungu + ' ' + data.bname;
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById("input_roadAddress").value = roadAddr;
	                document.getElementById("lawcode").value = data.bcode;
	                document.getElementById("fullname").value = data.sido + ' ' + data.sigungu + ' ' + data.bname;
	                document.getElementById("delivername").value = fullname;
	                document.getElementById("postalcode").value = data.zonecode;
	                
	                console.log(fullname);
	                console.log(data.zonecode);
	            }
	        }).open();
	}
</script>

<script type = "text/javascript">

$("#addimage").on("click", function(){
	$("#img-uploader").modal("show");
})

$("#changeimage").on("click", function(){
	$("#img-uploader").modal("show");
})

$("#deleteimage").on("click", function(){
	$("#img-delete").modal("show");
	
	$("#cancel").on("click", function(){
		$("#img-delete").modal("hide");
	})
})



</script>



</html>