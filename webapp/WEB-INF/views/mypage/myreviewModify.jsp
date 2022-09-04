<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>여행할때 양도어때</title>

<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/includes/userHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mypage/mycommon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mypage/my.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mypage/userreview.css">

<!-- //css -->
</head>

<!-- js -->
<script src="https://use.fontawesome.com/800a23ce81.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<!-- //js -->
<body class="pc and">
	<!-- Wrap -->
	<div id="wrap" class="wrap show">

		<!-- Header// -->
		<c:import url="/WEB-INF/views/includes/userHeader.jsp"></c:import>
		<!-- //Header// -->

		<!-- Subtop -->
		<c:import url="/WEB-INF/views/mypage/includes/mysubtop.jsp"></c:import>
		<!-- //Subtop -->

		<!-- Content  -->
		<div id="content" class="sub_wrap my_wrap">

			<!-- Nav -->
			<c:import url="/WEB-INF/views/mypage/includes/mynav.jsp"></c:import>
			<!-- Nav -->

			<div class="align_rt">
				<!-- Content  -->
				<div class="user-review">
					<div class="review-form">
						<div class="review-header">
							<strong>리뷰 수정하기</strong>
						</div>
						<form action="${pageContext.request.contextPath}/my/review/rewrite" method="post" id="user-review-form" enctype="multipart/form-data">
							<input type="hidden" name="resNo" value="${param.resNo}">
							<div class="review-body">
								<div class="review-content">
									<b class="rating-title">별점주기(필수 선택) : </b>
									<div class="rating">
										<input type="radio" id="star5" name="stars" value="5" required /><label class="full" for="star5" title="5 stars"></label> <input
											type="radio" id="star4half" name="stars" value="4.5" /><label class="half" for="star4half" title="4.5 stars"></label> <input type="radio"
											id="star4" name="stars" value="4" /><label class="full" for="star4" title="4 stars"></label> <input type="radio" id="star3half"
											name="stars" value="3.5" /><label class="half" for="star3half" title="3.5 stars"></label> <input type="radio" id="star3" name="stars"
											value="3" /><label class="full" for="star3" title="3 stars"></label> <input type="radio" id="star2half" name="stars" value="2.5" /><label
											class="half" for="star2half" title="2.5 stars"></label> <input type="radio" id="star2" name="stars" value="2" /><label class="full"
											for="star2" title="2 stars"></label> <input type="radio" id="star1half" name="stars" value="1.5" /><label class="half" for="star1half"
											title="1.5 stars"></label> <input type="radio" id="star1" name="stars" value="1" /><label class="full" for="star1" title="1 star"></label>
										<input type="radio" id="starhalf" name="stars" value="0.5" /><label class="half" for="starhalf" title="0.5 stars"></label>
									</div>
								</div>
								<div class="review-content">
									<p>
										<b>리뷰제목 : </b>
									</p>
									<div class="inp_wrap">
										<input type="text" name="title" value="${revList.title}" required>
									</div>
								</div>

								<div class="review-content">
									<p>
										<b>리뷰내용 : </b>
									</p>
									<div class="">
										<textarea class="review-content-detail" rows="10" name="content" value="${revList.content}" required></textarea>
									</div>
								</div>
								<div class="review-content">
									<p>
										<b>첨부파일1 : </b>
									</p>
									<input class="upload-img-btn" id="rv_img1" type="file" name="img1" value="" accept="image/*">
								</div>
								<div class="review-content">
									<p>
										<b>첨부파일2 : </b>
									</p>
									<input class="upload-img-btn" id="rv_img2" type="file" name="img2" value="" accept="image/*">
								</div>

							</div>
							<div>
								<a href="${pageContext.request.contextPath }/my/detail?resNo=${param.resNo}">
									<button type="button" class="btn_flat btn-grey">리뷰 취소</button>
								</a>
								<button type="submit" id="save" class="btn_flat btn-red">리뷰 등록</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function(){
	
	$(form).on("submit", function(event){
		event.preventDefault();
		
		var formValues = $(this).serialize();
		
		$.ajax({
	        url : "${pageContext.request.contextPath}/my/review/rewrite",
	        data : formData,
	        type:'POST',
	        enctype:'multipart/form-data',
	        processData:false,
	        contentType:false,
	        dataType:'json',
	        cache:false,
	        success:function(data){
	            alert("저장에 성공하셨습니다.");
	            console.log(data);
	            
	        },error:function(XHR, status, error){
	            alert("오류 발생.\n관리자에게 문의해주세요.");
	        }
		
	});
});
</script>
</html>