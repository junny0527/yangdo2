<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c7c270257fa165edfa51150dee34ae7&libraries=services"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c7c270257fa165edfa51150dee34ae7"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c7c270257fa165edfa51150dee34ae7&libraries=LIBRARY"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/detail/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/includes/userHeaderFooter.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/detail/reservation.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/views/includes/userHeader.jsp"></c:import>
		<!-- //header -->
		
		
		<div id="main">
			<div id="content" class="clearfix">
	         	<input id="pensionNo" type="hidden" value="${pMap.pInfo.NO}">
	         	<input id="userVo" type="hidden" value="${userVo}">
	         	<input id="crtPage" type="hidden" value="${crtPage}">
	            <span id="area">${pMap.area}</span> 
	            <span id="pensionName">${pMap.pInfo.NAME}</span> 
	            <span id="address">${pMap.pInfo.ADDRESS}</span> 
	            
	            <img src="${pageContext.request.contextPath}/assets/image/detail/location.png">
	            <button id="map">숙소 위치확인</button>
		        <c:choose>
            		<c:when test="${pMap.totalReview.AVGSTARS == 5.00}">
			            <div id="star">
			            	<span class="starCount">
								<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			                </span> 
			                <span class="starCount">
			                	<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			            	</span> 
			            	<span id="starScore">${pMap.totalReview.AVGSTARS}</span>
			                <button id="pensionReview">(${pMap.totalReview.RCOUNT}) ></button>
			            </div>
            		</c:when>
			        <c:when test="${pMap.totalReview.AVGSTARS >= 4.10 && pMap.totalReview.AVGSTARS <= 4.99}">
				        <div id="star">
			                <span class="starCount">
								<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			                </span> 
			                <span class="starCount">
			                	<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png">
			            	</span> 
			            	<span id="starScore">${pMap.totalReview.AVGSTARS}</span>
			                <button id="pensionReview">(${pMap.totalReview.RCOUNT}) ></button>
				        </div>
			        </c:when>
					<c:when test="${pMap.totalReview.AVGSTARS == 4.00}">
				        <div id="star">
			                <span class="starCount">
								<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			                </span> 
			                <span class="starCount">
			                	<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span id="starScore">${pMap.totalReview.AVGSTARS}</span>
			                <button id="pensionReview">(${pMap.totalReview.RCOUNT}) ></button>
				        </div>
					</c:when>
					<c:when test="${pMap.totalReview.AVGSTARS >= 3.10 && pMap.totalReview.AVGSTARS <= 3.99}">
						<div id="star">
			                <span class="starCount">
								<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			                </span> 
			                <span class="starCount">
			                	<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span id="starScore">${pMap.totalReview.AVGSTARS}</span>
			                <button id="pensionReview">(${pMap.totalReview.RCOUNT}) ></button>
						</div>
					</c:when>
					<c:when test="${pMap.totalReview.AVGSTARS == 3.00}">
			            <div id="star">
			                <span class="starCount">
								<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			                </span> 
			                <span class="starCount">
			                	<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span id="starScore">${pMap.totalReview.AVGSTARS}</span>
			                <button id="pensionReview">(${pMap.totalReview.RCOUNT}) ></button>
			            </div>
					</c:when>
					<c:when test="${pMap.totalReview.AVGSTARS >= 2.10 && pMap.totalReview.AVGSTARS <= 2.99}">
						<div id="star">
				                <span class="starCount">
									<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				                </span> 
				                <span class="starCount">
				                	<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span class="starCount">
				            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
				            	</span> 
				            	<span id="starScore">${pMap.totalReview.AVGSTARS}</span>
				                <button id="pensionReview">(${pMap.totalReview.RCOUNT}) ></button>
				            </div>
					</c:when>
					<c:when test="${pMap.totalReview.AVGSTARS == 2.00}">
			            <div id="star">
			                <span class="starCount">
								<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			                </span> 
			                <span class="starCount">
			                	<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span id="starScore">${pMap.totalReview.AVGSTARS}</span>
			                <button id="pensionReview">(${pMap.totalReview.RCOUNT}) ></button>
			            </div>
					</c:when>
					<c:when test="${pMap.totalReview.AVGSTARS >= 1.10 && pMap.totalReview.AVGSTARS <= 1.99}">
			            <div id="star">
			                <span class="starCount">
								<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			                </span> 
			                <span class="starCount">
			                	<img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span id="starScore">${pMap.totalReview.AVGSTARS}</span>
			                <button id="pensionReview">(${pMap.totalReview.RCOUNT}) ></button>
			            </div>
					</c:when>
					<c:when test="${pMap.totalReview.AVGSTARS == 1.00}">
			            <div id="star">
			                <span class="starCount">
								<img src="${pageContext.request.contextPath}/assets/image/detail/stars.png">
			                </span> 
			                <span class="starCount">
			                	<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span id="starScore">${pMap.totalReview.AVGSTARS}</span>
			                <button id="pensionReview">(${pMap.totalReview.RCOUNT}) ></button>
			            </div>
					</c:when>
					<c:otherwise>
		            	<div id="star">
			                <span class="starCount">
								<img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png">
			                </span> 
			                <span class="starCount">
			                	<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span class="starCount">
			            		<img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png">
			            	</span> 
			            	<span id="starScore">${pMap.totalReview.AVGSTARS}</span>
			                <button id="pensionReview">(${pMap.totalReview.RCOUNT}) ></button>
			            </div>
					</c:otherwise>
				</c:choose>
			</div>
			<!-- //content -->	
			<div id="gallery">
				<img id="mainImg" src="${pageContext.request.contextPath}/upload/${pMap.imgList[0].SAVE_NAME}">
				<div id="imgCount">${pMap.imgList[0].RN} / ${pMap.totalCnt} | 전체사진</div>
				<div id="subImg">
					<c:forEach begin="${pMap.startPageBtnNo}" end="${pMap.endPageBtnNo}" step="1" var="page">
						<c:choose>
							<c:when test="${crtPage == page && crtPage > 1}">
								<a id="prev" href="${pageContext.request.contextPath}/reservation?pensionNo=${pMap.pInfo.NO}&crtPage=${page -1}&datepicker=${datepicker}&datepicker2=${datepicker2}">
									<button id="left">
										<img src="${pageContext.request.contextPath}/assets/image/detail/left.png">
									</button>
								</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${crtPage == 1}">
							<a href="#">
								<button id="left">
									<img src="${pageContext.request.contextPath}/assets/image/detail/left.png">
								</button>
							</a>
						</c:when>
					</c:choose>
					<ul>
						<c:forEach items="${pMap.imgList}" var="imgList" varStatus="status">
							<c:if test="${status.count <= 6}">
								<li>
									<img class="list" src="${pageContext.request.contextPath}/upload/${imgList.SAVE_NAME}" alt="${imgList.NO}">
								</li>
							</c:if>
						</c:forEach>
					</ul>
					<c:forEach begin="${pMap.startPageBtnNo}" end="${pMap.endPageBtnNo}" step="1" var="page">
						<c:choose>
							<c:when test="${crtPage == page && crtPage < 4}">
								<a id="next" href="${pageContext.request.contextPath}/reservation?pensionNo=${pMap.pInfo.NO}&crtPage=${page +1}&datepicker=${datepicker}&datepicker2=${datepicker2}">
									<button id="right">
										<img src="${pageContext.request.contextPath}/assets/image/detail/right.png">
									</button>
								</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${crtPage == 4}">
							<a href="#">
								<button id="right">
									<img src="${pageContext.request.contextPath}/assets/image/detail/right.png">
								</button>
							</a>
						</c:when>
					</c:choose>
				</div>
			</div>
			<!-- //gallery -->
		</div>
		<!-- //main -->  
		<div id="iconBox">
			<h4>편의시설 및 서비스</h4>
			<div id="container">
			   	<c:forEach items="${pMap.pAmenList}" var="pAmenVo">
					<div>
					   	<span class="icon"><img src="${pageContext.request.contextPath}/upload/${pAmenVo.ICON_PATH}"></span> 
						<span class="iconName">${pAmenVo.NAME}</span>
					</div>
				</c:forEach>
				<c:forEach items="${pMap.pPubList}" var="pPubVo">
					<div>
						<span class="icon"><img src="${pageContext.request.contextPath}/upload/${pPubVo.ICON_PATH}"></span> 
						<span class="iconName">${pPubVo.NAME}</span>
					</div>
				</c:forEach>
			</div>
         	<!-- //container -->
		
		</div>
      	<!-- //iconBox -->
        <div id="menuBox"> 
			<div id="menu">
			   	<button id="var">객실안내</button>
				<button id="var1">숙소정보</button>
				<button id="var2">리뷰</button>
			</div>
        	<!-- //menu -->
        </div>
        <!-- //menuBox -->
        
        <div id="roomList">
			<div id="calendar">
				<form action="${pageContext.request.contextPath}/reservation">
					<input type="hidden" name="pensionNo" value="${pMap.pInfo.NO}">
					<c:choose>
						<c:when test="${datepicker != null && datepicker2 != null}">
							<span>시작일 : </span> <input type="text" id="datepicker" name="datepicker" value="${datepicker}"> 
							<span>종료일 : </span> <input type="text" id="datepicker2" name="datepicker2" value="${datepicker2}">
						</c:when>
					</c:choose>
					
					<button type="submit">일정 선택하기</button><br>
				</form>
			</div>
			<!-- //calendar -->
			<c:forEach items="${pMap.roomList}" var="roomVo" varStatus="status">
				<c:choose>
					<c:when test="${roomVo.STATUS == 6}">
						<form action="">
							<div class="room">
								<img class="roomImg" src="${pageContext.request.contextPath}/upload/${roomVo.SAVE_NAME}">
								<button class="roomImgList" name="${roomVo.NO}">객실 사진보기</button>
								<div class="roomInfo">
									<span class="roomName">${roomVo.ROOM_NAME}</span>
									<div class="infoBtn">
										<span>객실 이용안내</span>
										<button class="information_Use" name="${roomVo.NO}">보기</button>
									</div>
									<div class="settingPeople">기준 ${roomVo.STANDARD_PEOPLE}인 / 최대 ${roomVo.MAX_PEOPLE}인</div>
									<div class="defaultForm">
										<div>
											<span class="people">성인</span>
											<div>
												<button class="minus yAdultMinus" data-min="0" data-price="${roomVo.PRICE}" data-y_adult="${roomVo.ADULT_PRICE}"
												data-trans="${roomVo.TRANS_PRICE}" data-kid="${roomVo.KID}" data-adult="${roomVo.ADULT}"
												data-totalprice="${roomVo.TOTAL_PRICE}" data-y_kid="${roomVo.KID_PRICE}" name="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span class="yAdultValue${roomVo.NO}">${roomVo.ADULT}명</span>
												<button class="plus yAdultPlus" data-max="${roomVo.MAX_PEOPLE}" data-y_adult="${roomVo.ADULT_PRICE}"
												data-trans="${roomVo.TRANS_PRICE}" data-kid="${roomVo.KID}" data-price="${roomVo.PRICE}" data-adult="${roomVo.ADULT}"
												data-totalprice="${roomVo.TOTAL_PRICE}" data-y_kid="${roomVo.KID_PRICE}" name="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div>
											<span class="people">아동</span>
											<div>
												<button class="minus yKidMinus" data-min="0" data-y_kid="${roomVo.KID_PRICE}" data-price="${roomVo.PRICE}"
												data-trans="${roomVo.TRANS_PRICE}" data-y_adult="${roomVo.ADULT_PRICE}" data-adult="${roomVo.ADULT}" data-kid="${roomVo.KID}"
												data-totalprice="${roomVo.TOTAL_PRICE}" data-adultprice="${roomVo.ADULT_PRICE}" name="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span class="yKidValue${roomVo.NO}">${roomVo.KID}명</span>
												<button class="plus yKidPlus" data-max="${roomVo.MAX_PEOPLE}" data-y_adult="${roomVo.ADULT_PRICE}"
												 data-y_kid="${roomVo.KID_PRICE}" data-totalprice="${roomVo.TOTAL_PRICE}" data-price="${roomVo.PRICE}"
												data-trans="${roomVo.TRANS_PRICE}" data-adult="${roomVo.ADULT}" data-kid="${roomVo.KID}"
												data-totalprice="${roomVo.TOTAL_PRICE}" data-adult="${roomVo.ADULT}" name="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div>
											<span class="people">유아</span>
											<div>
												<button class="minus yBabyMinus" data-min="0" data-y_baby="${roomVo.BABY_PRICE}"
												data-trans="${roomVo.TRANS_PRICE}" name="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span class="yBabyValue${roomVo.NO}">${roomVo.BABY}명</span>
												<button class="plus yBabyPlus" data-max="${roomVo.MAX_PEOPLE}" data-y_baby="${roomVo.BABY_PRICE}"
												data-trans="${roomVo.TRANS_PRICE}" name="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div class="price">
											<span class="roomPrice">${roomVo.TOTAL_PRICE}원</span> 
											<span class="assignmentPrice${roomVo.NO}">${roomVo.TRANS_PRICE}원</span>
										</div>
									</div>
									<!-- //defaultForm -->
									<a href="#"><button>양도받으러가기</button></a>
								</div>
								<!-- //roomInfo -->
							</div>
							<!-- //room -->
						</form>
					</c:when>
					<c:when test="${roomVo.STATUS == 3}">
						<form action="#">
							<div class="room reservation">
								<img class="roomImg" src="${pageContext.request.contextPath}/upload/${roomVo.SAVE_NAME}">
								<button class="roomImgList" name="${roomVo.NO}">객실 사진보기</button>
								<div class="roomInfo">
									<span class="roomName">${roomVo.ROOM_NAME}</span>
									<div class="infoBtn">
										<span>객실 이용안내</span>
										<button class="information_Use" name="${roomVo.NO}">보기</button>
									</div>
									<div class="settingPeople">기준 ${roomVo.STANDARD_PEOPLE}인 / 최대 ${roomVo.MAX_PEOPLE}인</div>
									<div class="defaultForm">
										<div>
											<span class="people">성인</span>
											<div>
												<button class="minus">
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span>${roomVo.ADULT}명</span>
												<button class="plus">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div>
											<span class="people">아동</span>
											<div>
												<button class="minus">
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span>${roomVo.KID}명</span>
												<button class="plus">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div>
											<span class="people">유아</span>
											<div>
												<button class="minus">
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span>${roomVo.BABY}명</span>
												<button class="plus">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div class="price">
											<span class="assignmentPrice" style="visibility:hidden;">${roomVo.TRANS_PRICE}원</span>
											<span class="roomPrice" style="text-decoration:none;">${roomVo.TOTAL_PRICE}원</span> 
										</div>
									</div>
									<!-- //defaultForm -->
									<button>예약완료</button>
								</div>
								<!-- //roomInfo -->
							</div>
							<!-- //room reservation -->
						</form>
					</c:when>
					<c:otherwise>
						<form class="formClass" action="${pageContext.request.contextPath}/res/reserve">
										<input type="hidden" class="adult${roomVo.NO}" name=adult value="0">
										<input type="hidden" class="kid${roomVo.NO}" name=kid value="0">
										<input type="hidden" class="baby${roomVo.NO}" name=baby value="0">
										<input type="hidden" class="price${roomVo.NO}" name=price value="0">
										<input type="hidden"  name=pensionNo value="${pMap.pInfo.NO}">
										<input type="hidden"  name=datepicker value="${pMap.datepicker}">
										<input type="hidden"  name=datepicker2 value="${pMap.datepicker2}">
										<input type="hidden"  name=check_in value="${pMap.pInfo.CHECK_IN}">
										<input type="hidden"  name=check_out value="${pMap.pInfo.CHECK_OUT}">
										<input type="hidden"  name=price value="${roomVo.PRICE}">
										<input type="hidden"  name=roomNo value="${roomVo.NO}">
										<input type="hidden"  name=name value="${pMap.pInfo.NAME}">
										<input type="hidden"  name=pensionNo value="${pMap.pInfo.NO}">
										<input type="hidden"  name=roomName value="${roomVo.ROOM_NAME}">
										<input type="hidden"  name=nickName value="${userVo.nickName}">
										<input type="hidden"  name=adultPrice value="${roomVo.ADULT_PRICE}">
										<input type="hidden"  name=kidPrice value="${roomVo.KID_PRICE}">
							<div class="room noReservation">
								<img class="roomImg" src="${pageContext.request.contextPath}/upload/${roomVo.SAVE_NAME}">
								<button type="button" class="roomImgList" name="${roomVo.NO}">객실 사진보기</button>
								<div class="roomInfo">
									<span class="roomName">${roomVo.ROOM_NAME}</span>
									<div class="infoBtn">
										<span>객실 이용안내</span>
										<button type="button" class="information_Use" name="${roomVo.NO}">보기</button>
									</div>
									<div class="settingPeople">기준 ${roomVo.STANDARD_PEOPLE}인 / 최대 ${roomVo.MAX_PEOPLE}인</div>
									<div id="room-${roomVo.NO}" class="defaultForm" data-max="${roomVo.MAX_PEOPLE}" data-min="1" 
										data-adult="${roomVo.ADULT_PRICE}" data-price="${roomVo.PRICE}" data-kid="${roomVo.KID_PRICE}" 
										data-standard="${roomVo.STANDARD_PEOPLE}" data-adult="${roomVo.ADULT_PRICE}" data-roomno="${roomVo.NO}">
										<div>
											<span class="people">성인</span>
											<div>
												<button type="button" class="minus adultMinus" data-rno="${roomVo.NO}"> 
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span class="adultValue${roomVo.NO}">${roomVo.STANDARD_PEOPLE}명</span>
												<button type="button" class="plus adultPlus" data-rno="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div>
											<span class="people">아동</span>
											<div>
												<button type="button" class="minus kidMinus" data-rno="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span class="kidValue${roomVo.NO}">0명</span>
												<button type="button" class="plus kidPlus" data-rno="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div>
											<span class="people">유아</span>
											<div>
												<button type="button" class="minus babyMinus" data-rno="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span class="babyValue${roomVo.NO}">0명</span>
												<button type="button" class="plus babyPlus" data-rno="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div class="price">
											<span class="assignmentPrice" style="visibility:hidden;">${roomVo.TRANS_PRICE}원</span>
											<span class="roomPrice${roomVo.NO}" style="text-decoration:none;">${roomVo.PRICE}원</span> 
										</div>
									</div>
									<!-- //defaultForm -->
									<button type="submit">예약하러가기</button>
								</div>
								<!-- //roomInfo -->
							</div>
							<!-- //room noReservation -->
						</form>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<!-- //room -->
		</div>
	    <!-- //roomList --> 	
        
        <div id="pensionInfo"></div>
         <!-- //pensionInfo -->
         
        <div id="review"></div> 	
        <!-- //review -->
        
		<div class="clearfix"> 
			<!-- //footer -->
			<c:import url="/WEB-INF/views/includes/userFooter.jsp"></c:import>
   		</div>
	
	</div>
   	<!-- //"wrap" -->
      
</body>

<!-- 지도 모달 -->
 <div class="modal" id="local">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">        
      </div>
      <div class="modal-body">
        <div id="map1" style="width: 100%; height: 100%;"></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- 객실 이용안내 모달 -->
<div class="modal fade infomationUse">
	<div class="modal-dialog">
		<div class="modal-content modalContent">
			<div class="modal-header">
				<h4 class="modal-title">객실 이용안내</h4>
			</div>
			<div class="modal-body modalInfo">
				<div>
					<div class="facTitle">편의시설</div>
					<span class="facilities sAmen"></span>
				</div>
				<div>
					<div class="facTitle">추가정보</div>
					<div class="facilities roomNo"></div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 객실 사진보기 모달 -->
<div class="modal fade roomPhoto">
	<div class="modal-dialog">
		<div class="modal-content roomContent">
			<div class="modal-body imgList">
				<button class="imgLeft">
					<img src="${pageContext.request.contextPath}/assets/image/detail/left.png">
                </button>
                <ul>
					<li>
						<img class="roomImageList" src="">
					</li>
                </ul>
                <button class="imgRight">
					<img src="${pageContext.request.contextPath}/assets/image/detail/right.png">
                </button>
			</div>
			<div class="modal-footer footer">
				<button type="button" class="btn btn-default btnClose" data-dismiss="modal">닫기</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<script type="text/javascript">

	///////////////////////// 숙소위치보기 (지도) ///////////////////////////
	var container = ""; 
	var options = ""; 
	var map = ""; 
	var center = "";
	var markerPosition = "";
	var mapContainer = "";
	
	const geocoder = new kakao.maps.services.Geocoder()
	geocoder.addressSearch("${pMap.pInfo.LAW_NAME}", (res, stat) => { 
	   if (stat === kakao.maps.services.Status.OK) {
	      const coords = new kakao.maps.LatLng(res[0].y, res[0].x);
	      const marker = new kakao.maps.Marker({
	         map: map,
	         position: coords
	      })
	      const infowindow = new kakao.maps.InfoWindow({ 
	         content: `<div style="width:150px;text-align:center;padding:6px 0;">${e.name}</div>`
	      })
	      infowindow.open(map, marker)
	      
	      
	      container = document.getElementById('map1'); //지도를 담을 영역의 DOM 레퍼런스
	      options = { //지도를 생성할 때 필요한 기본 옵션
	    		  
			      center: new kakao.maps.LatLng(res[0].y, res[0].x), //지도의 중심좌표.
			  	  level: 3 //지도의 레벨(확대, 축소 정도)
	  			};
	      
	      map = new kakao.maps.Map(container, options);
	      center = map.getCenter();
	      
	      // 마커가 표시될 위치입니다 
	      markerPosition = new kakao.maps.LatLng(res[0].y, res[0].x);
		
	      // 마커가 지도 위에 표시되도록 설정합니다
	      marker.setMap(map);
	     
	      mapContainer = document.getElementById('map1'), // 지도를 표시할 div 
	      mapOption = {
		        center: new kakao.maps.LatLng(res[0].y, res[0].x), // 지도의 중심좌표
		        level: 1 // 지도의 확대 레벨
    		};  
	   }
	})
	
	// 숙소 위치확인 버튼 모달창 이벤트
	$("#map").on("click", function() {

		$("#local").modal("show");
		//지도 사이즈 변경 후 재 출력
		map.relayout();
		//지도 사이즈 변경 후 위치 재 출력
		map.setCenter(center);
	});
	
	///////////////////////// 일정선택 ///////////////////////////
	$(function() {
        //모든 datepicker에 대한 공통 옵션 설정
        $.datepicker.setDefaults({
            dateFormat: 'yy-mm-dd' //Input Display Format 변경
            ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
            ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
            ,changeYear: true //콤보박스에서 년 선택 가능
            ,changeMonth: true //콤보박스에서 월 선택 가능                
            ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
            ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
            ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
            ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
            ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
            ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
            ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
            ,minDate: "-1Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
            ,maxDate: "+1Y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                    
        });
 
		//input을 datepicker로 선언
		$("#datepicker").datepicker();                    
		$("#datepicker2").datepicker();
		var datepicker = $("#datepicker").val();
		var datepicker2 = $("#datepicker2").val();
	            
        if(${"datepicker"} != null && ${"datepicker2"} != null) {
        	//From의 초기값을 오늘 날짜로 설정
         	$('#datepicker').datepicker('setDate', datepicker); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
        	//To의 초기값을 내일로 설정
        	$('#datepicker2').datepicker('setDate', datepicker2); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
        }
        
		if(datepicker == datepicker2) {
			alert("일정을 확인하여 다시 입력해주세요.");
		}else if(datepicker >= datepicker2) {
			alert("일정을 확인하여 다시 입력해주세요.");
		}
    });
	
	///////////////////////// 객실 이용안내  ///////////////////////////
	$(".information_Use").on("click", function() {
		//입력한 객실정보로 사진 열기.
		var $this = $(this);  
		var roomNo = Number($this.attr("name"));
		var pensionNo = $("#pensionNo").val();
		$.ajax({
			url : "${pageContext.request.contextPath}/api/roomInfoList?pensionNo=" + pensionNo + "&roomNo=" + roomNo,		
			type : "post",
			//contentType : "application/json",
			//data : ,
			dataType : "json",
			success : function(roomInfoList){
				/*성공시 처리해야될 코드 작성*/
				for(var i = 0; i < roomInfoList.length; i++) {
					if(roomInfoList[i].NO == roomNo) {
						$(".roomNo").text(roomInfoList[i].ADD_INFO);
						$(".sAmen").text(roomInfoList[i].ROOM_AMENITIES);
					}
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		$(".infomationUse").modal("show");
		$(".sAmen").text("");
	});
	
	///////////////////////// 객실 사진보기  ///////////////////////////
	//ajax로 받아온 이미지를 담을 변수
	var crtImgList;
	var crtPos = 0;
	
	//모달 창 보기(방 이미지 클릭 시)
	$(".roomImgList").on("click", function() {
		var $this = $(this);  
		var roomNo = Number($this.attr("name")); 
		var pensionNo = $("#pensionNo").val();
		var src = "";
		console.log("방번호 :"+roomNo);
		console.log("펜션번호 :"+pensionNo);
		
		$.ajax({
			url : "${pageContext.request.contextPath}/api/roomImg?pensionNo=" + pensionNo + "&roomNo=" + roomNo,		
			type : "post",
			//contentType : "application/json",
			//data : ,

			dataType : "json",
			success : function(roomImgList){
				crtImgList = roomImgList;
				/*성공시 처리해야될 코드 작성*/
				console.log("이미지숫자 :"+roomImgList.length);
				
				src = "${pageContext.request.contextPath}/upload/"+ crtImgList[crtPos].SAVE_NAME;
				$(".roomImageList").attr("src", src);
				
				$(".roomPhoto").modal("show");
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	
	//방 이미지 모달창 오른쪽 버튼 클릭 이벤트
	$(".imgRight").on("click", function() {
		if(crtPos < crtImgList.length -1) {
			crtPos += 1;
			src = "${pageContext.request.contextPath}/upload/"+ crtImgList[crtPos].SAVE_NAME;
			$(".roomImageList").attr("src", src);
		}
	});
		
	//방 이미지 모달창 왼쪽 버튼 클릭 이벤트
	$(".imgLeft").on("click", function() {
		if(crtPos > 0 && crtPos < crtImgList.length) {
			crtPos -= 1;
			src = "${pageContext.request.contextPath}/upload/"+ crtImgList[crtPos].SAVE_NAME;
			$(".roomImageList").attr("src", src);
		}
	});	
	
	//모달 창 닫기 이벤트 (값 초기화)
	$(".btnClose").on("click", function(){
		crtImgList = null;
		crtPos = 0;
	});	
	
	///////////////////////// 펜션사진 버튼이벤트 페이징  ///////////////////////////
	$(".list").css("cursor", "pointer");

	$(".list").on("click", function() {
		var $this = $(this);
		var src = $this.attr("src");
		var no = $this.attr("alt");
		$("#mainImg").attr("src", src);
		$("#imgCount").text(no + ' / ' + ${pMap.totalCnt} + ' | ' + '전체사진' );
	});
	
	///////////////////////// 양도대기 버튼이벤트  ///////////////////////////
	var priceP;
	var adultP;
	var kidP;
	
	//양도 성인버튼 명수 증가 이벤트
	$(".yAdultPlus").on("click", function() {
		
		
		var $this = $(this);
		
		var roomNo = Number($this.attr("name"));
		var yAdultValue = $(".yAdultValue"+roomNo);
		var yAdultArray = yAdultValue.text().split("");
		var yAdult = Number(yAdultArray[0]);
		var yBabyValue = $(".yBabyValue"+roomNo);
		var yBabyArray = yBabyValue.text().split("");
		var yBaby = Number(yBabyArray[0]);
		
		var adult = $this.data("adult");
		var kid = $this.data("kid");
		
		
		var yKidValue = $(".yKidValue"+roomNo);
		var yKidArray = yKidValue.text().split("");
		var yKid = Number(yKidArray[0]);
		
		var assignmentValue = $(".assignmentPrice"+roomNo);
		var assignmentArray = assignmentValue.text().split("원");
		var assignment = assignmentArray[0];
		
		var max = $this.data("max");
		var kidPrice = $this.data("y_kid");
		var adultPrice = $this.data("y_adult");
		var transPrice = $this.data("trans");
		var totalPrice = $this.data("totalprice");
		var transPrice = $this.data("trans");
		var price = $this.data("price");
		
		//숫자변환
		kidP = Number(kidPrice.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		totalP = Number(totalPrice.replace(/,/g, ""));
		transP = Number(transPrice.replace(/,/g, ""));
		priceP = Number(price.replace(/,/g, ""));
		
		console.log("펜션금액:"+totalP);
		console.log("추가성인금액:"+adultP);
		console.log("추가아동금액:"+kidP);
		console.log("성인인원:"+adult);
		console.log("아동인원:"+kid);
		console.log("최대인원:"+max);
		console.log("양도금액:"+transP);
		console.log("펜션원래금액:"+priceP);
		console.log("-------------------");
		
		
		
		if(yAdult <= max) {
			
			yAdult += 1;
			
			
			
		}
	});
	
	//양도 성인버튼 명수 감소 이벤트
	$(".yAdultMinus").on("click", function() {
		var $this = $(this); 
		var roomNo = Number($this.attr("name"));
		var yAdultValue = $(".yAdultValue"+roomNo);
		var yAdultArray = yAdultValue.text().split("");
		var yAdult = Number(yAdultArray[0]);
		
		var adult = $this.data("adult");
		var kid = $this.data("kid");
		var totalPrice = $this.data("totalprice");
		
		var yKidValue = $(".yKidValue"+roomNo);
		var yKidArray = yKidValue.text().split("");
		var yKid = Number(yKidArray[0]);
		
		var assignmentValue = $(".assignmentPrice"+roomNo);
		var assignmentArray = assignmentValue.text().split("원");
		var assignment = assignmentArray[0];
		var min = $this.data("min");
		
		var adultPrice = $this.data("y_adult");
		var kidPrice = $this.data("y_kid");
		var transPrice = $this.data("trans");
		var totalPrice = $this.data("totalprice");
		var price = $this.data("price");
		
		//숫자변환
		kidP = Number(kidPrice.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		totalP = Number(totalPrice.replace(/,/g, ""));
		transP = Number(transPrice.replace(/,/g, ""));
		priceP = Number(price.replace(/,/g, ""));
		plusP = Number(assignment.replace(/,/g, ""));
		
		if(yAdult > 1) {
			yAdult -= 1;
			
			
			
		}
	});
	
	//양도 아동버튼 명수 증가 이벤트
	$(".yKidPlus").on("click", function() {
		var $this = $(this); 
		var roomNo = Number($this.attr("name"));
		var yKidValue = $(".yKidValue"+roomNo);
		var yKidArray = yKidValue.text().split("");
		var yKid = Number(yKidArray[0]);
		var kid = $this.data("kid");
		var adult = $this.data("adult");
		var yAdultValue = $(".yAdultValue"+roomNo);
		var yAdultArray = yAdultValue.text().split("");
		var yAdult = Number(yAdultArray[0]);
		var yBabyValue = $(".yBabyValue"+roomNo);
		var yBabyArray = yBabyValue.text().split("");
		var yBaby = Number(yBabyArray[0]);
		
		
		var assignmentValue = $(".assignmentPrice"+roomNo);
		var assignmentArray = assignmentValue.text().split("원");
		var assignment = assignmentArray[0];
		
		var max = $this.data("max");
		var kidPrice = $this.data("y_kid");
		var transPrice = $this.data("trans");
		var adultPrice = $this.data("y_adult");
		var price = $this.data("price");
		var totalPrice = $this.data("totalprice");
		
		console.log(adultPrice);
		//숫자변환
		kidP = Number(kidPrice.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		totalP = Number(totalPrice.replace(/,/g, ""));
		transP = Number(transPrice.replace(/,/g, ""));
		priceP = Number(price.replace(/,/g, ""));
		plusP = Number(assignment.replace(/,/g, ""));
		
		if(yKid < max) {
			yKid += 1;
			
			
		}
	});
	
	//양도 아동버튼 명수 감소 이벤트
	$(".yKidMinus").on("click", function() {
		var $this = $(this); 
		var roomNo = Number($this.attr("name"));
		var yKidValue = $(".yKidValue"+roomNo);
		var yKidArray = yKidValue.text().split("");
		var yKid = Number(yKidArray[0]);
		var kid = $this.data("kid");
		var adult = $this.data("adult");
		var yAdultValue = $(".yAdultValue"+roomNo);
		var yAdultArray = yAdultValue.text().split("");
		var yAdult = Number(yAdultArray[0]);
		
		var assignmentValue = $(".assignmentPrice"+roomNo);
		var assignmentArray = assignmentValue.text().split("원");
		var assignment = assignmentArray[0];
		
		var min = $this.data("min");
		var max = $this.data("max");
		var kidPrice = $this.data("y_kid");
		var transPrice = $this.data("trans");
		var adultPrice = $this.data("y_adult");
		var price = $this.data("price");
		var totalPrice = $this.data("totalprice");

		//숫자변환
		kidP = Number(kidPrice.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		totalP = Number(totalPrice.replace(/,/g, ""));
		transP = Number(transPrice.replace(/,/g, ""));
		priceP = Number(price.replace(/,/g, ""));
		plusP = Number(assignment.replace(/,/g, ""));
		
		
		if(yKid > min) {
			yKid -= 1;
			
			
		}
	});
	
	//양도 유아버튼 명수 증가 이벤트
	$(".yBabyPlus").on("click", function() {
		var $this = $(this); 
		var roomNo = Number($this.attr("name"));
		var yBabyValue = $(".yBabyValue"+roomNo);
		var yBabyArray = yBabyValue.text().split("");
		var yBaby = Number(yBabyArray[0]);
		var yKidValue = $(".yKidValue"+roomNo);
		var yKidArray = yKidValue.text().split("");
		var yKid = Number(yKidArray[0]);
		var yAdultValue = $(".yAdultValue"+roomNo);
		var yAdultArray = yAdultValue.text().split("");
		var yAdult = Number(yAdultArray[0]);
		
		var assignmentValue = $(".assignmentPrice"+roomNo);
		var assignmentArray = assignmentValue.text().split("원");
		var assignment = assignmentArray[0];
		
		var max = $this.data("max");
		var babyPrice = $this.data("y_baby");
		var transPrice = $this.data("trans");

		//숫자변환
		transP = Number(assignment.replace(/,/g, ""));
		babyP = Number(babyPrice);
		
		if(yBaby <= max) {
			yBaby += 1;
		}	
	});
	
	//양도 유아버튼 명수 감소 이벤트
	$(".yBabyMinus").on("click", function() {
		var $this = $(this); 
		var roomNo = Number($this.attr("name"));
		var yBabyValue = $(".yBabyValue"+roomNo);
		var yBabyArray = yBabyValue.text().split("");
		var yBaby = Number(yBabyArray[0]);
		
		var assignmentValue = $(".assignmentPrice"+roomNo);
		var assignmentArray = assignmentValue.text().split("원");
		var assignment = assignmentArray[0];
		
		var min = $this.data("min");
		var babyPrice = $this.data("y_baby");
		var transPrice = $this.data("trans");

		//숫자변환
		transP = Number(assignment.replace(/,/g, ""));
		babyP = Number(babyPrice);
		
		if(yBaby > min) {
			yBaby -= 1;
			
		}
	});
	
	///////////////////////// 예약하러가기 버튼이벤트  ///////////////////////////
	
	//예약 전 성인버튼 명수 증가 이벤트
	$(".adultPlus").on("click", function() {
		var $this = $(this); 
		var rno = $this.data("rno");
		var roomNo = $("#room-"+rno).data("roomno");
		var standard = $("#room-"+rno).data("standard");
		var max = $("#room-"+rno).data("max");
		var adultPrice = $("#room-"+rno).data("adult");
		var kidPrice = $("#room-"+rno).data("kid");
		var babyPrice = $("#room-"+rno).data("baby");
		var price = $("#room-"+rno).data("price");
	
		var adultValue = $(".adultValue"+roomNo);
		var adultArray = adultValue.text().split("");
		var adult = Number(adultArray[0]);
		
		var kidValue = $(".kidValue"+roomNo);
		var kidArray = kidValue.text().split("");
		var kid = Number(kidArray[0]);
		
		var babyValue = $(".babyValue"+roomNo);
		var babyArray = babyValue.text().split("");
		var baby = Number(babyArray[0]);
		
		var roomPriceValue = $(".roomPrice"+roomNo);
		var roomPriceArray = roomPriceValue.text().split("원");
		var roomPrice = roomPriceArray[0];
		
		//숫자변환
		priceP = Number(price.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		kidP = Number(kidPrice.replace(/,/g, ""));

		
		
		if((adult + kid + baby) < max) {
			adult += 1;
			adultValue.text(adult + "명");
			priceInfo(adult, kid, baby, standard, priceP, adultP, kidP, adultValue, kidValue, roomPriceValue, babyValue, roomNo);
		}
		console.log($(".adult"+roomNo).attr("value", adult));
		
	});
	 
	//예약 전 성인버튼 명수 감소 이벤트
	$(".adultMinus").on("click", function() {
		
		var $this = $(this); 
		var rno = $this.data("rno");
		var roomNo = $("#room-"+rno).data("roomno");
		var standard = $("#room-"+rno).data("standard");
		var max = $("#room-"+rno).data("max");
		var adultPrice = $("#room-"+rno).data("adult");
		var kidPrice = $("#room-"+rno).data("kid");
		var babyPrice = $("#room-"+rno).data("baby");
		var price = $("#room-"+rno).data("price");
		var min = $("#room-"+rno).data("min");
	
		var adultValue = $(".adultValue"+roomNo);
		var adultArray = adultValue.text().split("");
		var adult = Number(adultArray[0]);
		
		var kidValue = $(".kidValue"+roomNo);
		var kidArray = kidValue.text().split("");
		var kid = Number(kidArray[0]);
		
		var babyValue = $(".babyValue"+roomNo);
		var babyArray = babyValue.text().split("");
		var baby = Number(babyArray[0]);
		
		var roomPriceValue = $(".roomPrice"+roomNo);
		var roomPriceArray = roomPriceValue.text().split("원");
		var roomPrice = roomPriceArray[0];
		
		//숫자변환
		console.log(price);
		priceP = Number(price.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		kidP = Number(kidPrice.replace(/,/g, ""));
		
		if(adult > min) {
			adult -= 1;
			adultValue.text(adult + "명");
			priceInfo(adult, kid, baby, standard, priceP, adultP, kidP, adultValue, kidValue, roomPriceValue, babyValue, roomNo);
		}
		$(".adult"+roomNo).attr("value", adult);
	});
	
	//예약 전 아동버튼 명수 증가 이벤트
	$(".kidPlus").on("click", function() {
		
		var $this = $(this); 
		var rno = $this.data("rno");
		var roomNo = $("#room-"+rno).data("roomno");
		var standard = $("#room-"+rno).data("standard");
		var max = $("#room-"+rno).data("max");
		var adultPrice = $("#room-"+rno).data("adult");
		var kidPrice = $("#room-"+rno).data("kid");
		var babyPrice = $("#room-"+rno).data("baby");
		var price = $("#room-"+rno).data("price");
	
		var adultValue = $(".adultValue"+roomNo);
		var adultArray = adultValue.text().split("");
		var adult = Number(adultArray[0]);
		
		var kidValue = $(".kidValue"+roomNo);
		var kidArray = kidValue.text().split("");
		var kid = Number(kidArray[0]);
		
		var babyValue = $(".babyValue"+roomNo);
		var babyArray = babyValue.text().split("");
		var baby = Number(babyArray[0]);
		
		var roomPriceValue = $(".roomPrice"+roomNo);
		var roomPriceArray = roomPriceValue.text().split("원");
		var roomPrice = roomPriceArray[0];
		
		//숫자변환
		priceP = Number(price.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		kidP = Number(kidPrice.replace(/,/g, ""));
		
		if((adult + kid + baby) < max) {
			kid += 1;
			kidValue.text(kid + "명");
			priceInfo(adult, kid, baby, standard, priceP, adultP, kidP, adultValue, kidValue, roomPriceValue, babyValue, roomNo);
		}
		$(".kid"+roomNo).attr("value", kid);
	});
	
	//예약 전 아동버튼 명수 감소 이벤트
	$(".kidMinus").on("click", function() {
		
		var $this = $(this); 
		var rno = $this.data("rno");
		var roomNo = $("#room-"+rno).data("roomno");
		var standard = $("#room-"+rno).data("standard");
		var max = $("#room-"+rno).data("max");
		var adultPrice = $("#room-"+rno).data("adult");
		var kidPrice = $("#room-"+rno).data("kid");
		var babyPrice = $("#room-"+rno).data("baby");
		var price = $("#room-"+rno).data("price");
	
		var adultValue = $(".adultValue"+roomNo);
		var adultArray = adultValue.text().split("");
		var adult = Number(adultArray[0]);
		
		var kidValue = $(".kidValue"+roomNo);
		var kidArray = kidValue.text().split("");
		var kid = Number(kidArray[0]);
		
		var babyValue = $(".babyValue"+roomNo);
		var babyArray = babyValue.text().split("");
		var baby = Number(babyArray[0]);
		
		var roomPriceValue = $(".roomPrice"+roomNo);
		var roomPriceArray = roomPriceValue.text().split("원");
		var roomPrice = roomPriceArray[0];
		
		//숫자변환
		priceP = Number(price.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		kidP = Number(kidPrice.replace(/,/g, ""));
		
		if(kid > 0) {
			kid -= 1;
			kidValue.text(kid + "명");
			priceInfo(adult, kid, baby, standard, priceP, adultP, kidP, adultValue, kidValue, roomPriceValue, babyValue, roomNo);
		}
		
		$(".kid"+roomNo).attr("value", kid);
	});
	
	//예약 전 유아버튼 명수 증가 이벤트
	$(".babyPlus").on("click", function() {
		
		var $this = $(this); 
		var rno = $this.data("rno");
		var roomNo = $("#room-"+rno).data("roomno");
		var standard = $("#room-"+rno).data("standard");
		var max = $("#room-"+rno).data("max");
		var adultPrice = $("#room-"+rno).data("adult");
		var kidPrice = $("#room-"+rno).data("kid");
		var babyPrice = $("#room-"+rno).data("baby");
		var price = $("#room-"+rno).data("price");
	
		var adultValue = $(".adultValue"+roomNo);
		var adultArray = adultValue.text().split("");
		var adult = Number(adultArray[0]);
		
		var kidValue = $(".kidValue"+roomNo);
		var kidArray = kidValue.text().split("");
		var kid = Number(kidArray[0]);
		
		var babyValue = $(".babyValue"+roomNo);
		var babyArray = babyValue.text().split("");
		var baby = Number(babyArray[0]);
		
		var roomPriceValue = $(".roomPrice"+roomNo);
		var roomPriceArray = roomPriceValue.text().split("원");
		var roomPrice = roomPriceArray[0];
		
		//숫자변환
		priceP = Number(price.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		kidP = Number(kidPrice.replace(/,/g, ""));
		
		if((adult + kid + baby) < max) {
			baby += 1;
			babyValue.text(baby + "명");
			priceInfo(adult, kid, baby, standard, priceP, adultP, kidP, adultValue, kidValue, roomPriceValue, babyValue, roomNo);
		}
		$(".baby"+roomNo).attr("value", baby);
	});
	
	//예약 전 유아버튼 명수 감소 이벤트
	$(".babyMinus").on("click", function() {
		
		var $this = $(this); 
		var rno = $this.data("rno");
		var roomNo = $("#room-"+rno).data("roomno");
		var standard = $("#room-"+rno).data("standard");
		var max = $("#room-"+rno).data("max");
		var adultPrice = $("#room-"+rno).data("adult");
		var kidPrice = $("#room-"+rno).data("kid");
		var babyPrice = $("#room-"+rno).data("baby");
		var price = $("#room-"+rno).data("price");
	
		var adultValue = $(".adultValue"+roomNo);
		var adultArray = adultValue.text().split("");
		var adult = Number(adultArray[0]);
		
		var kidValue = $(".kidValue"+roomNo);
		var kidArray = kidValue.text().split("");
		var kid = Number(kidArray[0]);
		
		var babyValue = $(".babyValue"+roomNo);
		var babyArray = babyValue.text().split("");
		var baby = Number(babyArray[0]);
		
		var roomPriceValue = $(".roomPrice"+roomNo);
		var roomPriceArray = roomPriceValue.text().split("원");
		var roomPrice = roomPriceArray[0];
		
		//숫자변환
		priceP = Number(price.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		kidP = Number(kidPrice.replace(/,/g, ""));
		
		if(baby > 0) {
			baby -= 1;
			babyValue.text(baby + "명");
			priceInfo(adult, kid, baby, standard, priceP, adultP, kidP, adultValue, kidValue, roomPriceValue, babyValue, roomNo);		
		}
		$(".baby"+roomNo).attr("value", baby);
	});
	
	
	//펜션 금액 구하는 함수
	function priceInfo(adult, kid, baby, standard, priceP, adultP, kidP, adultValue, kidValue, roomPriceValue, babyValue, roomNo) {
		
		if( (adult+kid+baby) <= standard ) {
			const pricePNum = priceP.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
			roomPriceValue.text(pricePNum + "원");
		}else if(adult >= standard ) {
			var realPrice = (adult - standard) * adultP + (kid * kidP) + priceP;
			const realPriceNum = realPrice.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
			
			roomPriceValue.text(realPriceNum + "원");
			console.log("ddd");
			$(".price"+roomNo).attr("value", realPrice);
		}else if(adult < standard) {
			if( (adult + kid) - standard < 0 ) {
				adult = 0;
				kid = 0;
				standard = 0;
				const pricePNum2 = priceP.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
				roomPriceValue.text(pricePNum2 + "원");
			}
			else {
				priceP = ( ((adult + kid) - standard ) * kidP) + priceP;
				const pricePNum3 = priceP.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
				roomPriceValue.text(pricePNum3 + "원");
			}
		}
	}
	
	// ajax 페이지용 전역변수
	var reBtn = true;
	var iBtn = true;
	var rBtn = true;
	
	///////////////////////// 객실안내 페이지(ajax)  ///////////////////////////
	$("#var").on("click", function() {
		var pensionNo = $("#pensionNo").val();
		var crtPage = $("#crtPage").val();
		var datepicker = $("#datepicker").val();
		var datepicker2 = $("#datepicker2").val();
		rBtn = true;
		iBtn = true;
		
		$("#roomList").show();
		$("#pensionInfo").empty();
		$("#pensionInfo").hide();
		$("#review").empty();
		$("#review").hide();
		$("#var").css("color", "red");
		$("#var1").css("color", "black");
		$("#var2").css("color", "black");
	});
		
	///////////////////////// 숙소정보 페이지(ajax)   ///////////////////////////	
	$("#var1").on("click", function() {
		rBtn = true;
		var pensionNo = $("#pensionNo").val();
		
		$("#pensionInfo").show();
		$("#roomList").hide();
		$("#review").hide();
		$("#review").empty();
		$("#var").css("color", "black");
		$("#var1").css("color", "red");
		$("#var2").css("color", "black");
		$("#pensionInfo").width("1024px");
		$("#pensionInfo").css("background-color", "rgba(0,0,0,0.08)");
		$("#pensionInfo").css("border-radius", "5px");
		$("#pensionInfo").css("border", "1px solid black");
		$("#pensionInfo").css("margin", "auto");
		$("#pensionInfo").css("margin-top", "30px");
		$("#pensionInfo").css("padding-top", "5px");
		$("#pensionInfo").css("padding-left", "5px");
		
		$.ajax({
			url : "${pageContext.request.contextPath}/api/infomation?pensionNo=" + pensionNo,		
			type : "post",
			//contentType : "application/json",
			//data : ,

			dataType : "json",
			success : function(iMap){
				/*성공시 처리해야될 코드 작성*/
				
				if(iBtn == true) {
					var1Render(iMap);
					iBtn = false;
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}); 
	
	//숙소정보 페이지 클릭 시 html 그려주는 함수 
	function var1Render(iMap) {
		var str = '';
			str += '<div id="aroundInfo">';
			str += '	<div class="info">주변정보</div>';	
			str += '	<span>'+iMap.AREA_INFO1+'</span><br>';
			str += '	<span>'+iMap.AREA_INFO2+'</span><br>';
			str += '	<span>'+iMap.AREA_INFO3+'</span><br>';
			str += '</div>';
			str += '<div id="notice">';
			str += '	<div class="info">공지사항</div>';	
			str += '	<span>방역실시 / 손소독제 구비 / 전 직원 마스크 착용</span>'; //X
			str += '	</div>';
			str += '<div id="basic">';
			str += '	<div class="info">기본정보</div>';	
			str += '	<span>입실 : 15:00 | 퇴실 : 11:00</span>'; //X
			str += '</div>';
			str += '<div id="guestroom">';
			str += '	<div class="info">객실정보</div>';	//X
			str += '	<span>앞마당 : 프라이빗한 모닥데크, 캠핑의자, 비바코로마 5인텐트, 실외 슬리퍼 (현관 입구 선반에 비치), 손소독제 (현관입구)</span>';
			str += '</div>';
			str += '<div id="addPeople">';
			str += '	<div class="info">인원 추가정보</div>';	
			str += '	<span>성인 1인당'+iMap.ADD_ADULT_PRICE+'원</span><br>'; 
			str += '	<span>아동 1인당'+iMap.ADD_KID_PRICE+'원</span><br>'; 
			str += '	<span>영유아 1인당 '+iMap.ADD_BABY_PRICE+'원</span><br>'; 
			str += '</div>';
			str += '<div id="dog">';
			str += '	<div class="info">애견 입실안내</div>';	
			str += '	<span>애견동반을 원할 시 사전문의 및 상담필수</span>'; //X
			str += '</div>';
			str += '<div id="service">';
			str += '	<div class="info">펜션 서비스</div>';
			str += '	<span>시설 이용문의 및 비용 별도 펜션문의</span>';	//X
			str += '</div>';
			str += '<div id="bbq">';
			str += '	<div class="info">바비큐</div>';	
			str += '	<span>숯 + 그릴 대여 : 2인 기준 20,000원</span>';	//X
			str += '</div>';
			str += '<div id="cancle">';
			str += '	<div class="info">취소 및 환불규정</div>';
			if(iMap.REFUND_NO == 10) {
				str += '		<table id = "pay_refund" border = "1">';
				str += '			<thead>';
				str += '				<tr>';
				str += '					<th class="text-center">기준날짜</th>';
				str += '					<th class="text-center">10일 전</th>';
				str += '				</tr>';
				str += '			</thead>';
				str += '			<tbody class="text-center">';
				str += '				<tr>';
				str += '					<td id = "rateguide" rowspan = "11">예약 취소 시 <br> 환불금액 비율</td>';
				str += '					<td>10일 전 : 100%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>9일 전 : 90%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>8일 전 : 80%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>7일 전 : 70%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>6일 전 : 60%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>5일 전 : 50%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>4일 전 : 40%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>3일 전 : 30%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>2일 전 : 20%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>1일 전 : 10%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>숙박일 당일, no-show 환불 불가</td>';
				str += '				</tr>';
				str += '			</tbody>';
				str += '		</table>';
			}else if(iMap.REFUND_NO == 7) {
				str += '		<table id = "pay_refund" border = "1">';
				str += '			<thead>';
				str += '				<tr>';
				str += '					<th class="text-center">기준날짜</th>';
				str += '					<th class="text-center">7일 전</th>';
				str += '				</tr>';
				str += '			</thead>';
				str += '			<tbody class="text-center">';
				str += '				<tr>';
				str += '					<td id = "rateguide" rowspan = "8">예약 취소 시 <br> 환불금액 비율</td>';
				str += '					<td>7일 전 : 100%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>6일 전 : 90%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>5일 전 : 85%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>4일 전 : 80%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>3일 전 : 70%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>2일 전 : 50%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>1일 전 : 30%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>숙박일 당일, no-show 환불 불가</td>';
				str += '				</tr>';
				str += '			</tbody>';
				str += '		</table>';
			}else if(iMap.REFUND_NO == 6) {
				str += '		<table id = "pay_refund" border = "1">';
				str += '			<thead>';
				str += '				<tr>';
				str += '					<th class="text-center">기준날짜</th>';
				str += '					<th class="text-center">6일 전</th>';
				str += '				</tr>';
				str += '			</thead>';
				str += '			<tbody class="text-center">';
				str += '				<tr>';
				str += '					<td id = "rateguide" rowspan = "7">예약 취소 시 <br> 환불금액 비율</td>';
				str += '					<td>6일 전 : 100%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>5일 전 : 90%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>4일 전 : 80%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>3일 전 : 70%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>2일 전 : 50%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>1일 전 : 30%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>숙박일 당일, no-show 환불 불가</td>';
				str += '				</tr>';
				str += '			</tbody>';
				str += '		</table>';
			}
			str += '</div>';
			str += '<div id="checkList">';
			str += '	<div class="info">확인사항 및 기타</div>';
			str += '	<span>'+iMap.ETC+'</span>';
			str += '</div>';
			
			$("#pensionInfo").append(str);
	};
	
	//펜션 별점 옆 리뷰 수 클릭 이벤트(ajax)
	//클릭 시 리뷰페이지로 전환되며 스크롤 이동
	$("#pensionReview").on("click", function(event) {
		var pensionNo = $("#pensionNo").val();
		iBtn = true;
		
		var offset = $("#iconBox").offset();
		
		console.log(offset);
		 $('body,html').animate({scrollTop:offset.top},500);  
		
		$("#review").show();
		$("#pensionInfo").hide();
		$("#pensionInfo").empty();
		$("#roomList").hide();
		$("#var").css("color", "black");
		$("#var1").css("color", "black");
		$("#var2").css("color", "red");
		
		$.ajax({
			url : "${pageContext.request.contextPath}/api/review?pensionNo=" + pensionNo,		
			type : "post",
			//contentType : "application/json",
			//data : ,
			dataType : "json",
			success : function(rMap){
				
				
				
				/*성공시 처리해야될 코드 작성*/
				if(rBtn == true) {
					var2Render(rMap);
					rBtn = false;
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
		
	});
	
	///////////////////////// 리뷰 페이지(ajax)  ///////////////////////////
	$("#var2").on("click", function() {
		var pensionNo = $("#pensionNo").val();
		iBtn = true;
		
		$("#review").show();
		$("#pensionInfo").hide();
		$("#pensionInfo").empty();
		$("#roomList").hide();
		$("#var").css("color", "black");
		$("#var1").css("color", "black");
		$("#var2").css("color", "red");
		
		$.ajax({
			url : "${pageContext.request.contextPath}/api/review?pensionNo=" + pensionNo,		
			type : "post",
			//contentType : "application/json",
			//data : ,
			dataType : "json",
			success : function(rMap){
				/*성공시 처리해야될 코드 작성*/
				if(rBtn == true) {
					var2Render(rMap);
					rBtn = false;
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}); 	
	
	//리뷰 페이지 클릭 시 html 그려주는 함수
	function var2Render(rMap) {
		var str = '';
			str += '<span id="ment">최고예요</span>';
			if(rMap.totalReview.AVGSTARS == 5.00) {
				str += '<div id="star">';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '</div>';
			}else if(rMap.totalReview.AVGSTARS == 4.10 && rMap.totalReview.AVGSTARS == 4.99) {
				str += '<div id="star">';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png"></span>';
				str += '</div>';
			}else if(rMap.totalReview.AVGSTARS == 4.00) {
				str += '<div id="star">';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '</div>';
			}else if(rMap.totalReview.AVGSTARS == 3.10 && rMap.totalReview.AVGSTARS == 3.99) {
				str += '<div id="star">';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '</div>';
			}else if(rMap.totalReview.AVGSTARS == 3.00) {
				str += '<div id="star">';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '</div>';
			}else if(rMap.totalReview.AVGSTARS == 2.10 && rMap.totalReview.AVGSTARS == 2.99) {
				str += '<div id="star">';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '</div>';
			}else if(rMap.totalReview.AVGSTARS == 2.00) {
				str += '<div id="star">';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '</div>';
			}else if(rMap.totalReview.AVGSTARS == 1.10 && rMap.totalReview.AVGSTARS == 1.99) {
				str += '<div id="star">';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '</div>';
			}else if(rMap.totalReview.AVGSTARS == 1.00) {
				str += '<div id="star">';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '</div>';
			}else {
				str += '<div id="star">';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
				str += '</div>';
			}
			str += '<div id="reviewCount">';
			str += '	<span id="allReview">전체리뷰' + rMap.totalReview.RCOUNT + '</span>';
			str += '	<span id="pensionReview">제휴점 답변' + rMap.totalReview.REPCOUNT + '</span>';
			str += '</div>';
			str += '<div id="reviewBox">';

			for(var i = 0; i < rMap.allReview.length; i++) {
				str += '	<div id="guestContainer">';
				str += '		<div class="box">';
				str += '			<img src="${pageContext.request.contextPath}/assets/image/detail/guest.png">';
				str += '		</div>';
				str += '		<div id="guestBox">';
				str += '			<span id="guestReview">' + rMap.allReview[i].TITLE + '</span>';
				if(rMap.allReview[i].STARS == 5.0) {
					str += '			<div id="reviewStar">';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span id="starScore">5.0</span>';
					str += '			</div>';
				}else if(rMap.allReview[i].STARS == 4.5) {
					str += '			<div id="reviewStar">';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png"></span>';
					str += '				<span id="starScore">4.5</span>';
					str += '			</div>';
				}else if(rMap.allReview[i].STARS == 4.0) {
					str += '			<div id="reviewStar">';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span id="starScore">4.0</span>';
					str += '			</div>';
				}else if(rMap.allReview[i].STARS == 3.5) {
					str += '			<div id="reviewStar">';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span id="starScore">3.5</span>';
					str += '			</div>';
				}else if(rMap.allReview[i].STARS == 3.0) {
					str += '			<div id="reviewStar">';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span id="starScore">3.0</span>';
					str += '			</div>';
				}else if(rMap.allReview[i].STARS == 2.5) {
					str += '			<div id="reviewStar">';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span id="starScore">2.5</span>';
					str += '			</div>';
				}else if(rMap.allReview[i].STARS == 2.0) {
					str += '			<div id="reviewStar">';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span id="starScore">2.0</span>';
					str += '			</div>';
				}else if(rMap.allReview[i].STARS == 1.5) {
					str += '			<div id="reviewStar">';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span id="starScore">1.5</span>';
					str += '			</div>';
				}else if(rMap.allReview[i].STARS == 1.0) {
					str += '			<div id="reviewStar">';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span id="starScore">1.0</span>';
					str += '			</div>';
				}else if(rMap.allReview[i].STARS == 0.5) {
					str += '			<div id="reviewStar">';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsHarf.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/starsEmpty.png"></span>';
					str += '				<span id="starScore">1.0</span>';
					str += '			</div>';
				}
				str += '			<div id="guestInfo">';
				str += '				<span id="roomName">' + rMap.allReview[i].ROOM_NAME + ' 이용' + '</span>';
				str += '				<span> | ' + rMap.allReview[i].NAME + '</span>';
				str += '			</div>';
				str += '			<span id="reviewContent">' + rMap.allReview[i].CONTENT + '</span>';
				str += '			<div id="roomImg">';
				str += '				<ul>';
				str += '					<li><img src="${pageContext.request.contextPath}/upload/' + rMap.allReview[i].IMAGE1 + '"></li>';
				str += '					<li><img src="${pageContext.request.contextPath}/upload/' + rMap.allReview[i].IMAGE2 + '"></li>';
				str += '				</ul>';
				str += '			</div>';
				str += '			<span id="guestRegDate">' + rMap.allReview[i].REG_DATE + '</span>';
				str += '			<div id="ceoContainer">';
				str += '				<div class="box">';
				str += '					<img src="${pageContext.request.contextPath}/assets/image/detail/guest.png">';
				str += '				</div>';
				str += '				<div id="ceoInfo">';
				str += '					<span id="ceoReview">제휴점 답변</span>';
				str += '					<span id="ceoContent">' + rMap.allReview[i].RCONTENT + '</span>';
				str += '					<span id="ceoRegDate">' + rMap.allReview[i].RREG_DATE + '</span>';
				str += '				</div>';
				str += '			</div>';
				str += '		</div>';
				str += '	</div>';
			}
			
			str += '</div>';
			
			$("#review").append(str);
	}	
	
</script>

</html>