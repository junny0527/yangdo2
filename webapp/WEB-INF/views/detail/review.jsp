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
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/includes/userHeaderFooter.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/detail/review.css">
    
    
</head>
<body>

    <div id="wrap">
        <c:import url="/WEB-INF/views/includes/userHeader.jsp"></c:import>
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
	            <a href="${pageContext.request.contextPath}/reservation"><button id="var">객실안내</button></a>
	            <a href="${pageContext.request.contextPath}/infomation"><button id="var1">숙소정보</button></a>
	            <a href="${pageContext.request.contextPath}/review"><button id="var2">리뷰</button></a>
         </div>
        </div>
        
        <div id="review">
            <span id="ment">최고예요</span>
            <div id="star">
                <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                <span id="starScore">5.0</span>
            </div>
            <div id="reviewCount">
                <span id="allReview">전체리뷰 2</span>
                <span id="pensionReview">제휴점 답변 2</span>
            </div>
        </div>
        <div id="reviewBox">
            <div id="guestContainer">
                <div class="box">
                    <img src="${pageContext.request.contextPath}/assets/image/detail/guest.png">
                </div>
                <div id="guestBox">
                    <span id="guestReview">여기만한 곳은 어디에도 없을 거예요.</span>
                    <div id="reviewStar">
                        <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                        <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                        <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                        <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                        <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                        <span id="starScore">5.0</span>
                    </div>
                    <div id="guestInfo">
                        <span id="roomName">풍뎅이 객실 이용</span>
                        <span> | 지웅잉</span>
                    </div>
                    <span id="reviewContent">진심으로 가는길에 카페를 들렀다가 숙소로 갔는데 진짜 카페가지말고 바로 숙소로 갈껄 하는 생각이 들만큼 너무너무 좋은 숙소였습니다 ㅎㅎ 불멍도 야무지게 하고 맛있는 음식도 잘 먹고 갑니다 ㅎㅎ 사장님도 너무 좋고 시설도 너무 좋아서 완전 힐링 하고 가네요 ㅎㅎ 다음에는 2박을 하고싶을정도로 너무 좋은 하루였습니다!!!</span>                
                    <div id="roomImg">
                        <ul>
                            <li><img src="${pageContext.request.contextPath}/assets/image/detail/img.PNG"></li>
                            <li><img src="${pageContext.request.contextPath}/assets/image/detail/img2.PNG"></li>
                        </ul>
                    </div>
                    <span id="guestRegDate">1개월 전</span>
                    <div id="ceoContainer">
                        <div class="box">
                        <img src="${pageContext.request.contextPath}/assets/image/detail/guest.png">
                        </div>
                        <div id="ceoInfo">
                            <span id="ceoReview">제휴점 답변</span>
                            <span id="ceoContent">지웅잉님 안녕하세요. 소중한 후기 감사드립니다.지웅잉님 안녕하세요. 소중한 후기 감사드립니다.지웅잉님 안녕하세요. 소중한 후기 감사드립니다.지웅잉님 안녕하세요. 소중한 후기 감사드립니다.지웅잉님 안녕하세요. 소중한 후기 감사드립니다.지웅잉님 안녕하세요. 소중한 후기 감사드립니다.지웅잉님 안녕하세요. 소중한 후기 감사드립니다.지웅잉님 안녕하세요. 소중한 후기 감사드립니다.지웅잉님 안녕하세요. 소중한 후기 감사드립니다.</span>
                            <span id="ceoRegDate">1개월 전</span>
                        </div>
                    </div>    
                </div>
            </div>
        </div>
        
        <div id="reviewBox">
            <div id="guestContainer">
                <div class="box">
                    <img src="${pageContext.request.contextPath}/assets/image/detail/guest.png">
                </div>
                <div id="guestBox">
                    <span id="guestReview">여기만한 곳은 어디에도 없을 거예요.</span>
                    <div id="reviewStar">
                        <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                        <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                        <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                        <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                        <span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/star.png"></span>
                        <span id="starScore">5.0</span>
                    </div>
                    <div id="guestInfo">
                        <span id="roomName">풍뎅이 객실 이용</span>
                        <span> | 지웅잉</span>
                    </div>
                    <span id="reviewContent">진심으로 가는길에 카페를 들렀다가 숙소로 갔는데 진짜 카페가지말고 바로 숙소로 갈껄 하는 생각이 들만큼 너무너무 좋은 숙소였습니다 ㅎㅎ 불멍도 야무지게 하고 맛있는 음식도 잘 먹고 갑니다 ㅎㅎ 사장님도 너무 좋고 시설도 너무 좋아서 완전 힐링 하고 가네요 ㅎㅎ 다음에는 2박을 하고싶을정도로 너무 좋은 하루였습니다!!!</span>                
                    <div id="roomImg">
                        <ul>
                            <li><img src="${pageContext.request.contextPath}/assets/image/detail/img.PNG"></li>
                            <li><img src="${pageContext.request.contextPath}/assets/image/detail/img2.PNG"></li>
                        </ul>
                    </div>
                    <span id="guestRegDate">1개월 전</span>
                    <div id="ceoContainer">
                        <div class="box">
                        <img src="${pageContext.request.contextPath}/assets/image/detail/guest.png">
                        </div>
                        <div id="ceoInfo">
                            <span id="ceoReview">제휴점 답변</span>
                            <span id="ceoContent">지웅잉님 안녕하세요. 소중한 후기 감사드립니다.지웅잉님 안녕하세요. 소중한 후기 감사드립니다.지웅잉님 안녕하세요. 소중한 후기 감사드립니다.지웅잉님 안녕하세요. 소중한 후기 감사드립니다.지웅잉님 안녕하세요. 소중한 후기 감사드립니다.지웅잉님 안녕하세요. 소중한 후기 감사드립니다.지웅잉님 안녕하세요. 소중한 후기 감사드립니다.지웅잉님 안녕하세요. 소중한 후기 감사드립니다.지웅잉님 안녕하세요. 소중한 후기 감사드립니다.</span>
                            <span id="ceoRegDate">1개월 전</span>
                        </div>
                    </div>    
                </div>
            </div>
        </div>
    

        <!-- //footer -->
        <c:import url="/WEB-INF/views/includes/userFooter.jsp"></c:import>
    </div>
</body>
</html>