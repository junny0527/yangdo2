<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업체 등록</title>
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
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
	<form class="form-horizontal" action="${pageContext.request.contextPath}/host/updatesave" method="get">
		<table class="table table-bordered resize">
			<thead></thead>
			<tbody>
				<tr>
					<th>업주 정보</th>
					<td>
						<div class="form-layer mb_24">
							<span class="form-title">이메일</span>
							<span class="form-body">${cMap.cVo.email}</span>
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
										<c:if test = "${cMap.cVo.phone1 eq '010'}">
											<option value="010" selected>010</option>
										</c:if>
										<c:if test = "${cMap.cVo.phone1 eq '011'}">
											<option value="011" selected>011</option>
			 							</c:if>
			 							<c:if test = "${cMap.cVo.phone1 eq '016'}">
			 								<option value="016" selected>016</option>
										</c:if>
										<c:if test = "${cMap.cVo.phone1 eq '017'}">
											<option value="017" selected>017</option>
										</c:if>
										<c:if test = "${cMap.cVo.phone1 eq '018'}">
											<option value="018" selected>018</option>
										</c:if>
										<c:if test = "${cMap.cVo.phone1 eq '019'}">
											<option value="019" selected>019</option>
										</c:if>
									</select>
								</div>
								<input class="form-control small-size" type="text" name="phone2" value = "${cMap.cVo.phone2}">
								<input class="form-control small-size" type="text" name="phone3" value = "${cMap.cVo.phone3}">
							</span>
						</div>
						<div class="form-layer mb_24">
							<span class="form-title">대표 번호</span>
							<span class="form-body">
								<div class="select-style small-size">
									<select name="tel1">
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
										<c:if test = "${cMap.cVo.tel1 eq '02'}">
											<option value="02" selected>02</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '031'}">
											<option value="031" selected>031</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '032'}">
											<option value="032" selected>032</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '033'}">
											<option value="033" selected>033</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '041'}">
											<option value="041" selected>041</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '051'}">
											<option value="051" selected>051</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '052'}">
											<option value="052" selected>052</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '053'}">
											<option value="053" selected>053</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '054'}">
											<option value="054" selected>054</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '055'}">
											<option value="055" selected>055</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '061'}">
											<option value="061" selected>061</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '062'}">
											<option value="062" selected>062</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '063'}">
											<option value="063" selected>063</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '064'}">
											<option value="064" selected>064</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '0502'}">
											<option value="0502" selected>0502</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '070'}">
											<option value="070" selected>070</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '010'}">
											<option value="010" selected>010</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '011'}">
											<option value="011" selected>011</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '016'}">
											<option value="016" selected>016</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '017'}">
											<option value="017" selected>017</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '018'}">
											<option value="018" selected>018</option>
										</c:if>
										<c:if test = "${cMap.cVo.tel1 eq '019'}">
											<option value="019" selected>019</option>
										</c:if>
									</select>
								</div>
								<input class="form-control small-size" type="text" name="tel2" value = "${cMap.cVo.tel2}">
								<input class="form-control small-size" type="text" name="tel3" value = "${cMap.cVo.tel3}">
							</span>
						</div>
					</td>
				</tr>
				
				<tr>
					<th>예약 정산<br>입금 계좌 정보</th>
                       <td>
                       	<div class="form-layer-text mb_24">
                       		<p class="description text-bold">* 사업자 등록상 같은 예금명, 계좌번호로 등록해주시기 바랍니다. </p>
                           </div>
                           <div class="form-layer mb_24">
                           	<span class="form-title">거래 은행</span>
                               <span class="form-body">
                                   <div class="select-style normal-size">
                                       <select name = "bankName">
                                           <option value="없음">선택</option>
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
                                           <option value="카카오뱅크">카카오뱅크</option>
                                           <c:if test = "${cMap.cVo.bankName eq '한국은행'}">
                                           	<option value="한국은행" selected="selected">한국은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '산업은행'}">
                                          	<option value="산업은행" selected="selected">산업은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '기업은행'}">
                                           	<option value="기업은행" selected="selected">기업은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '국민은행'}">
                                           	<option value="국민은행" selected="selected">국민은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '외환은행'}">
                                           	<option value="외환은행" selected="selected">외환은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '수협중앙회'}">
                                           	<option value="수협중앙회" selected="selected">수협중앙회</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '수출입은행'}">
                                           	<option value="수출입은행" selected="selected">수출입은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '농협중앙회'}">
                                           	<option value="농협중앙회" selected="selected">농협중앙회</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '단위농협(축협)'}">
                                           	<option value="단위농협(축협)" selected="selected">단위농협(축협)</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '우리은행'}">
 	                                       	<option value="우리은행" selected="selected">우리은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq 'SC제일은행'}">
                                           	<option value="SC제일은행" selected="selected">SC제일은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '한국씨티은행'}">
                                           	<option value="한국씨티은행" selected="selected">한국씨티은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '새마을금고'}">
                                           	<option value="새마을금고" selected="selected">새마을금고</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '신협중앙회'}">
                                           	<option value="신협중앙회" selected="selected">신협중앙회</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '우체국'}">
                                          	 <option value="우체국" selected="selected">우체국</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '하나은행'}">
                                           	<option value="하나은행" selected="selected">하나은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '신한은행'}">
                                           	<option value="신한은행" selected="selected">신한은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '대구은행'}">
                                           	<option value="대구은행" selected="selected">대구은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '부산은행'}">
                                           	<option value="부산은행" selected="selected">부산은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '광주은행'}">
                                           	<option value="광주은행" selected="selected">광주은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '제주은행'}">
                                           	<option value="제주은행" selected="selected">제주은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '전북은행'}">
                                           	<option value="전북은행" selected="selected">전북은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '경남은행'}">
                                           	<option value="경남은행" selected="selected">경남은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '상호저축은행'}">
                                           	<option value="상호저축은행" selected="selected">상호저축은행</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '산림조합중앙회'}">
                                          	<option value="산림조합중앙회" selected="selected">산림조합중앙회</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '케이뱅크'}">
                                           	<option value="케이뱅크" selected="selected">케이뱅크</option>
                                           </c:if>
                                           <c:if test = "${cMap.cVo.bankName eq '카카오뱅크'}">
                                           	<option value="카카오뱅크" selected="selected">카카오뱅크</option>
                                           </c:if>
                                       </select>
                                   </div>
                               </span>
                           </div>
                           
                           <div class="form-layer mb_24">
                               <span class="form-title">예금주</span>
                               <span class="form-body">
                                   <input class="form-control normal-size" type="text" name = "accountHolder" placeholder="이름을 입력하세요." value="${cMap.cVo.accountHolder}">
                               </span>
                           </div>
                           
                           <div class="form-layer mb_08">
                               <span class="form-title">계좌 번호</span>
                               <span class="form-body">
                                   <input class="form-control normal-size" type="text" name = "account" placeholder="숫자만 입력하세요." value="${cMap.cVo.account}">
                               </span>
                           </div>
                           
                           <div class="form-layer mb_08">
                               <span class="form-title">정산 주기</span>
                               <span class="form-body label-layer">
                                   <label for="W"><input id="W" name="settlementCycle" type="radio" value="week"<c:if test="${cMap.cVo.settlementCycle eq 'week'}">checked</c:if>> 주정산</label>
                                   <label for="M"><input id="M" name="settlementCycle" type="radio" value="month"<c:if test="${cMap.cVo.settlementCycle eq 'month'}">checked</c:if>> 월정산</label>
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
                               <label for="Y"><input id="Y" name = "taxInvoice" type="radio" value="2"<c:if test="${cMap.cVo.taxInvoice == 2}">checked</c:if>> 발행</label>
                               <label for="N"><input id="N" name = "taxInvoice" type="radio" value="1"<c:if test="${cMap.cVo.taxInvoice == 1}">checked</c:if>> 미발행</label>
                           </div>
                       </td>
                   </tr>
                   
                   <tr>
                       <th>사업자<br>등록 정보</th>
                       <td>
                           <div class="form-layer mb_08">
                               <span class="form-title">상호명<br>(법인명)</span>
                               <span class="form-body">
                                   <input class="form-control normal-size" type="text" name="companyName" placeholder="사업자 등록증상 상호명" value="${cMap.cVo.companyName}" disabled="disabled">
                               </span>
                           </div>
                          
                           <div class="form-layer-text mb_24">
                               <p class="description">* 펜션 이름은 별도로 기입이 가능하오니 필히 사업자 상호, 등록번호를 입력해주시기 바랍니다.</p>
                           </div>
                           <div class="form-layer mb_24">
                               <span class="form-title">등록증상<br>대표명</span>
                               <span class="form-body">
                                   <input class="form-control normal-size" type="text" name="ceoName" placeholder="대표자 명을 입력하세요." value="${cMap.cVo.ceoName}" disabled="disabled">
                               </span>
                           </div>
                           
                           <br>
                          
                           <div id = "jobstyle" class="form-layer mb_24">
                               <span id = "jobstyletitle" class="form-title">업태</span>
                               <label class="checkbox-inline icon-label">
                    				<input type="checkbox" value="1" name="businessTypeArrays" class = "businessType" disabled="disabled"
                    					<c:forEach items="${cMap.btype}" var = "btype"><c:if test = "${btype.businessType == 1}">checked</c:if></c:forEach>>숙박</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="2" name="businessTypeArrays" class = "businessType" disabled="disabled"
                               			<c:forEach items="${cMap.btype}" var = "btype"><c:if test = "${btype.businessType == 2}">checked</c:if></c:forEach>>음식 및 숙박</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="3" name="businessTypeArrays" class = "businessType" disabled="disabled"
                               			<c:forEach items="${cMap.btype}" var = "btype"><c:if test = "${btype.businessType == 3}">checked</c:if></c:forEach>>부동산</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="4" name="businessTypeArrays" class = "businessType" disabled="disabled"
                               			<c:forEach items="${cMap.btype}" var = "btype"><c:if test = "${btype.businessType == 4}">checked</c:if></c:forEach>>음식</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="5" name="businessTypeArrays" class = "businessType" disabled="disabled"
                               			<c:forEach items="${cMap.btype}" var = "btype"><c:if test = "${btype.businessType == 5}">checked</c:if></c:forEach>>서비스</label>
                           </div>
                           
						<br>
					
                           <div id = "joblist" class="form-layer mb_24">
                               <span class="form-title">업종</span>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="1" name="businessGroupArrays" class = "businessGroup" disabled="disabled"
                               			<c:forEach items="${cMap.bgroup}" var = "bgroup"><c:if test = "${bgroup.businessGroup == 1}">checked</c:if></c:forEach>>민박</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="2" name="businessGroupArrays" class = "businessGroup" disabled="disabled"
                               			<c:forEach items="${cMap.bgroup}" var = "bgroup"><c:if test = "${bgroup.businessGroup == 2}">checked</c:if></c:forEach>>외국인도시민박</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="3" name="businessGroupArrays" class = "businessGroup" disabled="disabled"
                               			<c:forEach items="${cMap.bgroup}" var = "bgroup"><c:if test = "${bgroup.businessGroup == 3}">checked</c:if></c:forEach>>게스트하우스</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="4" name="businessGroupArrays" class = "businessGroup" disabled="disabled"
                               			<c:forEach items="${cMap.bgroup}" var = "bgroup"><c:if test = "${bgroup.businessGroup == 4}">checked</c:if></c:forEach>>한옥체험</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="5" name="businessGroupArrays" class = "businessGroup" disabled="disabled"
                               			<c:forEach items="${cMap.bgroup}" var = "bgroup"><c:if test = "${bgroup.businessGroup == 5}">checked</c:if></c:forEach>>여관</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="6" name="businessGroupArrays" class = "businessGroup" disabled="disabled"
                               			<c:forEach items="${cMap.bgroup}" var = "bgroup"><c:if test = "${bgroup.businessGroup == 6}">checked</c:if></c:forEach>>숙박</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="7" name="businessGroupArrays" class = "businessGroup" disabled="disabled"
                               			<c:forEach items="${cMap.bgroup}" var = "bgroup"><c:if test = "${bgroup.businessGroup == 7}">checked</c:if></c:forEach>>펜션</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="8" name="businessGroupArrays" class = "businessGroup" disabled="disabled"
                               			<c:forEach items="${cMap.bgroup}" var = "bgroup"><c:if test = "${bgroup.businessGroup == 8}">checked</c:if></c:forEach>>호스텔</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="9" name="businessGroupArrays" class = "businessGroup" disabled="disabled"
                               			<c:forEach items="${cMap.bgroup}" var = "bgroup"><c:if test = "${bgroup.businessGroup == 9}">checked</c:if></c:forEach>>모텔</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="10" name="businessGroupArrays" class = "businessGroup" disabled="disabled"
                               			<c:forEach items="${cMap.bgroup}" var = "bgroup"><c:if test = "${bgroup.businessGroup == 10}">checked</c:if></c:forEach>>관광</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="11" name="businessGroupArrays" class = "businessGroup" disabled="disabled"
                               			<c:forEach items="${cMap.bgroup}" var = "bgroup"><c:if test = "${bgroup.businessGroup == 11}">checked</c:if></c:forEach>>임대</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="12" name="businessGroupArrays" class = "businessGroup" disabled="disabled"
                               			<c:forEach items="${cMap.bgroup}" var = "bgroup"><c:if test = "${bgroup.businessGroup == 12}">checked</c:if></c:forEach>>호텔</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="13" name="businessGroupArrays" class = "businessGroup" disabled="disabled"
                               			<c:forEach items="${cMap.bgroup}" var = "bgroup"><c:if test = "${bgroup.businessGroup == 13}">checked</c:if></c:forEach>>관광호텔</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="14" name="businessGroupArrays" class = "businessGroup" disabled="disabled"
                               			<c:forEach items="${cMap.bgroup}" var = "bgroup"><c:if test = "${bgroup.businessGroup == 14}">checked</c:if></c:forEach>>일반여행</label>
                               <label class="checkbox-inline icon-label">
                               		<input type="checkbox" value="15" name="businessGroupArrays" class = "businessGroup" disabled="disabled"
                               			<c:forEach items="${cMap.bgroup}" var = "bgroup"><c:if test = "${bgroup.businessGroup == 15}">checked</c:if></c:forEach>>무인텔</label>
                           </div>
                          
                           <br>
                           <div class="form-layer mb_24">
                               <span class="form-title">사업자<br>등록번호</span>
                               <span class="form-body">
                                   <input class="form-control normal-size" type="text" name="businessLicensenumber" placeholder="숫자만 입력하세요." value="${cMap.cVo.businessLicensenumber}" disabled="disabled">
                               </span>
                           </div>
                          
                           <br>
                           
                           <div class="form-layer mb_24">
                               <span class="form-title">업체 주소</span>
                               <span class="form-body">
                                   <input class="form-control normal-size" id="input_roadAddress" name = "companyAddress" type="text" readonly placeholder="사업자 등록증상 업체 주소를 입력하세요." value="${cMap.cVo.companyAddress}">
                                   <button type="button" class="btn btn-yeogi btn-normal-layer" id="postCode" onclick="daumPostCode()" disabled="disabled">주소 검색</button>
                               </span>
                           </div>
                           <div class="form-layer newline">
                               <span class="form-body">
                                   <input id = "leftaddress" class="form-control normal-size" type="text" name="detailAddress" placeholder="나머지 주소를 입력하세요." value="${cMap.cVo.detailAddress}" disabled="disabled">
                                   <input id = "postcodenum" name = "postalCode" type = "hidden">
                               </span>
                           </div>
                           <div class="form-layer mb_24">
                               <span class="form-title">세금계산서<br>이메일</span>
                               <span class="form-body">
                                   <input class="form-control normal-size" type="text" name="taxInvoiceEmail" placeholder="이메일을 입력하세요." value="${cMap.cVo.taxInvoiceEmail}" disabled="disabled">
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
                                   <input class="form-control normal-size" type="text" name="homepage" placeholder="홈페이지 주소" value="${cMap.cVo.homepage}">
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

<script type = "text/javascript">

$(document).ready(function(){
	if($("#Y").is(":checked")){
		$('input[name="companyName"]').removeAttr('disabled');
	    $('input[name="ceoName"]').removeAttr('disabled');
	    $("input[class='businessType']").removeAttr('disabled');
	    $("input[class='businessGroup']").removeAttr('disabled');
	    $('input[name="businessLicensenumber"]').removeAttr('disabled');
	    $('input[name="detailAddress"]').removeAttr('disabled');
	    $('input[name="taxInvoiceEmail"]').removeAttr('disabled');
	    $('#postCode').removeAttr('disabled');
	}else{
	    $('input[name="companyName"]').attr('disabled');
	    $('input[name="ceoName"]').attr('disabled');
	    $("input[class='businessType']").attr('disabled');
	    $("input[class='businessGroup']").attr('disabled');
	    $('input[name="businessLicensenumber"]').attr('disabled');
	    $('input[name="detailAddress"]').attr('disabled');
	    $('input[name="taxInvoiceEmail"]').attr('disabled');
	    $('#postCode').attr('disabled');
	}
})


$("#Y").on("click", function(){
	$('input[name="companyName"]').removeAttr('disabled');
    $('input[name="ceoName"]').removeAttr('disabled');
    $("input[class='businessType']").removeAttr('disabled');
    $("input[class='businessGroup']").removeAttr('disabled');
    $('input[name="businessLicensenumber"]').removeAttr('disabled');
    $('input[name="detailAddress"]').removeAttr('disabled');
    $('input[name="taxInvoiceEmail"]').removeAttr('disabled');
    $('#postCode').removeAttr('disabled');
});

$("#N").on("click", function(){
	$('input[name="companyName"]').attr('disabled', true);
	$('input[name="companyName"]').val('');
    $('input[name="ceoName"]').attr('disabled', true);
    $('input[name="ceoName"]').val('');
    $("input[class='businessType']").attr('disabled', true);
    $("input[class='businessType']").val('');
    $("input[class='businessGroup']").attr('disabled', true);
    $("input[class='businessGroup']").val('');
    $('input[name="businessLicensenumber"]').attr('disabled', true);
    $('input[name="businessLicensenumber"]').val('');
    $('input[name="detailAddress"]').attr('disabled', true);
    $('input[name="detailAddress"]').val('');
    $('input[name="taxInvoiceEmail"]').attr('disabled', true);
    $('input[name="taxInvoiceEmail"]').val('');
    $('#postCode').attr('disabled', true);
    $('#postCode').val('');
});

</script>

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
	                document.getElementById("postcodenum").value = data.zonecode;
	                console.log(fullname);
	                console.log(data.zonecode);
	            }
	        }).open();
	}
</script>


</html>