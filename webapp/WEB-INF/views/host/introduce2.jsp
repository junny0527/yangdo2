<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소개 작성(선택)</title>

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
					<span><img src="${pageContext.request.contextPath}/assets/image/host/introduce.png" class = "active"></span>
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
		
	<!-- 필수 기입정보 전체 -->
	
	<div id="content">
			<div class="list-layer">
				<form class="form-horizontal" method="get" action="introoptsave">
					<div id = "design">
						<h3 class="guest-h3">[선택 기입 정보]</h3>
						<p id = "choice" class = "description"> - 내용이 없으면 작성하지 않으셔도 되지만, 보다 많은 정보를 제공하여 매출 증대에 도움이 될 수 있는 메뉴입니다.</p>
					</div>
					
					<table id="intro" class="table resize">
						<thead></thead>
						<tbody>
							<tr>
								<th id = "firstline">현장요금 추가정보</th>
								<td id = "firstline" colspan="2">
									<div class="form-layer">
										<textarea class="form-control textarea-layer" rows="6" name="livePay" placeholder="숙소에서 제공되는 숙박비 외의 유료 서비스가 있을 경우 가격정보와 함께 항목을 기재해주세요."></textarea>
									</div>
								</td>
							</tr>
							<tr>
								<th>주차장 정보</th>
								<td colspan="2">
									<div class="form-layer">
										<textarea class="form-control textarea-layer" rows="6" name="parkingInfo" placeholder="주차장의 유/무료 정보 및 시간당 요금을 기재해주세요."></textarea>
									</div>
								</td>
							</tr>
							<tr>
								<th>확인사항 및 기타</th>
								<td colspan="2">
									<div class="form-layer">
										<textarea class="form-control textarea-layer" rows="6" name="etc" placeholder="기재된 숙소 정보 외에 게스트 숙지 사항을 기재해주세요."></textarea>
									</div>
									<div class="exam-layer-guide4">
										<div id="detail" class="exam-detail-layer">
											<ul>
												<li>확인사항 및 기타 예시 문구</li>
												<li>3박 이상 숙박 시 20% 할인</li>
												<li>시즌별 객실 가격이 상이하오니 확인바랍니다.</li>		
												<li>위의 정보는 펜션 사정에 따라 변경될 수 있습니다.</li>	
												<li>해당 이미지는 실제와 상이할 수 있습니다.</li>
												<li>예약 확정 이후의 취소는 취소환불규정에 의거하여 적용됩니다.</li>									
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
	</div>
	<!-- container -->
<!-- footer -->
<c:import url="/WEB-INF/views/includes/hostFooter.jsp"></c:import>
<!-- footer -->
	
</body>
</html>