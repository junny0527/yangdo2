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
			<form id="loginForm" action="${pageContext.request.contextPath}/login" autocomplete="off" method="post" novalidate="novalidate">
				<input type="hidden" name="yeogi_token" value="59259f5ff4a5bcd52e61c8e7edb53374">
				<br><br>
				<div class="fix_title">
					<strong><a id="logotitle" class="col_red" href="${pageContext.request.contextPath}/main">양도 어때</a></strong>
				</div>
				<br><br>
				<%-- <img alt="" src="${pageContext.request.contextPath}/assets/image/users/yangdodooo.gif"> --%>
				<div class="inp_type_1 ico_email form-errors">
					<!-- focus / err -->
					<input type="email" name="id" placeholder="아이디를 입력해 주세요" required="" class="required" value="" >
					<button type="button" class="reset_val">초기화</button>
				</div>
				<div class="inp_type_1 ico_pw form-errors">
					<input type="password" name="pw" placeholder="비밀번호" required="" class="required" data-msg-required="비밀번호를 입력해 주세요.">
					<button type="button" class="reset_val">초기화</button>
				</div>
				<button class="btn_link gra_left_right_red" type="submit">
					<span>로그인</span>
				</button>
				<div class="link_half">
					<div>
						<a href=""><span>비밀번호 재설정</span></a>
					</div>
					<div>
						<a href="${pageContext.request.contextPath}/selectJoin"><span>회원가입</span></a>
					</div>
				</div>
			</form>
		</section>
	</div>
</body>
</html>