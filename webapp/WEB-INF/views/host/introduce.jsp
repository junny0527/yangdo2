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
				<form class="form-horizontal" id="intro-form" method="get" action="introsave" name="intro" enctype="multipart/form-data">
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
										<span class="form-title">펜션명</span> <span class="form-body"> <input class="form-control normal-size" type="text" name="pensionName" placeholder="업체명을 입력하세요." value="">
										</span>
									</div>
									<div class="form-layer mb_24">
										<span class="form-title">펜션 주소</span>
										<!-- BOD-1458 -->
										<span class="form-body">
											<input class="form-control normal-size" id="input_roadAddress" type="text" name="pensionAddress" readonly placeholder="업체 주소를 입력하세요." value="">
											<button type="button" class="btn btn-yeogi btn-normal-layer" onclick="daumPostCode()">주소 검색</button>
										</span>
									</div>
									<div class="form-layer newline mb_24">
										<span class="form-body">
											<input id="address"class="form-control normal-size" type="text" name="detailAddress" placeholder="나머지 주소를 입력하세요." value="">
										</span>
									</div>
									<div class="form-layer-text">
										<input type="hidden" id = "postalcode" name = "postalCode" value = "">
										<div id = "legalname" class = "order">
											<input type = "text" readonly value = "법정동 코드: ">
											<input id = "lawcode" type="text" name = "lawCode" readonly value = "">
											<input id = "fullname" type="text" name = "lawName" readonly value = "">
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
							
							<tr>
								<th> 지역 카테고리
								</th>
								<td colspan = "2" class="bd_r_none">
									<div class="area">
										<span class="form-body">
											<select class = "select-style middle-size category" name = sido></select>
											<select class = "select-style middle-size category" name = gugun></select>
										</span>
									</div>
									<p class="order text-normal">* 펜션 검색 시 분류되는 지역 항목입니다.</p>
								</td>
							</tr>
							

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

									<div class="form-layer mb_15 hide">
										<ul id="house-images">
											<%-- <li class="backgrou">
												<div>
													<img src="${pageContext.request.contextPath}/assets/image/host/logout.png" class="img-rounded">
												</div>
												<button id = "changeimage" type="button" class="btn btn-xs btn-success">변경</button>
												<button id = "deleteimage" type="button" class="btn btn-xs btn-deleete">삭제</button>
											</li> --%>
										</ul>
									</div>

									<div class="form-layer-text">
										<button id = "addimage" type="button" class="btn btn-default btn_add">+ 이미지 추가</button>
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
										<label for="theme0" class="checkbox-inline icon-label"> <input type="checkbox" id="theme0" name="publicArrays" value="P01">수영장</label>
										<label for="theme1" class="checkbox-inline icon-label"> <input type="checkbox" id="theme1" name="publicArrays" value="P02">족구장</label>
										<label for="theme2" class="checkbox-inline icon-label"> <input type="checkbox" id="theme2" name="publicArrays" value="P03">카페</label>
										<label for="theme3" class="checkbox-inline icon-label"> <input type="checkbox" id="theme3" name="publicArrays" value="P04">노래방</label>
										<label for="theme4" class="checkbox-inline icon-label"> <input type="checkbox" id="theme4" name="publicArrays" value="P05">편의점</label>
										<label for="theme5" class="checkbox-inline icon-label"> <input type="checkbox" id="theme5" name="publicArrays" value="P06">주차장</label>
										<label for="theme6" class="checkbox-inline icon-label"> <input type="checkbox" id="theme6" name="publicArrays" value="P07">BBQ</label>
										<label for="theme7" class="checkbox-inline icon-label"> <input type="checkbox" id="theme7" name="publicArrays" value="P08">주방/식당</label>
										<label for="theme8" class="checkbox-inline icon-label"> <input type="checkbox" id="theme8" name="publicArrays" value="P09">흡연부스</label>
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
										<label for="theme9" class="checkbox-inline icon-label"> <input type="checkbox" id="theme9" name="amenitiesArrays" value="A01">냉장고</label>
										<label for="theme10" class="checkbox-inline icon-label"> <input type="checkbox" id="theme10" name="amenitiesArrays" value="A02">에어컨</label>
										<label for="theme11" class="checkbox-inline icon-label"> <input type="checkbox" id="theme11" name="amenitiesArrays" value="A03">TV</label>
										<label for="theme12" class="checkbox-inline icon-label"> <input type="checkbox" id="theme12" name="amenitiesArrays" value="A04">와이파이</label>
										<label for="theme13" class="checkbox-inline icon-label"> <input type="checkbox" id="theme13" name="amenitiesArrays" value="A05">욕실용품</label>
										<label for="theme14" class="checkbox-inline icon-label"> <input type="checkbox" id="theme14" name="amenitiesArrays" value="A06">세탁기</label>
										<label for="theme15" class="checkbox-inline icon-label"> <input type="checkbox" id="theme15" name="amenitiesArrays" value="A07">드라이기</label>
										<label for="theme16" class="checkbox-inline icon-label"> <input type="checkbox" id="theme16" name="amenitiesArrays" value="A08">욕조</label>
										<label for="theme17" class="checkbox-inline icon-label"> <input type="checkbox" id="theme17" name="amenitiesArrays" value="A09">반려견동반</label>
										<label for="theme18" class="checkbox-inline icon-label"> <input type="checkbox" id="theme18" name="amenitiesArrays" value="A10">객실 내 흡연</label>
										<label for="theme19" class="checkbox-inline icon-label"> <input type="checkbox" id="theme19" name="amenitiesArrays" value="A11">취사가능</label>
									</div>
								</td>
								<td class="help-tooltip popover-container"><a href="javascript:void(0)" data-toggle="popover"><img id="tooltip" src="${pageContext.request.contextPath}/assets/image/host/tooltip.png"></a>
									<div class="hide">
										<span><img src="${pageContext.request.contextPath}/assets/image/host/tooltip.png"></span>
									</div></td>
							</tr>

							<!-- 오시는길 -->
							<tr>
								<th>오시는길</th>
								<td colspan="2">
									<div id = "visitpath" class="form-layer">
										<input type="text" class="form-control writeform" name="visitRoad1" placeholder="주요 버스터미널, 기차역 등에서 숙소를 찾아가는 방법을 간단히 기재해 주세요. 예시)대성리역 차량 10분" value=""> <br> 
										<input type="text" class="form-control writeform" name="visitRoad2" placeholder="주요 버스터미널, 기차역 등에서 숙소를 찾아가는 방법을 간단히 기재해 주세요. 예시)대성리역 차량 10분" value=""> <br> 
										<input type="text" class="form-control writeform" name="visitRoad3" placeholder="주요 버스터미널, 기차역 등에서 숙소를 찾아가는 방법을 간단히 기재해 주세요. 예시)대성리역 차량 10분" value=""> 
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
										<input type="text" class="form-control writeform" name="areaInfo1" placeholder="교통, 관광, 쇼핑 명소부터 게스트하우스까지의 소요시간을 작성해 주세요." value=""> <br> 
										<input type="text" class="form-control writeform" name="areaInfo2" placeholder="교통, 관광, 쇼핑 명소부터 게스트하우스까지의 소요시간을 작성해 주세요." value=""> <br> 
										<input type="text" class="form-control writeform" name="areaInfo3" placeholder="교통, 관광, 쇼핑 명소부터 게스트하우스까지의 소요시간을 작성해 주세요." value="">
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
										<textarea class="form-control textarea-layer" rows="6" name="rules" placeholder="숙소 내 필수 이용규칙이 있을 경우 기재해주세요."></textarea>
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
				<form id="uploadForm" action="" enctype="multipart/form-data" method="post">
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
	                document.getElementById("postalcode").value = data.zonecode;
	                
	                console.log(fullname);
	                console.log(data.zonecode);
	            }
		 }).open();
	}
</script>

<script type = "text/javascript">
//////////////////////////지역선택 ////////////////////////////
$('document').ready(function() {
 var area0 = ["시/도 선택","서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];
  var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
   var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
   var area3 = ["대덕구","동구","서구","유성구","중구"];
   var area4 = ["광산구","남구","동구","북구","서구"];
   var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
   var area6 = ["남구","동구","북구","중구","울주군"];
   var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
   var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
   var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
   var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
   var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
   var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
   var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
   var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
   var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
   var area16 = ["서귀포시","제주시","남제주군","북제주군"];
 
 // 시/도 선택 박스 초기화

 $("select[name^=sido]").each(function() {
  $selsido = $(this);
  $.each(eval(area0), function() {
   $selsido.append("<option value='"+this+"'>"+this+"</option>");
  });
  $selsido.next().append("<option value=''>구/군 선택</option>");
 });

 // 시/도 선택시 구/군 설정

 $("select[name^=sido]").change(function() {
  var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
  var $gugun = $(this).next(); // 선택영역 군구 객체
  $("option",$gugun).remove(); // 구군 초기화

  if(area == "area0")
   $gugun.append("<option value=''>구/군 선택</option>");
  else {
   $.each(eval(area), function() {
    $gugun.append("<option value='"+this+"'>"+this+"</option>");
   });
  }
 });
});


</script>



<script type = "text/javascript">

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
		url : "${pageContext.request.contextPath }/api/host/",		
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
        url : "${pageContext.request.contextPath}/api/host/introduce/imgUpload",
        data : formData,
        type:'POST',
        enctype:'multipart/form-data',
        processData:false,
        contentType:false,
        dataType:'json',
        cache:false,
        success:function(piList){
            alert("저장에 성공하셨습니다.");
            console.log(piList);
            
            
            for(var i = 0; i<riList.length; i++){
            	var div = '';
        		div += '<li class="backgrou">'
        		div += '	<div class="thumb"> '
        		div += '		<img src="${pageContext.request.contextPath}/upload/'+piList[i].saveName+'"class="img-rounded preview">'
        		div += '    </div>'
        		div += '	<button type="button" class="btn btn-xs btn-success changeimage">변경</button>'
        		div += '    <button type="button" class="btn btn-xs btn-deleete deleteimage">삭제</button>'
        		div += '</li>';
        		
        		$("#house-images").append(div);
            }
            
            
        },error:function(XHR, status, error){
            alert("오류 발생.\n관리자에게 문의해주세요.");
        }
    });
    
}

</script>


</html>