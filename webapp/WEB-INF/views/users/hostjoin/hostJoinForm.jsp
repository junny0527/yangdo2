<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/includes/hostHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/users/loginjoin.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<body>
<div class="layer_fix pop_login pop_mem_reserve fix_disable">
    <section>
    <form id="joinForm" action="" autocomplete="off" method="post" novalidate="novalidate">

		<input type="hidden" name="privacy_auxiliary_policy">
		<input type="hidden" name="location_policy">
		<input type="hidden" name="marketing_acceptance">

        <div class="fix_title">
                <strong><a class="col_red" href="">양도	어때</a></strong>
        </div>

        <div class="join">
            <strong class="sub_title">호스트회원가입</strong>
            <b>아이디</b>
            <div class="inp_type_2 form-errors btn-add">
                <input type="text" name="uid" placeholder="아이디를 입력해주세요">
                <button type="button" class="btn_etc" onclick="">중복체크</button>
            </div>

            <b>비밀번호</b>
            <div class="inp_type_2 form-errors form-password-rule">
                <input type="password" name="upw" placeholder="비밀번호를 입력해주세요." id="new_pw">
				<label id="new_pw_msg" class="validate_msg_label"></label>
            </div>

            <b>비밀번호 확인</b>
            <div class="inp_type_2 form-errors">
                <input type="password" name="upw_retry" placeholder="비밀번호를 입력해주세요." id="new_pw_re" class="valid" aria-invalid="false">
				<label id="new_pw_re_msg" class="validate_msg_label">비밀번호가 일치하지 않습니다.</label>
            </div>
            <b>휴대전화 번호</b>
            <div class="inp_type_2 form-errors">
                <input type="password" name="upw_retry" placeholder="전화번호를 입력해주세요." id="new_pw_re">
				<label id="new_pw_re_msg" class="validate_msg_label"></label>
            </div>
            <b>이메일 입력</b>
            <div class="inp_type_2 form-errors">
                <input type="password" name="upw_retry" placeholder="이메일 주소를 입력해주세요." id="new_pw_re">
				<label id="new_pw_re_msg" class="validate_msg_label"></label>
            </div>

            <button type="button" id="joinBtn" class="btn_link gra_left_right_red btn_user_submit" disabled="" style="background-color: rgb(250, 250, 250); color: rgba(0, 0, 0, 0.16); border: none;"><span>가입하기</span></button>
        </div>
    </form>
</section>



</div>

</body>
</html>