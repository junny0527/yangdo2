<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰관리</title>
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/hostHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/reviews.css">


<body>

<!-- header -->
<c:import url="/WEB-INF/views/includes/hostHeader.jsp"></c:import>
<!-- header -->

<!-- table -->
<div id="content">	
	<div id="reviewstatus" class = "center-block">
		<p class = "subject">리뷰관리</p>
	</div>
	
	<div>
		<ul>
			<li>
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
		                    
		                    <button id="addreply" type="button" class="btn btn-default btn_add">+ 답글 달기</button>
		                    <div id = "reply">
		                    	<textarea class = "form-control"></textarea>
		                    	<button id = "cancel" type = "button" class="btn">취소</button>
		                    	<button id = "sendreply" type = "button" class="btn btn-primary">등록</button>
		                    </div>
		                    
		                </div>
		            </div>
		        </div>
			</li>
			<li>
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
							<button type ="button" class = "btn editreply">수정</button>
		                </div>
		            </div>
		        </div>
			</li>
		</ul>
	</div>
	<nav aria-label="Page navigation" class = "justify-content-center">
	  <ul class="pagination pagination-lg">
	    <li class="page-item"><a class="page-link" href="#">◀</a></li>
	    <li class="page-item active"><a class="page-link" href="#">1</a></li>
	    <li class="page-item"><a class="page-link" href="#">2</a></li>
	    <li class="page-item"><a class="page-link" href="#">3</a></li>
	    <li class="page-item"><a class="page-link" href="#">4</a></li>
	    <li class="page-item"><a class="page-link" href="#">5</a></li>
	    <li class="page-item"><a class="page-link" href="#">6</a></li>
	    <li class="page-item"><a class="page-link" href="#">7</a></li>
	    <li class="page-item"><a class="page-link" href="#">8</a></li>
	    <li class="page-item"><a class="page-link" href="#">▶</a></li>
	  </ul>
	</nav>
</div>

<!-- content -->
<!-- footer -->
<c:import url="/WEB-INF/views/includes/hostFooter.jsp"></c:import>
<!-- footer -->
</body>


<script type ="text/javascript">
$("#addreply").on("click", function(){
	$("#reply").css("display", "block");
})

$("#sendreply").on("click", function(){
	$("#addreply").css("display", "none");
	$("#reply").css("display", "none");
})

$("#cancel").on("click", function(){
	$("#reply").css("display", "none");
})


</script>

</html>