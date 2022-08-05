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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/detail/infomation.css">
    
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
        <div id="pensionInfo">
            <div id="aroundInfo">
                <div>주변정보</div>
                <ul>
                    <li>명달계곡 차량 2분</li>
                    <li>소나기마을 차량 23분</li>
                    <li>에델바이스 스위스테마파크 차량 27분</li>
                </ul>
            </div>
            <div id="notice">
                <div>공지사항</div>
                <ul>
                    <li>방역실시 / 손소독제 구비 / 전 직원 마스크 착용</li>
                </ul>
            </div>
            <div id="basic">
                <div>기본정보</div>
                <ul>
                    <li>입실 : 15:00 | 퇴실 : 11:00</li>
                    <li>22시 이후 일실 시 사전문의(필수)</li>
                    <li>무료 WI-FI</li>
                    <li>전 객실 금연</li>
                    <li>주차 가능(1객실 최대 2주차)</li>
                </ul>
            </div>
            <div id="guestroom">
                <div>객실정보</div>
                <ul>
                    <li>앞마당 : 프라이빗한 모닥데크, 캠핑의자, 비바코로마 5인텐트, 실외 슬리퍼 (현관 입구 선반에 비치), 손소독제 (현관입구)</li>
                    <li>주방 : 가스레인지, 냉장고, 세탁기, 전자레인지, 커피포트, 각종 식기도구 (+와인잔)오프너, 각종조미료 </li>
                    <li>(소금, 설탕, 고추가루, 식초, 간장, 올리브유) 일회용 수세미 & 일회용 행주, 위생봉투, 은박호일</li>
                    <li>거실 : 교자상, 다례 (다도) 세트, 옛날 고급오디오 세트, 프로젝터 대형스크린</li>
                    <li>객실 : TV, 핸드드라이어 / 고데기, 충전기, 참빗, 롤빗, 머리끈, 로션, 핸드로션, 경대, 2인 기본 침구류</li>
                    <li>화장실 및 샤워실 : 수건 (고온 살균건조 / 1인당 1박 2매 제공), 폼클렌징, 샴푸, 트리트먼트, 바디워시, 핸드워시, 비누, 거품치약, 비데, 일회용 칫솔</li>
                </ul>
            </div>
            <div id="addPeople">
                <div>인원 추가정보</div>
                <ul>
                    <li>1인 30,000원 (영유아 포함)</li>
                    <li>영유아 인원수 포함 / 최대인원 초과불가</li>
                    <li>현장결제</li>
                </ul>
            </div>
            <div id="dog">
                <div>애견 입실안내</div>
                <ul>
                    <li>애견동반을 원할 시 사전문의 및 상담필수</li>
                    <li>추가요금 펜션 문의</li>
                    <li>입실 가능객실 : 펜션객실</li>
                    <li>현장결제</li>
                </ul>
            </div>
            <div id="service">
                <div>펜션 서비스</div>
                <ul>
                    <li>시설 이용문의 및 비용 별도 펜션문의</li>
                    <li>족구장</li>
                </ul>
            </div>
            <div id="bbq">
                <div>바비큐</div>
                <ul>
                    <li>숯 + 그릴 대여 : 2인 기준 20,000원</li>
                    <li>바비큐장 이용료 : 15,000원</li>
                    <li>개별 바비큐 가능</li>
                    <li>현장결제</li>
                </ul>
            </div>
            <div id="cancle">
                <div>취소 및 환불규정</div>
                <ul>
                    <li>숙박일 기준 7일 전 : 100% 환불</li>
                    <li>숙박일 기준 6일 전 : 90% 환불</li>
                    <li>숙박일 기준 5일 전 : 80% 환불</li>
                    <li>숙박일 기준 4일 전 : 70% 환불</li>
                    <li>숙박일 기준 3일 전 : 60% 환불</li>
                    <li>숙박일 기준 2일 전 : 50% 환불</li>
                    <li>숙박일 기준 1일 전 : 30% 환불</li>
                    <li>숙박일 기준 당일 및 No-Show : 환불불가</li>
                    <li>취소, 환불 및 수수료가 발생할 수 있습니다.</li>
                </ul>
            </div>
            <div id="checkList">
                <div>확인사항 및 기타</div>
                <ul>
                    <li>매일 전객실 연무기 소독과 침구류 교체를 원칙으로 합니다</li>
                    <li>식수는 지하수입니다 필요시 식수는 준비해오셔야 합니다</li>
                    <li>최대 인원 초과시 입실이 불가 합니다 (방문객 불가)</li>
                    <li>객실 내 육류, 튀김류, 생선류 조리를 할 수 없습니다</li>
                    <li>전 객실 애완동물 출입이 불가합니다</li>
                    <li>보호자 동반없는 미성년자는 이용하실 수 없습니다</li>
                    <li>해당 이미지는 실제와 상이 할 수 있습니다</li>
                    <li>이용시설의 분실 및 훼손의 책임은 이용자에게 있으니 주의부탁드립니다</li>
                    <li>객실 내에서는 화재위험물질 (화약, 폭죽 등)은 사용 하실 수 없습니다 (화재로 인한 책임은 이용자에게 있습니다)</li>
                    <li>쓰레기는 지정된 장소에 분리하여 주시기 바랍니다</li>
                    <li>위의 정보는 펜션의 사정에 따라 변경될 수 있습니다</li>
                    <li>성수기 기간동안 일부 객실의 경우 요금변동이 있을 수 있습니다</li>
                    <li>타인이나 주변입주민의에게 피해를 주는 행위 (주사,기물파손,타객실 무단출입 객실내 흡연)시 환불 없이 퇴실조치 합니다</li>
                    <li>뒷정리와 분리수거는 직접 부탁드립니다 (객실 앞 분리수거함 비치/음식물 쓰레기봉투와 종량제봉투 비치)</li>
                    <li>모닥불 이용 후 완전 소화 후 입실해주셔야 합니다</li>
                    <li>음식물 쓰레기는 봉지에 담아 외부 음식물통에 넣어주세요</li>
                </ul>
            </div>
        </div>

        <!-- //footer -->
        <c:import url="/WEB-INF/views/includes/userFooter.jsp"></c:import>
    </div>
</body>
</html>