<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/includes/userHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/users/loginjoin.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<body>
	<!-- 로그인 pop_layer_w('pop_login') -->
	<div class="layer_fix layer_unfix pop_login pop_mem_reserve">
		<section>
				<input type="hidden" name="yeogi_token" value="59259f5ff4a5bcd52e61c8e7edb53374">
				<div class="fix_title">
					<strong><a class="col_red" href="${pageContext.request.contextPath}/main">양도 어때</a></strong>
				</div>
				
				<div class="text-center">로그인에 실패하였습니다</div>
				<br>
				<div class="text-center"><a href="${pageContext.request.contextPath}/loginForm" style="color: #000000;">로그인하러가기</a></div>
		</section>
	</div>
</body>
</html>