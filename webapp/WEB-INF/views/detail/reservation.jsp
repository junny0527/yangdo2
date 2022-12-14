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
	            <button id="map">?????? ????????????</button>
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
				<div id="imgCount">${pMap.imgList[0].RN} / ${pMap.totalCnt} | ????????????</div>
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
							<a href="#" style="cursor:default;">
								<button style="visibility:hidden;" id="left">
									<img src="${pageContext.request.contextPath}/assets/image/detail/left.png">
								</button>
							</a>
						</c:when>
					</c:choose>
					<ul>
						<c:forEach items="${pMap.imgList}" var="imgList" varStatus="status">
							<c:choose>
								<c:when test="${pMap.imgSize == 1}">
									<li style="position:relative; top:-33.2%; left:-24.5%;">
										<img class="list" src="${pageContext.request.contextPath}/upload/${imgList.SAVE_NAME}" alt="${imgList.RN}">
									</li>
								</c:when>
								<c:when test="${pMap.imgSize == 2}">
									<li style="position:relative; top:-33.2%; left:0;">
										<img class="list" src="${pageContext.request.contextPath}/upload/${imgList.SAVE_NAME}" alt="${imgList.RN}">
									</li>
								</c:when>
								<c:when test="${pMap.imgSize == 3 && status.count < 3}">
									<li style="position:relative; top:-8.3%; left:0;">
										<img class="list" src="${pageContext.request.contextPath}/upload/${imgList.SAVE_NAME}" alt="${imgList.RN}">
									</li>
								</c:when>
								<c:when test="${pMap.imgSize == 3 && status.count == 3}">
									<li style="position:relative; top:-25%; left:-24.5%;">
										<img class="list" src="${pageContext.request.contextPath}/upload/${imgList.SAVE_NAME}" alt="${imgList.RN}">
									</li>
								</c:when>
								<c:when test="${pMap.imgSize == 4 && status.count < 3}">
									<li style="position:relative; top:-8.3%; left:0;">
										<img class="list" src="${pageContext.request.contextPath}/upload/${imgList.SAVE_NAME}" alt="${imgList.RN}">
									</li>
								</c:when>
								<c:when test="${pMap.imgSize == 4 && status.count == 3}">
									<li style="position:relative; top:-25%; left:0;">
										<img class="list" src="${pageContext.request.contextPath}/upload/${imgList.SAVE_NAME}" alt="${imgList.RN}">
									</li>
								</c:when>
								<c:when test="${pMap.imgSize == 4 && status.count == 4}">
									<li style="position:relative; top:-25%; left:0;">
										<img class="list" src="${pageContext.request.contextPath}/upload/${imgList.SAVE_NAME}" alt="${imgList.RN}">
									</li>
								</c:when>
								<c:when test="${pMap.imgSize == 5 && status.count < 3}">
									<li style="position:relative; top:0; left:0;">
										<img class="list" src="${pageContext.request.contextPath}/upload/${imgList.SAVE_NAME}" alt="${imgList.RN}">
									</li>
								</c:when>
								<c:when test="${pMap.imgSize == 5 && status.count == 3}">
									<li style="position:relative; top:0; left:0;">
										<img class="list" src="${pageContext.request.contextPath}/upload/${imgList.SAVE_NAME}" alt="${imgList.RN}">
									</li>
								</c:when>
								<c:when test="${pMap.imgSize == 5 && status.count == 4}">
									<li style="position:relative; top:0; left:0;">
										<img class="list" src="${pageContext.request.contextPath}/upload/${imgList.SAVE_NAME}" alt="${imgList.RN}">
									</li>
								</c:when>
								<c:when test="${pMap.imgSize == 5 && status.count == 5}">
									<li style="position:relative; top:0; left:-24.5%;">
										<img class="list" src="${pageContext.request.contextPath}/upload/${imgList.SAVE_NAME}" alt="${imgList.RN}">
									</li>
								</c:when>
								<c:when test="${pMap.imgSize == 6}">
									<li>
										<img class="list" src="${pageContext.request.contextPath}/upload/${imgList.SAVE_NAME}" alt="${imgList.RN}">
									</li>
								</c:when>
							</c:choose>
						</c:forEach>
					</ul>
					<c:forEach begin="${pMap.startPageBtnNo}" end="${pMap.endPageBtnNo}" step="1" var="page">
						<c:if test="${ (pMap.totalCnt - (pMap.imgSize * page )) > 0 && pMap.imgSize == 6}">	
							<c:choose>
								<c:when test="${crtPage == page && crtPage < 4}">
									<a id="next" href="${pageContext.request.contextPath}/reservation?pensionNo=${pMap.pInfo.NO}&crtPage=${page +1}
										&datepicker=${datepicker}&datepicker2=${datepicker2}">
										<button id="right">
											<img src="${pageContext.request.contextPath}/assets/image/detail/right.png">
										</button>
									</a>
								</c:when>
							</c:choose>
						</c:if>
					</c:forEach>
				</div>
			</div>
			<!-- //gallery -->
		</div>
		<!-- //main -->  
		<div id="iconBox">
			<h4>???????????? ??? ?????????</h4>
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
			   	<button id="var">????????????</button>
				<button id="var1">????????????</button>
				<button id="var2">??????</button>
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
							<span>????????? : </span> <input type="text" id="datepicker" name="datepicker" value="${datepicker}"> 
							<span>????????? : </span> <input type="text" id="datepicker2" name="datepicker2" value="${datepicker2}">
						</c:when>
					</c:choose>
					
					<button type="submit">?????? ????????????</button><br>
				</form>
			</div>
			<!-- //calendar -->
			
			<c:forEach items="${pMap.roomList}" var="roomVo" varStatus="status">
				<c:choose>
					<c:when test="${roomVo.STATUS == 6}">
						<form action="${pageContext.request.contextPath}/res/yangdoreserve/${roomVo.RESERVATIONSNO}">
						<input type="hidden" class="yAdult${roomVo.NO}" name=yAdult value="${roomVo.ADULT}">
						<input type="hidden" class="yKid${roomVo.NO}" name=yKid value="${roomVo.KID}">
						<input type="hidden" class="yBaby${roomVo.NO}" name=yBaby value="${roomVo.BABY}">
						<input type="hidden" class="yPrice${roomVo.NO}" name=transPrice value="${roomVo.TRANS_PRICE}">
						<input type="hidden"  name=reservationsNo value="${roomVo.RESERVATIONSNO}">
						<input type="hidden"  name=pensionNo value="${pMap.pInfo.NO}">
						<input type="hidden"  name=datepicker value="${pMap.datepicker}">
						<input type="hidden"  name=datepicker2 value="${pMap.datepicker2}">
						<input type="hidden"  name=check_in value="${pMap.pInfo.CHECK_IN}">
						<input type="hidden"  name=check_out value="${pMap.pInfo.CHECK_OUT}">
						<input type="hidden"  name=roomNo value="${roomVo.NO}">
						<input type="hidden"  name=name value="${pMap.pInfo.NAME}">
						<input type="hidden"  name=roomName value="${roomVo.ROOM_NAME}">
						<input type="hidden"  name=nickName value="${userVo.nickName}">
						<input type="hidden"  name=adultPrice value="${roomVo.ADULT_PRICE}">
						<input type="hidden"  name=kidPrice value="${roomVo.KID_PRICE}">
						<input type="hidden"  name=standard value="${roomVo.STANDARD_PEOPLE}">
							<div class="room">
								<img class="roomImg" src="${pageContext.request.contextPath}/upload/${roomVo.SAVE_NAME}">
								<button class="roomImgList" type="button" name="${roomVo.NO}">?????? ????????????</button>
								<div class="roomInfo">
									<span class="roomName">${roomVo.ROOM_NAME}</span>
									<div class="infoBtn">
										<span>?????? ????????????</span>
										<button type="button" class="information_Use" name="${roomVo.NO}">??????</button>
									</div>
									<div class="settingPeople">?????? ${roomVo.STANDARD_PEOPLE}??? / ?????? ${roomVo.MAX_PEOPLE}???</div>
									<div class="defaultForm" id="y-room${roomVo.NO}" data-min="0" data-price="${roomVo.PRICE}" data-y_adult="${roomVo.ADULT_PRICE}"
												data-trans="${roomVo.TRANS_PRICE}" data-kid="${roomVo.KID}" data-adult="${roomVo.ADULT}" data-baby="${roomVo.BABY}" 
												data-max="${roomVo.MAX_PEOPLE}" data-totalprice="${roomVo.TOTAL_PRICE}" data-roomno="${roomVo.NO}" 
												data-standard="${roomVo.STANDARD_PEOPLE}" data-y_kid="${roomVo.KID_PRICE}">
										<div>
											<span class="people">??????</span>
											<div>
												<button type="button" class="minus yAdultMinus" data-yno="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span class="yAdultValue${roomVo.NO}">${roomVo.ADULT}???</span>
												<button type="button" class="plus yAdultPlus" data-yno="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div>
											<span class="people">??????</span>
											<div>
												<button type="button" class="minus yKidMinus" data-yno="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span class="yKidValue${roomVo.NO}">${roomVo.KID}???</span>
												<button type="button" class="plus yKidPlus" data-yno="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div>
											<span class="people">??????</span>
											<div>
												<button type="button" class="minus yBabyMinus" data-yno="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span class="yBabyValue${roomVo.NO}">${roomVo.BABY}???</span>
												<button type="button" class="plus yBabyPlus" data-yno="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div class="price">
											<span class="roomPrice">${roomVo.TOTAL_PRICE}???</span> 
											<span class="assignmentPrice${roomVo.NO}">${roomVo.TRANS_PRICE}???</span>
										</div>
									</div>
									<!-- //defaultForm -->
									<button>?????????????????????</button>
								</div>
								<!-- //roomInfo -->
							</div>
							<!-- //room -->
						</form>
					</c:when>
					<c:when test="${roomVo.STATUS == 1}">
						<form action="#">
							<div class="room reservation">
								<img class="roomImg" src="${pageContext.request.contextPath}/upload/${roomVo.SAVE_NAME}">
								<button class="roomImgList" type="button" name="${roomVo.NO}">?????? ????????????</button>
								<div class="roomInfo">
									<span class="roomName">${roomVo.ROOM_NAME}</span>
									<div class="infoBtn">
										<span>?????? ????????????</span>
										<button class="information_Use" type="button" name="${roomVo.NO}">??????</button>
									</div>
									<div class="settingPeople">?????? ${roomVo.STANDARD_PEOPLE}??? / ?????? ${roomVo.MAX_PEOPLE}???</div>
									<div class="defaultForm">
										<div>
											<span class="people">??????</span>
											<div>
												<button type="button" class="minus" style="cursor:not-allowed;">
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span>${roomVo.ADULT}???</span>
												<button type="button" class="plus" style="cursor:not-allowed;">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div>
											<span class="people">??????</span>
											<div>
												<button type="button" class="minus" style="cursor:not-allowed;">
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span>${roomVo.KID}???</span>
												<button type="button" class="plus" style="cursor:not-allowed;">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div>
											<span class="people">??????</span>
											<div>
												<button type="button" class="minus" style="cursor:not-allowed;">
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span>${roomVo.BABY}???</span>
												<button type="button" class="plus" style="cursor:not-allowed;">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div class="price">
											<span class="assignmentPrice" style="visibility:hidden;">${roomVo.TRANS_PRICE}???</span>
											<span class="roomPrice" style="text-decoration:none; visibility:hidden;">${roomVo.TOTAL_PRICE}???</span> 
										</div>
									</div>
									<!-- //defaultForm -->
									<button type="button">????????????</button>
								</div>
								<!-- //roomInfo -->
							</div>
							<!-- //room reservation -->
						</form>
					</c:when>
					<c:otherwise>
						<form action="${pageContext.request.contextPath}/res/reserve">
						<input type="hidden" class="adult${roomVo.NO}" name=adult value="${roomVo.STANDARD_PEOPLE}">
						<input type="hidden" class="kid${roomVo.NO}" name=kid value="0">
						<input type="hidden" class="baby${roomVo.NO}" name=baby value="0">
						<input type="hidden" class="price${roomVo.NO}" name=price value="${roomVo.PRICE}">
						<input type="hidden"  name=pensionNo value="${pMap.pInfo.NO}">
						<input type="hidden"  name=datepicker value="${pMap.datepicker}">
						<input type="hidden"  name=datepicker2 value="${pMap.datepicker2}">
						<input type="hidden"  name=check_in value="${pMap.pInfo.CHECK_IN}">
						<input type="hidden"  name=check_out value="${pMap.pInfo.CHECK_OUT}">
						<input type="hidden"  name=roomNo value="${roomVo.NO}">
						<input type="hidden"  name=name value="${pMap.pInfo.NAME}">
						<input type="hidden"  name=roomName value="${roomVo.ROOM_NAME}">
						<input type="hidden"  name=nickName value="${userVo.nickName}">
						<input type="hidden"  name=adultPrice value="${roomVo.ADULT_PRICE}">
						<input type="hidden"  name=kidPrice value="${roomVo.KID_PRICE}">
						<input type="hidden"  name=standard value="${roomVo.STANDARD_PEOPLE}">
							<div class="room noReservation">
								<img class="roomImg" src="${pageContext.request.contextPath}/upload/${roomVo.SAVE_NAME}">
								<button type="button" class="roomImgList" name="${roomVo.NO}">?????? ????????????</button>
								<div class="roomInfo">
									<span class="roomName">${roomVo.ROOM_NAME}</span>
									<div class="infoBtn">
										<span>?????? ????????????</span>
										<button type="button" class="information_Use" name="${roomVo.NO}">??????</button>
									</div>
									<div class="settingPeople">?????? ${roomVo.STANDARD_PEOPLE}??? / ?????? ${roomVo.MAX_PEOPLE}???</div>
									<div id="room-${roomVo.NO}" class="defaultForm" data-max="${roomVo.MAX_PEOPLE}" data-min="1" 
										data-adult="${roomVo.ADULT_PRICE}" data-price="${roomVo.PRICE}" data-kid="${roomVo.KID_PRICE}" 
										data-standard="${roomVo.STANDARD_PEOPLE}" data-adult="${roomVo.ADULT_PRICE}" data-roomno="${roomVo.NO}">
										<div>
											<span class="people">??????</span>
											<div>
												<button type="button" class="minus adultMinus" data-rno="${roomVo.NO}"> 
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span class="adultValue${roomVo.NO}">${roomVo.STANDARD_PEOPLE}???</span>
												<button type="button" class="plus adultPlus" data-rno="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div>
											<span class="people">??????</span>
											<div>
												<button type="button" class="minus kidMinus" data-rno="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span class="kidValue${roomVo.NO}">0???</span>
												<button type="button" class="plus kidPlus" data-rno="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div>
											<span class="people">??????</span>
											<div>
												<button type="button" class="minus babyMinus" data-rno="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
												</button>
												<span class="babyValue${roomVo.NO}">0???</span>
												<button type="button" class="plus babyPlus" data-rno="${roomVo.NO}">
													<img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
												</button>
											</div>
										</div>
										<div class="price">
											<span class="assignmentPrice" style="visibility:hidden;">${roomVo.TRANS_PRICE}???</span>
											<span class="roomPrice${roomVo.NO}" style="text-decoration:none;">${roomVo.PRICE}???</span> 
										</div>
									</div>
									<!-- //defaultForm -->
									<button type="submit">??????????????????</button>
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

<!-- ?????? ?????? -->
 <div class="modal" id="local">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">        
      </div>
      <div class="modal-body">
        <div id="map1" style="width: 100%; height: 100%;"></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">??????</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- ?????? ???????????? ?????? -->
<div class="modal fade infomationUse">
	<div class="modal-dialog">
		<div class="modal-content modalContent">
			<div class="modal-header">
				<h4 class="modal-title">?????? ????????????</h4>
			</div>
			<div class="modal-body modalInfo">
				<div>
					<div class="facTitle">????????????</div>
					<span class="facilities sAmen"></span>
				</div>
				<div>
					<div class="facTitle">????????????</div>
					<div class="facilities roomNo"></div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">??????</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- ?????? ???????????? ?????? -->
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
				<button type="button" class="btn btn-default btnClose" data-dismiss="modal">??????</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<script type="text/javascript">


	///////////////////////// ?????????????????? (??????) ///////////////////////////
	var container = ""; 
	var options = ""; 
	var map = ""; 
	var center = "";
	var markerPosition = "";
	var mapContainer = "";
	
	const geocoder = new kakao.maps.services.Geocoder()
	geocoder.addressSearch("${pMap.pInfo.ADDRESS}", (res, stat) => { 
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
	      
	      
	      container = document.getElementById('map1'); //????????? ?????? ????????? DOM ????????????
	      options = { //????????? ????????? ??? ????????? ?????? ??????
	    		  
			      center: new kakao.maps.LatLng(res[0].y, res[0].x), //????????? ????????????.
			  	  level: 3 //????????? ??????(??????, ?????? ??????)
	  			};
	      
	      map = new kakao.maps.Map(container, options);
	      center = map.getCenter();
	      
	      // ????????? ????????? ??????????????? 
	      markerPosition = new kakao.maps.LatLng(res[0].y, res[0].x);
		
	      // ????????? ?????? ?????? ??????????????? ???????????????
	      marker.setMap(map);
	     
	      mapContainer = document.getElementById('map1'), // ????????? ????????? div 
	      mapOption = {
		        center: new kakao.maps.LatLng(res[0].y, res[0].x), // ????????? ????????????
		        level: 1 // ????????? ?????? ??????
    		};  
	   }
	})
	
	// ?????? ???????????? ?????? ????????? ?????????
	$("#map").on("click", function() {

		$("#local").modal("show");
		//?????? ????????? ?????? ??? ??? ??????
		map.relayout();
		//?????? ????????? ?????? ??? ?????? ??? ??????
		map.setCenter(center);
	});
	
	///////////////////////// ???????????? ///////////////////////////
	$(function() {
        //?????? datepicker??? ?????? ?????? ?????? ??????
        $.datepicker.setDefaults({
            dateFormat: 'yy-mm-dd' //Input Display Format ??????
            ,showOtherMonths: true //??? ????????? ???????????? ???????????? ????????? ??????
            ,showMonthAfterYear:true //?????? ?????? ?????????, ?????? ??? ??????
            ,changeYear: true //?????????????????? ??? ?????? ??????
            ,changeMonth: true //?????????????????? ??? ?????? ??????                
            ,showOn: "both" //button:????????? ????????????,????????? ???????????? ?????? ?????? ^ both:????????? ????????????,????????? ???????????? input??? ???????????? ?????? ??????  
            ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //?????? ????????? ??????
            ,buttonImageOnly: true //?????? ????????? ?????? ????????? ?????????, ???????????? ????????? ???
            ,buttonText: "??????" //????????? ????????? ?????? ?????? ??? ???????????? ?????????                
            ,yearSuffix: "???" //????????? ?????? ?????? ?????? ?????? ?????????
            ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //????????? ??? ?????? ?????????
            ,monthNames: ['1???','2???','3???','4???','5???','6???','7???','8???','9???','10???','11???','12???'] //????????? ??? ?????? Tooltip ?????????
            ,dayNamesMin: ['???','???','???','???','???','???','???'] //????????? ?????? ?????? ?????????
            ,dayNames: ['?????????','?????????','?????????','?????????','?????????','?????????','?????????'] //????????? ?????? ?????? Tooltip ?????????
            ,minDate: "-1Y" //?????? ????????????(-1D:?????????, -1M:?????????, -1Y:?????????)
            ,maxDate: "+1Y" //?????? ????????????(+1D:?????????, -1M:?????????, -1Y:?????????)                    
        });
 
		//input??? datepicker??? ??????
		$("#datepicker").datepicker();                    
		$("#datepicker2").datepicker();
		var datepicker = $("#datepicker").val();
		var datepicker2 = $("#datepicker2").val();
	            
        if(${"datepicker"} != null && ${"datepicker2"} != null) {
        	//From??? ???????????? ?????? ????????? ??????
         	$('#datepicker').datepicker('setDate', datepicker); //(-1D:?????????, -1M:?????????, -1Y:?????????), (+1D:?????????, -1M:?????????, -1Y:?????????)
        	//To??? ???????????? ????????? ??????
        	$('#datepicker2').datepicker('setDate', datepicker2); //(-1D:?????????, -1M:?????????, -1Y:?????????), (+1D:?????????, -1M:?????????, -1Y:?????????)
        }
        
		if(datepicker == datepicker2) {
			alert("????????? ???????????? ?????? ??????????????????.");
		}else if(datepicker >= datepicker2) {
			alert("????????? ???????????? ?????? ??????????????????.");
		}
    });
	
	///////////////////////// ?????? ????????????  ///////////////////////////
	$(".information_Use").on("click", function() {
		//????????? ??????????????? ?????? ??????.
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
				/*????????? ??????????????? ?????? ??????*/
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
	
	///////////////////////// ?????? ????????????  ///////////////////////////
	//ajax??? ????????? ???????????? ?????? ??????
	var crtImgList;
	var crtPos = 0;
	
	//?????? ??? ??????(??? ????????? ?????? ???)
	$(".roomImgList").on("click", function() {
		var $this = $(this);  
		var roomNo = Number($this.attr("name")); 
		var pensionNo = $("#pensionNo").val();
		var src = "";
		console.log("????????? :"+roomNo);
		console.log("???????????? :"+pensionNo);
		
		$.ajax({
			url : "${pageContext.request.contextPath}/api/roomImg?pensionNo=" + pensionNo + "&roomNo=" + roomNo,		
			type : "post",
			//contentType : "application/json",
			//data : ,

			dataType : "json",
			success : function(roomImgList){
				crtImgList = roomImgList;
				/*????????? ??????????????? ?????? ??????*/
				console.log("??????????????? :"+roomImgList.length);
				
				src = "${pageContext.request.contextPath}/upload/"+ crtImgList[crtPos].SAVE_NAME;
				$(".roomImageList").attr("src", src);
				
				$(".roomPhoto").modal("show");
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	
	//??? ????????? ????????? ????????? ?????? ?????? ?????????
	$(".imgRight").on("click", function() {
		if(crtPos < crtImgList.length -1) {
			crtPos += 1;
			src = "${pageContext.request.contextPath}/upload/"+ crtImgList[crtPos].SAVE_NAME;
			$(".roomImageList").attr("src", src);
		}
	});
		
	//??? ????????? ????????? ?????? ?????? ?????? ?????????
	$(".imgLeft").on("click", function() {
		if(crtPos > 0 && crtPos < crtImgList.length) {
			crtPos -= 1;
			src = "${pageContext.request.contextPath}/upload/"+ crtImgList[crtPos].SAVE_NAME;
			$(".roomImageList").attr("src", src);
		}
	});	
	
	//?????? ??? ?????? ????????? (??? ?????????)
	$(".btnClose").on("click", function(){
		crtImgList = null;
		crtPos = 0;
	});	
	
	///////////////////////// ???????????? ??????????????? ?????????  ///////////////////////////
	$(".list").css("cursor", "pointer");

	$(".list").on("click", function() {
		var $this = $(this);
		var src = $this.attr("src");
		var no = $this.attr("alt");
		$("#mainImg").attr("src", src);
		$("#imgCount").text(no + ' / ' + ${pMap.totalCnt} + ' | ' + '????????????' );
	});
	
	///////////////////////// ???????????? ???????????????  ///////////////////////////
	var priceP;
	var adultP;
	var kidP;
	
	//?????? ???????????? ?????? ?????? ?????????
	$(".yAdultPlus").on("click", function() {
		
		var $this = $(this);
		var yno = $this.data("yno");
		var roomNo = $("#y-room"+yno).data("roomno");
		var standard = $("#y-room"+yno).data("standard");
		var max = $("#y-room"+yno).data("max");
		var adult = $("#y-room"+yno).data("adult");
		var kid = $("#y-room"+yno).data("kid");
		var baby = $("#y-room"+yno).data("baby");
		var price = $("#y-room"+yno).data("price");
		var min = $("#y-room"+yno).data("min");
		var adultPrice = $("#y-room"+yno).data("y_adult");
		var kidPrice = $("#y-room"+yno).data("y_kid");
		var transPrice = $("#y-room"+yno).data("trans");
		var totalPrice = $("#y-room"+yno).data("totalprice");
		
		var yAdultValue = $(".yAdultValue"+roomNo);
		var yAdultArray = yAdultValue.text().split("");
		var yAdult = Number(yAdultArray[0]);
		
		var yBabyValue = $(".yBabyValue"+roomNo);
		var yBabyArray = yBabyValue.text().split("");
		var yBaby = Number(yBabyArray[0]);
		
		var yKidValue = $(".yKidValue"+roomNo);
		var yKidArray = yKidValue.text().split("");
		var yKid = Number(yKidArray[0]);
		
		var assignmentValue = $(".assignmentPrice"+roomNo);
		var assignmentArray = assignmentValue.text().split("???");
		var assignment = assignmentArray[0];
		
		//????????????
		kidP = Number(kidPrice.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		totalP = Number(totalPrice.replace(/,/g, ""));
		transP = Number(transPrice.replace(/,/g, ""));
		priceP = Number(price.replace(/,/g, ""));
		
		if((yAdult + yKid + yBaby) >= max) {
			alert("????????? ?????????????????????. ?????? ??????????????????.");
		}else if((yAdult + yKid + yBaby) < max) {
			yAdult += 1;
			console.log(yAdult);
			console.log(adult);
			yAdultValue.text(yAdult + "???");
			yPriceInfo(adult, kid, baby, standard, priceP, adultP, kidP, yAdultValue, yKidValue, assignmentValue, transP ,yBabyValue, roomNo, yAdult, yKid, yBaby);
		}
		$(".yAdult"+roomNo).attr("value", yAdult);
	});
	
	//?????? ???????????? ?????? ?????? ?????????
	$(".yAdultMinus").on("click", function() {
		var $this = $(this);
		var yno = $this.data("yno");
		var roomNo = $("#y-room"+yno).data("roomno");
		var standard = $("#y-room"+yno).data("standard");
		var max = $("#y-room"+yno).data("max");
		var adult = $("#y-room"+yno).data("adult");
		var kid = $("#y-room"+yno).data("kid");
		var baby = $("#y-room"+yno).data("baby");
		var price = $("#y-room"+yno).data("price");
		var min = $("#y-room"+yno).data("min");
		var adultPrice = $("#y-room"+yno).data("y_adult");
		var kidPrice = $("#y-room"+yno).data("y_kid");
		var transPrice = $("#y-room"+yno).data("trans");
		var totalPrice = $("#y-room"+yno).data("totalprice");
		
		var yAdultValue = $(".yAdultValue"+roomNo);
		var yAdultArray = yAdultValue.text().split("");
		var yAdult = Number(yAdultArray[0]);
		
		var yBabyValue = $(".yBabyValue"+roomNo);
		var yBabyArray = yBabyValue.text().split("");
		var yBaby = Number(yBabyArray[0]);
		
		var yKidValue = $(".yKidValue"+roomNo);
		var yKidArray = yKidValue.text().split("");
		var yKid = Number(yKidArray[0]);
		
		var assignmentValue = $(".assignmentPrice"+roomNo);
		var assignmentArray = assignmentValue.text().split("???");
		var assignment = assignmentArray[0];
		
		
		//????????????
		kidP = Number(kidPrice.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		totalP = Number(totalPrice.replace(/,/g, ""));
		transP = Number(transPrice.replace(/,/g, ""));
		priceP = Number(price.replace(/,/g, ""));
		
		if(yAdult > 1) {
			yAdult -= 1;
			yAdultValue.text(yAdult + "???");
			yPriceInfo(adult, kid, baby, standard, priceP, adultP, kidP, yAdultValue, yKidValue, assignmentValue, transP ,yBabyValue, roomNo, yAdult, yKid, yBaby);
		}
		$(".yAdult"+roomNo).attr("value", yAdult);
	});
	
	//?????? ???????????? ?????? ?????? ?????????
	$(".yKidPlus").on("click", function() {
		var $this = $(this);
		var yno = $this.data("yno");
		var roomNo = $("#y-room"+yno).data("roomno");
		var standard = $("#y-room"+yno).data("standard");
		var max = $("#y-room"+yno).data("max");
		var adult = $("#y-room"+yno).data("adult");
		var kid = $("#y-room"+yno).data("kid");
		var baby = $("#y-room"+yno).data("baby");
		var price = $("#y-room"+yno).data("price");
		var min = $("#y-room"+yno).data("min");
		var adultPrice = $("#y-room"+yno).data("y_adult");
		var kidPrice = $("#y-room"+yno).data("y_kid");
		var transPrice = $("#y-room"+yno).data("trans");
		var totalPrice = $("#y-room"+yno).data("totalprice");
		
		var yAdultValue = $(".yAdultValue"+roomNo);
		var yAdultArray = yAdultValue.text().split("");
		var yAdult = Number(yAdultArray[0]);
		
		var yBabyValue = $(".yBabyValue"+roomNo);
		var yBabyArray = yBabyValue.text().split("");
		var yBaby = Number(yBabyArray[0]);
		
		var yKidValue = $(".yKidValue"+roomNo);
		var yKidArray = yKidValue.text().split("");
		var yKid = Number(yKidArray[0]);
		
		var assignmentValue = $(".assignmentPrice"+roomNo);
		var assignmentArray = assignmentValue.text().split("???");
		var assignment = assignmentArray[0];
		
		//????????????
		kidP = Number(kidPrice.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		totalP = Number(totalPrice.replace(/,/g, ""));
		transP = Number(transPrice.replace(/,/g, ""));
		priceP = Number(price.replace(/,/g, ""));
		
		if((yAdult + yKid + yBaby) >= max) {
			alert("????????? ?????????????????????. ?????? ??????????????????.");
		}else if((yAdult + yKid + yBaby) < max) {
			yKid += 1;
			yKidValue.text(yKid + "???");
			yPriceInfo(adult, kid, baby, standard, priceP, adultP, kidP, yAdultValue, yKidValue, assignmentValue, transP ,yBabyValue, roomNo, yAdult, yKid, yBaby);
		}
		$(".yKid"+roomNo).attr("value", yKid);
	});
	
	//?????? ???????????? ?????? ?????? ?????????
	$(".yKidMinus").on("click", function() {
		var $this = $(this);
		var yno = $this.data("yno");
		var roomNo = $("#y-room"+yno).data("roomno");
		var standard = $("#y-room"+yno).data("standard");
		var max = $("#y-room"+yno).data("max");
		var adult = $("#y-room"+yno).data("adult");
		var kid = $("#y-room"+yno).data("kid");
		var baby = $("#y-room"+yno).data("baby");
		var price = $("#y-room"+yno).data("price");
		var min = $("#y-room"+yno).data("min");
		var adultPrice = $("#y-room"+yno).data("y_adult");
		var kidPrice = $("#y-room"+yno).data("y_kid");
		var transPrice = $("#y-room"+yno).data("trans");
		var totalPrice = $("#y-room"+yno).data("totalprice");
		
		var yAdultValue = $(".yAdultValue"+roomNo);
		var yAdultArray = yAdultValue.text().split("");
		var yAdult = Number(yAdultArray[0]);
		
		var yBabyValue = $(".yBabyValue"+roomNo);
		var yBabyArray = yBabyValue.text().split("");
		var yBaby = Number(yBabyArray[0]);
		
		var yKidValue = $(".yKidValue"+roomNo);
		var yKidArray = yKidValue.text().split("");
		var yKid = Number(yKidArray[0]);
		
		var assignmentValue = $(".assignmentPrice"+roomNo);
		var assignmentArray = assignmentValue.text().split("???");
		var assignment = assignmentArray[0];
		
		//????????????
		kidP = Number(kidPrice.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		totalP = Number(totalPrice.replace(/,/g, ""));
		transP = Number(transPrice.replace(/,/g, ""));
		priceP = Number(price.replace(/,/g, ""));
		
		
		if(yKid > min) {
			yKid -= 1;
			yKidValue.text(yKid + "???");
			yPriceInfo(adult, kid, baby, standard, priceP, adultP, kidP, yAdultValue, yKidValue, assignmentValue, transP ,yBabyValue, roomNo, yAdult, yKid, yBaby);
		}
		$(".yKid"+roomNo).attr("value", yKid);
	});
	
	//?????? ???????????? ?????? ?????? ?????????
	$(".yBabyPlus").on("click", function() {
		var $this = $(this);
		var yno = $this.data("yno");
		var roomNo = $("#y-room"+yno).data("roomno");
		var standard = $("#y-room"+yno).data("standard");
		var max = $("#y-room"+yno).data("max");
		var adult = $("#y-room"+yno).data("adult");
		var kid = $("#y-room"+yno).data("kid");
		var baby = $("#y-room"+yno).data("baby");
		var price = $("#y-room"+yno).data("price");
		var min = $("#y-room"+yno).data("min");
		var adultPrice = $("#y-room"+yno).data("y_adult");
		var kidPrice = $("#y-room"+yno).data("y_kid");
		var transPrice = $("#y-room"+yno).data("trans");
		var totalPrice = $("#y-room"+yno).data("totalprice");
		
		var yAdultValue = $(".yAdultValue"+roomNo);
		var yAdultArray = yAdultValue.text().split("");
		var yAdult = Number(yAdultArray[0]);
		
		var yBabyValue = $(".yBabyValue"+roomNo);
		var yBabyArray = yBabyValue.text().split("");
		var yBaby = Number(yBabyArray[0]);
		
		var yKidValue = $(".yKidValue"+roomNo);
		var yKidArray = yKidValue.text().split("");
		var yKid = Number(yKidArray[0]);
		
		var assignmentValue = $(".assignmentPrice"+roomNo);
		var assignmentArray = assignmentValue.text().split("???");
		var assignment = assignmentArray[0];
		
		//????????????
		kidP = Number(kidPrice.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		totalP = Number(totalPrice.replace(/,/g, ""));
		transP = Number(transPrice.replace(/,/g, ""));
		priceP = Number(price.replace(/,/g, ""));
		
		if((yAdult + yKid + yBaby) >= max) {
			alert("????????? ?????????????????????. ?????? ??????????????????.");
		}else if((yAdult + yKid + yBaby) < max) {
			yBaby += 1;
			yBabyValue.text(yBaby + "???");
			yPriceInfo(adult, kid, baby, standard, priceP, adultP, kidP, yAdultValue, yKidValue, assignmentValue, transP ,yBabyValue, roomNo, yAdult, yKid, yBaby);
		}
		$(".yBaby"+roomNo).attr("value", yBaby);
	});
	
	//?????? ???????????? ?????? ?????? ?????????
	$(".yBabyMinus").on("click", function() {
		var $this = $(this);
		var yno = $this.data("yno");
		var roomNo = $("#y-room"+yno).data("roomno");
		var standard = $("#y-room"+yno).data("standard");
		var max = $("#y-room"+yno).data("max");
		var adult = $("#y-room"+yno).data("adult");
		var kid = $("#y-room"+yno).data("kid");
		var baby = $("#y-room"+yno).data("baby");
		var price = $("#y-room"+yno).data("price");
		var min = $("#y-room"+yno).data("min");
		var adultPrice = $("#y-room"+yno).data("y_adult");
		var kidPrice = $("#y-room"+yno).data("y_kid");
		var transPrice = $("#y-room"+yno).data("trans");
		var totalPrice = $("#y-room"+yno).data("totalprice");
		
		var yAdultValue = $(".yAdultValue"+roomNo);
		var yAdultArray = yAdultValue.text().split("");
		var yAdult = Number(yAdultArray[0]);
		
		var yBabyValue = $(".yBabyValue"+roomNo);
		var yBabyArray = yBabyValue.text().split("");
		var yBaby = Number(yBabyArray[0]);
		
		var yKidValue = $(".yKidValue"+roomNo);
		var yKidArray = yKidValue.text().split("");
		var yKid = Number(yKidArray[0]);
		
		var assignmentValue = $(".assignmentPrice"+roomNo);
		var assignmentArray = assignmentValue.text().split("???");
		var assignment = assignmentArray[0];
		
		//????????????
		kidP = Number(kidPrice.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		totalP = Number(totalPrice.replace(/,/g, ""));
		transP = Number(transPrice.replace(/,/g, ""));
		priceP = Number(price.replace(/,/g, ""));
		
		if(yBaby > min) {
			yBaby -= 1;
			yBabyValue.text(yBaby + "???");
			yPriceInfo(adult, kid, baby, standard, priceP, adultP, kidP, yAdultValue, yKidValue, assignmentValue, transP ,yBabyValue, roomNo, yAdult, yKid, yBaby);
		}
		$(".yBaby"+roomNo).attr("value", yBaby);
	});
	
	
	//?????? ?????? ??? +-?????? ?????? ????????? ??????
	function yPriceInfo(adult, kid, baby, standard, priceP, adultP, kidP, yAdultValue, yKidValue, assignmentValue,
						transP ,yBabyValue, roomNo, yAdult, yKid, yBaby) {
		
		var min = transP;
		var newPrice = min;
		
		if(adult + kid < standard) {
			adult = standard;
			kid = 0;
		} else if (adult < standard) {
			adult = standard;
			kid = standard - adult;
		}
		if(standard >= yAdult + yKid) {
			newPrice = min;
			var newPriceNum = newPrice.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
			assignmentValue.text(newPriceNum + "???");
			$(".yPrice"+roomNo).attr("value", newPriceNum);
		} else { //standard < yAdult + yKid
			if(adult + kid >= yAdult + yKid) {
				if(adult >= yAdult) {
					newPrice = min;
				} else { //adult < yAdult
					newPrice = min + (yAdult-adult) * adultP + (yKid-kid) * kidP;
				}
				var newPriceNum1 = newPrice.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
				assignmentValue.text(newPriceNum1 + "???");
				$(".yPrice"+roomNo).attr("value", newPriceNum1);
			} else { //adult + kid < yAdult + yKid
				if(adult > yAdult) { //kid < yKid
					newPrice = min + ((yKid+yAdult)-(kid+adult)) * kidP;
				} else if(adult == yAdult) { //kid < yKid
					newPrice = min + (yKid-kid) * kidP;
				} else { //adult < yAdult
					newPrice = min + (yAdult-adult) * adultP + (yKid-kid) * kidP;
				}
			}
		}
		if(newPrice < min) {
			newPrice = min;
		}
		var newPriceNum2 = newPrice.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		assignmentValue.text(newPriceNum2 + "???");
		$(".yPrice"+roomNo).attr("value", newPriceNum2);
	}
		
	///////////////////////// ?????????????????? ???????????????  ///////////////////////////
	
	//?????? ??? ???????????? ?????? ?????? ?????????
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
		var roomPriceArray = roomPriceValue.text().split("???");
		var roomPrice = roomPriceArray[0];
		
		//????????????
		priceP = Number(price.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		kidP = Number(kidPrice.replace(/,/g, ""));

		
		if((adult + kid + baby) >= max) {
			alert("????????? ?????????????????????. ?????? ??????????????????.");
		}else if((adult + kid + baby) < max) {
			adult += 1;
			adultValue.text(adult + "???");
			priceInfo(adult, kid, baby, standard, priceP, adultP, kidP, adultValue, kidValue, roomPriceValue, babyValue, roomNo);
		}
		console.log($(".adult"+roomNo).attr("value", adult));
		
	});
	 
	//?????? ??? ???????????? ?????? ?????? ?????????
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
		var roomPriceArray = roomPriceValue.text().split("???");
		var roomPrice = roomPriceArray[0];
		
		//????????????
		console.log(price);
		priceP = Number(price.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		kidP = Number(kidPrice.replace(/,/g, ""));
		
		if(adult > min) {
			adult -= 1;
			adultValue.text(adult + "???");
			priceInfo(adult, kid, baby, standard, priceP, adultP, kidP, adultValue, kidValue, roomPriceValue, babyValue, roomNo);
		}
		$(".adult"+roomNo).attr("value", adult);
	});
	
	//?????? ??? ???????????? ?????? ?????? ?????????
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
		var roomPriceArray = roomPriceValue.text().split("???");
		var roomPrice = roomPriceArray[0];
		
		//????????????
		priceP = Number(price.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		kidP = Number(kidPrice.replace(/,/g, ""));
		
		if((adult + kid + baby) >= max) {
			alert("????????? ?????????????????????. ?????? ??????????????????.");
		}else if((adult + kid + baby) < max) {
			kid += 1;
			kidValue.text(kid + "???");
			priceInfo(adult, kid, baby, standard, priceP, adultP, kidP, adultValue, kidValue, roomPriceValue, babyValue, roomNo);
		}
		$(".kid"+roomNo).attr("value", kid);
	});
	
	//?????? ??? ???????????? ?????? ?????? ?????????
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
		var roomPriceArray = roomPriceValue.text().split("???");
		var roomPrice = roomPriceArray[0];
		
		//????????????
		priceP = Number(price.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		kidP = Number(kidPrice.replace(/,/g, ""));
		
		if(kid > 0) {
			kid -= 1;
			kidValue.text(kid + "???");
			priceInfo(adult, kid, baby, standard, priceP, adultP, kidP, adultValue, kidValue, roomPriceValue, babyValue, roomNo);
		}
		
		$(".kid"+roomNo).attr("value", kid);
	});
	
	//?????? ??? ???????????? ?????? ?????? ?????????
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
		var roomPriceArray = roomPriceValue.text().split("???");
		var roomPrice = roomPriceArray[0];
		
		//????????????
		priceP = Number(price.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		kidP = Number(kidPrice.replace(/,/g, ""));
		
		if((adult + kid + baby) >= max) {
			alert("????????? ?????????????????????. ?????? ??????????????????.");
		}else if((adult + kid + baby) < max) {
			baby += 1;
			babyValue.text(baby + "???");
			priceInfo(adult, kid, baby, standard, priceP, adultP, kidP, adultValue, kidValue, roomPriceValue, babyValue, roomNo);
		}
		$(".baby"+roomNo).attr("value", baby);
	});
	
	//?????? ??? ???????????? ?????? ?????? ?????????
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
		var roomPriceArray = roomPriceValue.text().split("???");
		var roomPrice = roomPriceArray[0];
		
		//????????????
		priceP = Number(price.replace(/,/g, ""));
		adultP = Number(adultPrice.replace(/,/g, ""));
		kidP = Number(kidPrice.replace(/,/g, ""));
		
		if(baby > 0) {
			baby -= 1;
			babyValue.text(baby + "???");
			priceInfo(adult, kid, baby, standard, priceP, adultP, kidP, adultValue, kidValue, roomPriceValue, babyValue, roomNo);		
		}
		$(".baby"+roomNo).attr("value", baby);
	});
	
	
	//?????? ???????????? ????????? ??????
	function priceInfo(adult, kid, baby, standard, priceP, adultP, kidP, adultValue, kidValue, roomPriceValue, babyValue, roomNo) {
		
		if( (adult+kid+baby) <= standard ) {
			const pricePNum = priceP.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
			roomPriceValue.text(pricePNum + "???");
			$(".price"+roomNo).attr("value", pricePNum);
		}else if(adult >= standard ) {
			var realPrice = (adult - standard) * adultP + (kid * kidP) + priceP;
			const realPriceNum = realPrice.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
			roomPriceValue.text(realPriceNum + "???");
			/* $(".price"+roomNo).attr("value", realPrice); */
			$(".price"+roomNo).attr("value", realPriceNum);
		}else if(adult < standard) {
			if( (adult + kid) - standard < 0 ) {
				adult = 0;
				kid = 0;
				standard = 0;
				const pricePNum2 = priceP.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
				roomPriceValue.text(pricePNum2 + "???");
				$(".price"+roomNo).attr("value", pricePNum2);
			}
			else {
				priceP = ( ((adult + kid) - standard ) * kidP) + priceP;
				const pricePNum3 = priceP.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
				roomPriceValue.text(pricePNum3 + "???");
				$(".price"+roomNo).attr("value", pricePNum3);
			}
		}
	}
	
	// ajax ???????????? ????????????
	var reBtn = true;
	var iBtn = true;
	var rBtn = true;
	
	///////////////////////// ???????????? ?????????(ajax)  ///////////////////////////
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
		
	///////////////////////// ???????????? ?????????(ajax)   ///////////////////////////	
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
				/*????????? ??????????????? ?????? ??????*/
				
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
	
	//???????????? ????????? ?????? ??? html ???????????? ?????? 
	function var1Render(iMap) {
		var str = '';
			str += '<div id="aroundInfo">';
			str += '	<div class="info">????????????</div>';	
			str += '	<span>'+iMap.AREA_INFO1+'</span><br>';
			str += '	<span>'+iMap.AREA_INFO2+'</span><br>';
			str += '	<span>'+iMap.AREA_INFO3+'</span><br>';
			str += '</div>';
			str += '<div id="notice">';
			str += '	<div class="info">????????????</div>';	
			str += '	<span>???????????? / ???????????? ?????? / ??? ?????? ????????? ??????</span>'; 
			str += '	</div>';
			str += '<div id="basic">';
			str += '	<div class="info">????????????</div>';	
			str += '	<span>?????? : 15:00 | ?????? : 11:00</span>';
			str += '</div>';
			str += '<div id="guestroom">';
			str += '	<div class="info">????????????</div>';
			str += '	<span>????????? : ??????????????? ????????????, ????????????, ??????????????? 5?????????, ?????? ????????? (?????? ?????? ????????? ??????), ???????????? (????????????)</span>';
			str += '</div>';
			str += '<div id="addPeople">';
			str += '	<div class="info">?????? ????????????</div>';	
			str += '	<span>?????? 1??????'+iMap.ADD_ADULT_PRICE+'???</span><br>'; 
			str += '	<span>?????? 1??????'+iMap.ADD_KID_PRICE+'???</span><br>'; 
			str += '	<span>????????? 1?????? '+iMap.ADD_BABY_PRICE+'???</span><br>'; 
			str += '</div>';
			str += '<div id="dog">';
			str += '	<div class="info">?????? ????????????</div>';	
			str += '	<span>??????????????? ?????? ??? ???????????? ??? ????????????</span>';
			str += '</div>';
			str += '<div id="service">';
			str += '	<div class="info">?????? ?????????</div>';
			str += '	<span>?????? ???????????? ??? ?????? ?????? ????????????</span>';	
			str += '</div>';
			str += '<div id="bbq">';
			str += '	<div class="info">?????????</div>';	
			str += '	<span>??? + ?????? ?????? : 2??? ?????? 20,000???</span>';	
			str += '</div>';
			str += '<div id="cancle">';
			str += '	<div class="info">?????? ??? ????????????</div>';
			if(iMap.REFUND_NO == 10) {
				str += '		<table id = "pay_refund" border = "1">';
				str += '			<thead>';
				str += '				<tr>';
				str += '					<th class="text-center">????????????</th>';
				str += '					<th class="text-center">10??? ???</th>';
				str += '				</tr>';
				str += '			</thead>';
				str += '			<tbody class="text-center">';
				str += '				<tr>';
				str += '					<td id = "rateguide" rowspan = "11">?????? ?????? ??? <br> ???????????? ??????</td>';
				str += '					<td>10??? ??? : 100%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>9??? ??? : 90%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>8??? ??? : 80%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>7??? ??? : 70%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>6??? ??? : 60%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>5??? ??? : 50%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>4??? ??? : 40%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>3??? ??? : 30%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>2??? ??? : 20%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>1??? ??? : 10%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>????????? ??????, no-show ?????? ??????</td>';
				str += '				</tr>';
				str += '			</tbody>';
				str += '		</table>';
			}else if(iMap.REFUND_NO == 7) {
				str += '		<table id = "pay_refund" border = "1">';
				str += '			<thead>';
				str += '				<tr>';
				str += '					<th class="text-center">????????????</th>';
				str += '					<th class="text-center">7??? ???</th>';
				str += '				</tr>';
				str += '			</thead>';
				str += '			<tbody class="text-center">';
				str += '				<tr>';
				str += '					<td id = "rateguide" rowspan = "8">?????? ?????? ??? <br> ???????????? ??????</td>';
				str += '					<td>7??? ??? : 100%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>6??? ??? : 90%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>5??? ??? : 85%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>4??? ??? : 80%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>3??? ??? : 70%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>2??? ??? : 50%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>1??? ??? : 30%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>????????? ??????, no-show ?????? ??????</td>';
				str += '				</tr>';
				str += '			</tbody>';
				str += '		</table>';
			}else if(iMap.REFUND_NO == 6) {
				str += '		<table id = "pay_refund" border = "1">';
				str += '			<thead>';
				str += '				<tr>';
				str += '					<th class="text-center">????????????</th>';
				str += '					<th class="text-center">6??? ???</th>';
				str += '				</tr>';
				str += '			</thead>';
				str += '			<tbody class="text-center">';
				str += '				<tr>';
				str += '					<td id = "rateguide" rowspan = "7">?????? ?????? ??? <br> ???????????? ??????</td>';
				str += '					<td>6??? ??? : 100%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>5??? ??? : 90%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>4??? ??? : 80%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>3??? ??? : 70%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>2??? ??? : 50%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>1??? ??? : 30%</td>';
				str += '				</tr>';
				str += '				<tr>';
				str += '					<td>????????? ??????, no-show ?????? ??????</td>';
				str += '				</tr>';
				str += '			</tbody>';
				str += '		</table>';
			}
			str += '</div>';
			str += '<div id="checkList">';
			str += '	<div class="info">???????????? ??? ??????</div>';
			str += '	<span>'+iMap.ETC+'</span>';
			str += '</div>';
			
			$("#pensionInfo").append(str);
	};
	
	//?????? ?????? ??? ?????? ??? ?????? ?????????(ajax)
	//?????? ??? ?????????????????? ???????????? ????????? ??????
	$("#pensionReview").on("click", function(event) {
		var pensionNo = $("#pensionNo").val();
		iBtn = true;
		
		var offset = $("#iconBox").offset();
		
		console.log(offset);
		 $('body,html').animate({scrollTop:offset.top},500); ??
		
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
				
				
				
				/*????????? ??????????????? ?????? ??????*/
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
	
	///////////////////////// ?????? ?????????(ajax)  ///////////////////////////
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
				/*????????? ??????????????? ?????? ??????*/
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
	
	//?????? ????????? ?????? ??? html ???????????? ??????
	function var2Render(rMap) {
		var str = '';
			str += '<span id="ment">????????????</span>';
			if(rMap.totalReview.AVGSTARS == 5.00) {
				str += '<div id="star">';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>';
				str += '</div>';
			}else if(rMap.totalReview.AVGSTARS >= 4.10 && rMap.totalReview.AVGSTARS <= 4.99) {
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
			}else if(rMap.totalReview.AVGSTARS >= 3.10 && rMap.totalReview.AVGSTARS <= 3.99) {
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
			}else if(rMap.totalReview.AVGSTARS >= 2.10 && rMap.totalReview.AVGSTARS <= 2.99) {
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
			}else if(rMap.totalReview.AVGSTARS >= 1.10 && rMap.totalReview.AVGSTARS <= 1.99) {
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
			str += '	<span id="allReview">????????????' + rMap.totalReview.RCOUNT + '</span>';
			str += '	<span id="pensionReview">????????? ??????' + rMap.hostReview.REPCOUNT + '</span>';
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
				str += '				<span id="roomName">' + rMap.allReview[i].ROOM_NAME + ' ??????' + '</span>';
				str += '				<span> | ' + rMap.allReview[i].NAME + '</span>';
				str += '			</div>';
				str += '			<span id="reviewContent">' + rMap.allReview[i].CONTENT + '</span>';
				if(rMap.allReview[i].IMAGE1 != null && rMap.allReview[i].IMAGE2 != null ) {
					str += '			<div id="roomImg">';
					str += '				<ul>';
					str += '					<li><img src="${pageContext.request.contextPath}/upload/' + rMap.allReview[i].IMAGE1 + '"></li>';
					str += '					<li><img src="${pageContext.request.contextPath}/upload/' + rMap.allReview[i].IMAGE2 + '"></li>';
					str += '				</ul>';
					str += '			</div>';
				}else if(rMap.allReview[i].IMAGE1 != null && rMap.allReview[i].IMAGE2 == null) {
					str += '			<div id="roomImg">';
					str += '				<ul>';
					str += '					<li><img src="${pageContext.request.contextPath}/upload/' + rMap.allReview[i].IMAGE1 + '"></li>';
					str += '				</ul>';
					str += '			</div>';
				}
				str += '			<span id="guestRegDate">' + rMap.allReview[i].REG_DATE + '</span>';
				if(rMap.allReview[i].RCONTENT != 'empty' && rMap.allReview[i].RREG_DATE != 'empty') {
					str += '			<div id="ceoContainer">';
					str += '				<div class="box">';
					str += '					<img src="${pageContext.request.contextPath}/assets/image/detail/guest.png">';
					str += '				</div>';
					str += '				<div id="ceoInfo">';
					str += '					<span id="ceoReview">????????? ??????</span>';
					str += '					<span id="ceoContent">' + rMap.allReview[i].RCONTENT + '</span>';
					str += '					<span id="ceoRegDate">' + rMap.allReview[i].RREG_DATE + '</span>';
					str += '				</div>';
					str += '			</div>';
				}
				str += '		</div>';
				str += '	</div>';
			}
			str += '</div>';
			$("#review").append(str);
	}	
	
</script>

</html>