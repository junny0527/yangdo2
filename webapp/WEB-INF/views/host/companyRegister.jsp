<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업체 등록</title>
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/hostHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/companyRegister.css">



<body>
<!-- header -->
<c:import url="/WEB-INF/views/includes/hostHeader.jsp"></c:import>
<!-- header -->

<div id = "container">
	<div id = "process" class = "center-block">
		<ul>
			<li class = "imgs">
				<a href="${pageContext.request.contextPath}/host/companyreg">
					<span><img src="${pageContext.request.contextPath}/assets/image/host/mypage.png" class = "active"></span>
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

		<form class="form-horizontal">
			<table class="table table-bordered resize">
				<thead>
				</thead>
				<tbody>
					<tr>
						<th>업주 정보</th>
						<td>
							<div class="form-layer mb_24">
								<span class="form-title">이메일</span>
								<span class="form-body">bootstrapSonofabitch@gmail.com</span>
							</div>
							<div class="form-layer mb_24">
								<span class="form-title">휴대폰 번호</span>
								<span class="form-body">
									<div class="select-style small-size">
										<select name="phone1">
											<option value="010" selected>010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
										</select>
									</div>
									<input class="form-control small-size" type="text" name="phone2" placeholder="숫자만 입력하세요.">
								</span>
							</div>
							<div class="form-layer mb_24">
								<span class="form-title">대표 번호</span>
								<span class="form-body">
									<div class="select-style small-size">
										<select name="tell">
											<option value="02" selected>02</option>
											<option value="031">031</option>
											<option value="032">032</option>
											<option value="033">033</option>
											<option value="041">041</option>
											<option value="051">051</option>
											<option value="052">052</option>
											<option value="053">053</option>
											<option value="054">054</option>
											<option value="055">055</option>
											<option value="061">061</option>
											<option value="062">062</option>
											<option value="063">063</option>
											<option value="064">064</option>
											<option value="0502">0502</option>
											<option value="070">070</option>
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
										</select>
									</div>
									<input class="form-control small-size" type="text" name="tel2" placeholder="숫자만 입력하세요.">
								</span>
							</div>
						</td>
					</tr>
					
					<tr>
						<th>예약 정산<br>입금 계좌 정보</th>
                        <td>
                        	<div class="form-layer-text mb_24">
                        		<p class="description text-bold">* 사업자 등록상 같은 예금명, 계좌번호로 등록해주시기 바랍니다. </p> <!-- QA-12836 : 관리자 노출 -->
                            </div>
                            <div class="form-layer mb_24">
                            	<span class="form-title">거래 은행</span>
                                <span class="form-body">
                                    <div class="select-style normal-size">
                                        <select>
                                            <option value="">선택</option>
                                            <option value="한국은행">한국은행</option>
                                            <option value="산업은행">산업은행</option>
                                            <option value="기업은행">기업은행</option>
                                            <option value="국민은행">국민은행</option>
                                            <option value="외환은행">외환은행</option>
                                            <option value="수협중앙회">수협중앙회</option>
                                            <option value="수출입은행">수출입은행</option>
                                            <option value="농협중앙회">농협중앙회</option>
                                            <option value="단위농협(축협)">단위농협(축협)</option>
                                            <option value="우리은행">우리은행</option>
                                            <option value="SC제일은행">SC제일은행</option>
                                            <option value="한국씨티은행">한국씨티은행</option>
                                            <option value="새마을금고">새마을금고</option>
                                            <option value="신협중앙회">신협중앙회</option>
                                            <option value="우체국">우체국</option>
                                            <option value="하나은행">하나은행</option>
                                            <option value="신한은행">신한은행</option>
                                            <option value="대구은행">대구은행</option>
                                            <option value="부산은행">부산은행</option>
                                            <option value="광주은행">광주은행</option>
                                            <option value="제주은행">제주은행</option>
                                            <option value="전북은행">전북은행</option>
                                            <option value="경남은행">경남은행</option>
                                            <option value="상호저축은행">상호저축은행</option>
                                            <option value="산림조합중앙회">산림조합중앙회</option>
                                            <option value="케이뱅크">케이뱅크</option>
                                            <option value="카카오뱅크">카카오뱅크</option>                                        </select>
                                    </div>
                                </span>
                            </div>
                            
                            <div class="form-layer mb_24">
                                <span class="form-title">예금주</span>
                                <span class="form-body">
                                    <input class="form-control normal-size" type="text" disabled="" placeholder="이름을 입력하세요." value="">
                                </span>
                            </div>
                            
                            <div class="form-layer mb_08">
                                <span class="form-title">계좌 번호</span>
                                <span class="form-body">
                                    <input class="form-control normal-size" type="text" disabled="" placeholder="숫자만 입력하세요." value="">
                                </span>
                            </div>
                            
                            <!-- div class="form-layer mb_08">
                                <span class="form-title">통장사본</span>
                                <span class="form-body">
                                    <input class="form-control normal-size" id="fileName" type="text" placeholder="통장사본을 등록해주세요." value="" disabled/>
                                                                        <input type="button" value="등록" class="btn btn-primary refund-upload" id="uploadButton"  />
                                    <input type="file" name="mrefund_bank_copy" title="등록" class="file-input-hidden"  />
                                </span>
                            </div -->
                            
                            <div class="form-layer mb_08">
                                <span class="form-title">정산 주기</span>
                                <span class="form-body label-layer">
                                    <label for="W"><input id="W" type="radio" disabled="" value="week"> 주정산</label>
                                    <label for="M"><input id="M" type="radio" disabled="" value="month"> 월정산</label>
                                </span>
                            </div>
                            
                            <div class="form-layer-text mb_24">
                        		<p class = "description">
                        		주 정산의 경우 익주 수요일에, 월정산의 경우, 익월 첫째주 수요일에 정산 입금됩니다.
                        		<br>
                        		자세한 사항은 영업담당자 또는 고객센터에 문의해 주시기 바랍니다.
                        		</p>
                            </div>
                        </td>
                    </tr>
                    
                    <tr>
                        <th>세금 계산서<br>발행 여부</th>
                        <td>
                            <div id = "tax" class="form-layer label-layer mb_24">
                            	<br>
                                <label for="Y"><input id="Y" type="radio" name="account_type" value="2"> 발행</label>
                                <label for="N"><input id="N" type="radio" name="account_type" value="1" checked=""> 미발행</label>
                            </div>
                        </td>
                    </tr>
                    
                    <tr>
                        <th>사업자<br>등록 정보</th>
                        <td>
                            <div class="form-layer mb_08">
                                <span class="form-title">상호명<br>(법인명)</span>
                                <span class="form-body">
                                    <input class="form-control normal-size" type="text" name="corporate" placeholder="사업자 등록증상 상호명" value="" disabled="disabled">
                                </span>
                            </div>
                            <div class="form-layer-text mb_24">
                                <p class="description">* 펜션 이름은 별도로 기입이 가능하오니 필히 사업자 상호, 등록번호를 입력해주시기 바랍니다.</p>
                            </div>
                            <div class="form-layer mb_24">
                                <span class="form-title">등록증상<br>대표명</span>
                                <span class="form-body">
                                    <input class="form-control normal-size" type="text" name="co_name" placeholder="대표자 명을 입력하세요." value="" disabled="disabled">
                                </span>
                            </div>
                            
                            <br>
                            
                            <div id = "jobstyle" class="form-layer mb_24">
                                <span class="form-title">업태</span>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="2" name="b_condition[]" disabled="disabled">숙박</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="1" name="b_condition[]" disabled="disabled">음식 및 숙박</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="3" name="b_condition[]" disabled="disabled">부동산</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="4" name="b_condition[]" disabled="disabled">음식</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="5" name="b_condition[]" disabled="disabled">서비스</label>
                            </div>
							
							<br>
							
                            <div id = "joblist" class="form-layer mb_24">
                                <span class="form-title">업종</span>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="6" name="b_type[]" disabled="disabled">민박</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="16" name="b_type[]" disabled="disabled">외국인도시민박</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="13" name="b_type[]" disabled="disabled">게스트하우스</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="14" name="b_type[]" disabled="disabled">한옥체험</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="1" name="b_type[]" disabled="disabled">여관</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="5" name="b_type[]" disabled="disabled">숙박</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="2" name="b_type[]" disabled="disabled">펜션</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="12" name="b_type[]" disabled="disabled">호스텔</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="3" name="b_type[]" disabled="disabled">모텔</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="7" name="b_type[]" disabled="disabled">관광</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="9" name="b_type[]" disabled="disabled">임대</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="4" name="b_type[]" disabled="disabled">호텔</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="8" name="b_type[]" disabled="disabled">관광호텔</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="11" name="b_type[]" disabled="disabled">일반여행</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="10" name="b_type[]" disabled="disabled">무인텔</label>
                            </div>
                            
                            <br>
                            
                            <div class="form-layer mb_24">
                                <span class="form-title">사업자<br>등록번호</span>
                                <span class="form-body">
                                    <input class="form-control normal-size" type="text" name="co_num" placeholder="숫자만 입력하세요." value="" disabled="disabled">
                                </span>
                            </div>
                            
                            <br>
                            
                            <div class="form-layer mb_24">
                                <span class="form-title">업체 주소</span>
                                <span class="form-body">
                                    <input class="form-control normal-size" id="input_roadAddress" type="text" name="address1" readonly="" placeholder="사업자 등록증상 업체 주소를 입력하세요." value="">
                                    <button type="button" class="btn btn-yeogi btn-normal-layer" id="postCode" onclick="daumPostCode()" disabled="disabled">주소 검색</button>
                                </span>
                            </div>
                            <div class="form-layer newline">
                                <span class="form-body">
                                    <input id = "leftaddress" class="form-control normal-size" type="text" name="address2" placeholder="나머지 주소를 입력하세요." value="" disabled="disabled">
                                </span>
                            </div>
                            <div class="form-layer mb_24">
                                <span class="form-title">세금계산서<br>이메일</span>
                                <span class="form-body">
                                    <input class="form-control normal-size" type="text" name="settlement_email" placeholder="이메일을 입력하세요." value="" disabled="disabled">
                                </span>
                            </div>
                        </td>
                    </tr>
                    
                    <tr>
                        <th>업주 홈페이지<br>(선택 정보)</th>
                        <td>
                            <div class="form-layer mb_08">
                                <span class="form-title">홈페이지</span>
                                <span class="form-body">
                                    <input class="form-control normal-size" type="text" name="homepage" placeholder="홈페이지 주소" value="">
                                </span>
                            </div>
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