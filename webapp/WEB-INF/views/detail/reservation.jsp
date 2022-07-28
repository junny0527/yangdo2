<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c7c270257fa165edfa51150dee34ae7"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/detail/reservation.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/detail/bootstrap/css/bootstrap.css">
    
    
</head>
<body>

    <div id="wrap">
        <div id="header" class="clearfix">
            <div id="section">
            <h1><a>양도어때</a></h1>
            <ul class="clearfix"> 
               <li><a href="">검색</a></li>
               <li><a href="">내주변</a></li>
               <li><a href="">예약내역</a></li>
               <li><a href="">더보기</a></li>
               <li><a href="">회원로고</a></li>
            </ul>
        </div>
        </div>
        <!-- //header -->
        <div id="main">
            <div id="content" class="clearfix">
                <span id="area">양평</span>
                <span id="pensionName">우노하우스 풀빌라</span>
                <span id="address">경기 양평군 서종면 명달리 443-13</span>
                <img src="${pageContext.request.contextPath}/assets/image/detail/location.png">
                <button id="map">숙소 위치확인</button>
                <div id="star">
                    <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                    <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                    <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                    <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                    <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                    <span id="starScore">5.0</span>
                    <button id="pensionReview">(60) ></button>
                </div>
            </div>
            <div id="gallery">
                <img id="mainImg" src="${pageContext.request.contextPath}/assets/image/detail/jjanga.png">
                <div id="imgCount">1 / 20 | 전체사진</div>
                <div id="subImg">
                    <button id="left"><img src="${pageContext.request.contextPath}/assets/image/detail/left.png"></button>
                    <ul>
                        <li><img src="${pageContext.request.contextPath}/assets/image/detail/pension.PNG"></li>
                        <li><img src="${pageContext.request.contextPath}/assets/image/detail/pension.PNG"></li>
                        <li><img src="${pageContext.request.contextPath}/assets/image/detail/back.jfif"></li>
                        <li><img src="${pageContext.request.contextPath}/assets/image/detail/pension.PNG"></li>
                        <li><img src="${pageContext.request.contextPath}/assets/image/detail/jjanga.png"></li>
                        <li><img src="${pageContext.request.contextPath}/assets/image/detail/pension.PNG"></li>
                    </ul>
                    <button id="right"><img src="${pageContext.request.contextPath}/assets/image/detail/right.png"></button>
                </div>
            </div>

        </div>
        
        <div id="iconBox">
            <h4>편의시설 및 서비스</h4>
            <div id="container">
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
                <div>
                    <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span>
                    <span class="iconName">와이파이</span>
                </div>
            </div>
            <div id="menu">
                <button id="var">객실안내</button>
                <button id="var1">숙소정보</button>
                <button id="var2">리뷰</button>
            </div>
        </div>
        <div id="roomList">
            <div id="calendar">
                <img src="${pageContext.request.contextPath}/assets/image/detail/calendar.png">
                <button>
                    <span id="date">7.26 ~ 7.27</span>
                    <img src="${pageContext.request.contextPath}/assets/image/detail/arrow-down.png">
                </button>
            </div>

            <div class="room">
                <img class="roomImg" src="${pageContext.request.contextPath}/assets/image/detail/pension.PNG">
                <button class="roomImgList">객실 사진보기</button>
                <div class="roomInfo">
                    <span class="roomName">찌찌웅</span>
                    <div class="infoBtn">
                        <span>객실 이용안내</span>
                        <button>보기</button>
                    </div>
                    <div class="settingPeople">기준 2인 / 최대 4인</div>
                    <div class="defaultForm">
                        <div>
                            <span class="people">성인</span>
                            <div>
                                <button class="minus"><img src="${pageContext.request.contextPath}/assets/image/detail/minus.png"></button>
                                <span>2명</span>
                                <button class="plus"><img src="${pageContext.request.contextPath}/assets/image/detail/plus.png"></button>
                            </div>
                        </div>
                        <div>
                            <span class="people">아동</span>
                            <div>
                                <button class="minus"><img src="${pageContext.request.contextPath}/assets/image/detail/minus.png"></button>
                                <span>0명</span>
                                <button class="plus"><img src="${pageContext.request.contextPath}/assets/image/detail/plus.png"></button>
                            </div>
                        </div>
                        <div>
                            <span class="people">유아</span>
                            <div>
                                <button class="minus"><img src="${pageContext.request.contextPath}/assets/image/detail/minus.png"></button>
                                <span>0명</span>
                                <button class="plus"><img src="${pageContext.request.contextPath}/assets/image/detail/plus.png"></button>
                            </div>
                        </div>
                        <div class="price">
                            <span class="roomPrice">220,000원</span>
                            <span class="assignmentPrice">200,000원</span>
                        </div>
                    </div>
                    <button>양도받으러가기</button>
                </div>
            </div>
            
            <div class="room">
                <img class="roomImg" src="${pageContext.request.contextPath}/assets/image/detail/pension.PNG">
                <button class="roomImgList">객실 사진보기</button>
                <div class="roomInfo">
                    <span class="roomName">범주니</span>
                    <div class="infoBtn">
                        <span>객실 이용안내</span>
                        <button>보기</button>
                    </div>
                    <div class="settingPeople">기준 2인 / 최대 4인</div>
                    <div class="defaultForm">
                        <div>
                            <span class="people">성인</span>
                            <div>
                                <button class="minus"><img src="${pageContext.request.contextPath}/assets/image/detail/minus.png"></button>
                                <span>4명</span>
                                <button class="plus"><img src="${pageContext.request.contextPath}/assets/image/detail/plus.png"></button>
                            </div>
                        </div>
                        <div>
                            <span class="people">아동</span>
                            <div>
                                <button class="minus"><img src="${pageContext.request.contextPath}/assets/image/detail/minus.png"></button>
                                <span>0명</span>
                                <button class="plus"><img src="${pageContext.request.contextPath}/assets/image/detail/plus.png"></button>
                            </div>
                        </div>
                        <div>
                            <span class="people">유아</span>
                            <div>
                                <button class="minus"><img src="${pageContext.request.contextPath}/assets/image/detail/minus.png"></button>
                                <span>0명</span>
                                <button class="plus"><img src="${pageContext.request.contextPath}/assets/image/detail/plus.png"></button>
                            </div>
                        </div>
                        <div class="price">
                            <span class="roomPrice">220,000원</span>
                            <span class="assignmentPrice">200,000원</span>
                        </div>
                    </div>
                        <button>양도받으러가기</button>
                </div>
            </div>
            <div class="room">
                <img class="roomImg" src="${pageContext.request.contextPath}/assets/image/detail/pension.PNG">
                <button class="roomImgList">객실 사진보기</button>
                <div class="roomInfo">
                    <span class="roomName">민조장</span>
                    <div class="infoBtn">
                        <span>객실 이용안내</span>
                        <button>보기</button>
                    </div>
                    <div class="settingPeople">기준 2인 / 최대 4인</div>
                    <div class="defaultForm">
                        <div>
                            <span class="people">성인</span>
                            <div>
                                <button class="minus"><img src="${pageContext.request.contextPath}/assets/image/detail/minus.png"></button>
                                <span>2명</span>
                                <button class="plus"><img src="${pageContext.request.contextPath}/assets/image/detail/plus.png"></button>
                            </div>
                        </div>
                        <div>
                            <span class="people">아동</span>
                            <div>
                                <button class="minus"><img src="${pageContext.request.contextPath}/assets/image/detail/minus.png"></button>
                                <span>1명</span>
                                <button class="plus"><img src="${pageContext.request.contextPath}/assets/image/detail/plus.png"></button>
                            </div>
                        </div>
                        <div>
                            <span class="people">유아</span>
                            <div>
                                <button class="minus"><img src="${pageContext.request.contextPath}/assets/image/detail/minus.png"></button>
                                <span>1명</span>
                                <button class="plus"><img src="${pageContext.request.contextPath}/assets/image/detail/plus.png"></button>
                            </div>
                        </div>
                        <div class="price">
                            <span class="roomPrice">220,000원</span>
                            <span class="assignmentPrice">200,000원</span>
                        </div>
                    </div>
                        <button>양도받으러가기</button>
                </div>
            </div>
        </div>

        <!-- //footer -->
        <footer>
            <div class="align">
            <ul class="link">
                <li>
                    <a href="">회사소개</a>
                    <span>|</span>
                </li>
                <li>
                    <a href="">이용약관</a>
                    <span>|</span>
                </li>
                <li>
                    <a href="">개인정보처리방침</a>
                    <span>|</span>
                </li>
                <li>
                    <a href="">소비자 분쟁해결 기준</a>
                    <span>|</span>
                </li>
                <li>
                    <a href="">사업자 정보확인</a>
                    <span>|</span>
                </li>
                <li>
                    <a href="">양도어때 마케팅센터</a>
                    <span>|</span>
                </li>
                <li>
                    <a href="">액티비티 호스트센터</a>
                    <span>|</span>
                </li>
                <li>
                    <a href="">펜션 양도어때</a>
                    <span>|</span>
                </li>
                <li>
                    <a href="">콘텐츠산업진흥법에의한 표시</a>
                </li>
            </ul>
            
            <p>
                <b>양도어때 고객센터 1670-4215</b>
                <span>오전 9시 - 새벽 3시</span>
            </p>
            
            <address>
                <span>(주) 양도어때컴퍼니</span>
                주소 : 서울특별시 봉천동 봉천사로 611, 648타워 14층 | 대표이사 : 최종빈 | 사업자등록번호: 741-64-88541
                <br>
                통신판매번호 : 2011-서울봉천-75441 | 관광사업자 등록번호: 제2011-74호 | 전화번호 : 1670-4215 | 전자우편주소 : yangdo@goodchoice.kr
                <br>
                Copyright GC COMPANY Corp. All rights reserved.
            </address> 
            </div>
        </footer> 
    </div>
    
</body>



<div class="modal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
      </div>
      <div class="modal-body" id="map1">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        
      </div>
    </div>
  </div>
</div>





	
	<script type="text/javascript">
	
	
		$("#map").on("click", function(){
			$(".modal").show();
			
		});
		
		$(".btn-secondary").on("click", function() {
			$(".modal").hide();
		});
		
		//지도 기본 값 숨기기
		
		
		var container = document.getElementById('map1'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};

		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
		
		
	</script>


</html>