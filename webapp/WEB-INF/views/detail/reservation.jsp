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
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c7c270257fa165edfa51150dee34ae7"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c7c270257fa165edfa51150dee34ae7&libraries=LIBRARY"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/detail/reservation.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/detail/bootstrap/css/bootstrap.css">


</head>
<body>

   <div id="wrap">
      <c:import url="/WEB-INF/views/includes/header(user).jsp"></c:import>
      <!-- //header -->
      <div id="main">
         <div id="content" class="clearfix">
            <span id="area">양평</span> <span id="pensionName">우노하우스 풀빌라</span> <span id="address">경기 양평군 서종면 명달리 443-13</span> <img src="${pageContext.request.contextPath}/assets/image/detail/location.png">
            <button id="map">숙소 위치확인</button>
            <div id="star">
               <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span> <span class="starCount"><img
                  src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span> <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span> <span
                  class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span> <span class="starCount"><img
                  src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span> <span id="starScore">5.0</span>
               <button id="pensionReview">(60) ></button>
            </div>
         </div>
         <div id="gallery">
            <img id="mainImg" src="${pageContext.request.contextPath}/assets/image/detail/jjanga.png">
            <div id="imgCount">1 / 20 | 전체사진</div>
            <div id="subImg">
               <button id="left">
                  <img src="${pageContext.request.contextPath}/assets/image/detail/left.png">
               </button>
               <ul>
                  <li><img src="${pageContext.request.contextPath}/assets/image/detail/pension.PNG"></li>
                  <li><img src="${pageContext.request.contextPath}/assets/image/detail/pension.PNG"></li>
                  <li><img src="${pageContext.request.contextPath}/assets/image/detail/back.jfif"></li>
                  <li><img src="${pageContext.request.contextPath}/assets/image/detail/pension.PNG"></li>
                  <li><img src="${pageContext.request.contextPath}/assets/image/detail/jjanga.png"></li>
                  <li><img src="${pageContext.request.contextPath}/assets/image/detail/pension.PNG"></li>
               </ul>
               <button id="right">
                  <img src="${pageContext.request.contextPath}/assets/image/detail/right.png">
               </button>
            </div>
         </div>

      </div>

      <div id="iconBox">
         <h4>편의시설 및 서비스</h4>
         <div id="container">
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
            </div>
            <div>
               <span class="icon"><img src="${pageContext.request.contextPath}/assets/image/detail/wifi.png"></span> <span class="iconName">와이파이</span>
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
               <span id="date">7.26 ~ 7.27</span> <img src="${pageContext.request.contextPath}/assets/image/detail/arrow-down.png">
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
                        <button class="minus">
                           <img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
                        </button>
                        <span>2명</span>
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
                        <span>0명</span>
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
                        <span>0명</span>
                        <button class="plus">
                           <img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
                        </button>
                     </div>
                  </div>
                  <div class="price">
                     <span class="roomPrice">220,000원</span> <span class="assignmentPrice">200,000원</span>
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
                        <button class="minus">
                           <img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
                        </button>
                        <span>4명</span>
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
                        <span>0명</span>
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
                        <span>0명</span>
                        <button class="plus">
                           <img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
                        </button>
                     </div>
                  </div>
                  <div class="price">
                     <span class="roomPrice">220,000원</span> <span class="assignmentPrice">200,000원</span>
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
                        <button class="minus">
                           <img src="${pageContext.request.contextPath}/assets/image/detail/minus.png">
                        </button>
                        <span>2명</span>
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
                        <span>1명</span>
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
                        <span>1명</span>
                        <button class="plus">
                           <img src="${pageContext.request.contextPath}/assets/image/detail/plus.png">
                        </button>
                     </div>
                  </div>
                  <div class="price">
                     <span class="roomPrice">220,000원</span> <span class="assignmentPrice">200,000원</span>
                  </div>
               </div>
               <button>양도받으러가기</button>
            </div>
         </div>
      </div>

      <!-- //footer -->
      <c:import url="/WEB-INF/views/includes/footer(user).jsp"></c:import>
   </div>

</body>



<div id="local" class="modal" tabindex="-1">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header"></div>
         <div class="modal-body">
            <div id="map1" style="width: 100%; height: 100%;"></div>
         </div>
         <div class="modal-footer">
         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
         </div>
      </div>
   </div>
</div>






<script type="text/javascript">
		
	var container = document.getElementById('map1'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
	   center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	   level: 3 //지도의 레벨(확대, 축소 정도)
	};
	var map = new kakao.maps.Map(container, options);
	
	   $("#map").on("click", function() {
	      
	
	      $("#local").modal("show");
	      map.relayout();
	   });
	
	   $(".btn-secondary").on("click", function() {
	      $(".modal").hide();
	   });
   

   
   
   
</script>



</html>