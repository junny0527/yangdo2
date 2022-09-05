<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰관리</title>
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
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
			<c:forEach items = "${rList}" var = "rList" varStatus = "status">
				<li>
					<div id="reviewBox">
						<div id="guestContainer">
			                <div class="box">
			                    <img src="${pageContext.request.contextPath}/assets/image/detail/guest.png">
			                </div>
			                <div id="guestBox">
			                    <span id="guestReview">${rList.title}</span>
			                    <div id="reviewStar">
			                    	<c:choose>
				                        <c:when test = "${rList.stars >= 5}">
				                       		<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>
				                       		<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>
				                       		<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>
				                       		<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>
				                       		<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>
				                        </c:when>
				                        <c:when test = "${rList.stars >= 4}">
				                       		<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>
				                        	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>
				                        	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>
				                        	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>
				                        </c:when>
				                        <c:when test = "${rList.stars >= 3}">
			                         		<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>
			                         		<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>
				                        	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>
				                        </c:when>
				                        <c:when test = "${rList.stars >= 2}">
				                        	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>
				                        	<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>
			                         	</c:when>
			                         	<c:otherwise>
			                         		<span class="starCount"><img src="${pageContext.request.contextPath}/assets/image/detail/stars.png"></span>
			                         	</c:otherwise>
			                        </c:choose>
			                        <span id="starScore">${rList.stars}</span>
			                    </div>
			                    <div id="guestInfo">
			                        <span id="roomName">${rList.roomName} 객실 이용</span>
			                        <span> | ${rList.guestName}</span>
			                    </div>
			                    <span id="reviewContent">${rList.guestContent}</span>                
			                    <c:if test = "${rList.image1 && rList.image2 != null}">
				                    <div id="roomImg">
				                        <ul>
				                            <li><img src="${rList.image1}"></li>
				                            <li><img src="${rList.image2}"></li>
				                        </ul>
				                    </div>
			                    </c:if>           
			                    <span id="guestRegDate">${rList.guestRegdate}</span>
			                    <c:choose>
		                    		<c:when test = "${rList.replyNo != null && rList.hostContent != null && rList.hostRegdate != null}">
		                    			
			                    		<div id="ceoContainer">
					                        <div class="box">
					                       		<img src="${pageContext.request.contextPath}/assets/image/detail/guest.png">
					                        </div>
					                        <div id="ceoInfo">
					                            <span id="ceoReview">제휴점 답변</span>
					                            <span id="ceoContent">${rList.hostContent}</span>
					                            <span id="ceoRegDate">${rList.hostRegdate}</span>
					                        </div>
			                    		</div>
			                    		<input type = "hidden" value = "${rList.reviewNo}">
										<button type ="button" class = "btn editreply">수정</button>
										<div class = "replyedit">
											<textarea class = "form-control"></textarea>
											<button class = "btn editcancel" type = "button">취소</button>
											<button class = "btn btn-primary sendeditreply" type = "button">등록</button>
										</div>
									</c:when>
									<c:otherwise>
										<div class = "addreplyarea">
											<input type = "hidden" value = "${rList.reviewNo}">
											<button type = "button" class = "btn addreply"> + 답글달기</button>
											<div class = "reply">
												<textarea class = "form-control"></textarea>
												<button class = "btn cancel" type = "button">취소</button>
												<button class = "btn btn-primary sendreply" type = "button">등록</button>
											</div>
										</div>
									</c:otherwise>
								</c:choose>
			                </div>
			            </div>
			        </div>
				</li>
			</c:forEach>
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

$(".addreplyarea").on("click", function(){
	$(".reply").css("display", "block");
});

$(".editreply").on("click", function(){
	$(this).siblings(".replyedit").css("display", "block");
	$(this).siblings("#ceoContainer").css("display", "none");
	$(this).css("display", "none");
});
	
$(".sendreply").on("click", function(){
	var reviewNo = $(this).parent().parent().children('input').val();
	var hostContent = $(this).siblings('textarea').val();
	console.log(reviewNo);
	console.log(hostContent);
	
	var replyVo = {
		reviewNo: reviewNo,
		hostContent: hostContent
	}
	
	console.log(replyVo);
		
	$.ajax({
		url : "${pageContext.request.contextPath}/host/api/replyInsert",
		type : "post",
		data : JSON.stringify(replyVo),
		contentType : 'application/json',
		dataType : "json",
		success : function(good){
			alert("등록되었습니다.");
			window.location.href = "${pageContext.request.contextPath}/host/reviews";
		},
		error : function(XHR, status, error) {
			console.log(status + ' : ' + error);
		}
	});
});

$(".sendeditreply").on("click", function(){
	var reviewNo = $(this).parent().parent().children('input').val();
	var hostContent = $(this).siblings('textarea').val();
	console.log(reviewNo);
	console.log(hostContent);
	
	var replyVo = {
		reviewNo: reviewNo,
		hostContent: hostContent
	}
	
	console.log(replyVo);
	
	$.ajax({
		url : "${pageContext.request.contextPath}/host/api/replyUpdate",
		type : "post",
		data : JSON.stringify(replyVo),
		contentType : 'application/json',
		dataType : "json",
		success : function(good){
			alert("수정되었습니다.");
			window.location.href = "${pageContext.request.contextPath}/host/reviews";
		},
		error : function(XHR, status, error) {
			console.log(status + ' : ' + error);
		}
	});
});



$(".cancel").on("click", function(){
	$(".reply").css("display", "none");
})

$(".editcancel").on("click", function(){
	$(this).parent(".replyedit").css("display", "none");
	$(this).parent().siblings("#ceoContainer").css("display", "flex");
	$(this).parent().siblings(".editreply").css("display", "block");
})


</script>

</html>