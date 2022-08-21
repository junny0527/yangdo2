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
<div class="layer_fix pop_login pop_mem_reserve">
    <section>
        <div class="fix_title">
            <strong>양도어때 약관 동의</strong>
        </div>

        <div class="terms_agree">
            <p class="all_check">
                <label><input type="checkbox" id="checkAll" class="inp_chk_02 chk_default">전체 동의</label>
            </p>
            <p>
                <input type="checkbox" id="terms" class="inp_chk_02 chk_default terms_checkbox" require="">
                <a href="https://www.goodchoice.kr/more/terms/terms" target="_blank">이용약관 동의</a> <span>(필수)</span>
            </p>
			<p>
				<input type="checkbox" id="teenager"class="inp_chk_02 chk_default terms_checkbox" require="">
				<a href="https://www.goodchoice.kr/more/over14yearsOldAgree " id="fourteen" target="_blank">업주 CMS 이용 약관에 동의합니다.</a><span> (필수)</span>
			</p>
            <p>
                <input type="checkbox" id="privacy" class="inp_chk_02 chk_default terms_checkbox" require="">
                <a href="https://www.goodchoice.kr/more/privacyRequire" target="_blank">업주 개인정보 수집에 동의합니다 </a><span> (필수)</span>
            </p>
			<p>
				<input type="checkbox" id="privacy_auxiliary_policy" class="inp_chk_02 chk_default terms_checkbox" require="">
				<a href="https://www.goodchoice.kr/more/privacySelect" target="_blank">보장사항에 대한 내용에 동의합니다.</a><span> (필수)</span>
			</p>
            <p>
				<input type="checkbox" id="marketing" class="inp_chk_02 chk_default terms_checkbox">
				<a href="http://api3.goodchoice.kr/more/marketingAgree" target="_blank">마케팅 알림 수신동의</a> (선택)
			</p>
            <p>
                <input type="checkbox" id="location" class="inp_chk_02 chk_default terms_checkbox">
                <a href="https://www.goodchoice.kr/more/terms/location" target="_blank">위치기반 서비스 이용약관 동의</a> (선택)
            </p>

            <button type="button" class="btn_link gra_left_right_red" id="terms_agree_btn" disabled="disabled" onclick ="location.href='${pageContext.request.contextPath}/host/joinForm';"><span>다음</span></button>
        </div>
    </section>



</div>
</body>
<script type="text/javascript">


$(function () {
	
    if ($('.terms_agree').length > 0) {
        $('#checkAll').on('click', function () {
            var checked = false;

            if($(this).is(':checked')){
                checked = true;

                $('#terms_agree_btn').addClass('gra_left_right_red').attr('disabled',false);
            }else{
                checked = false;

                $('#terms_agree_btn').removeClass('gra_left_right_red').attr('disabled',true);
            }

            $('.terms_checkbox').each(function (k) {
                $(this).prop("checked", checked);
            });
        });

        $('.terms_checkbox').on('click', function () {
            if ($('.terms_checkbox:checked').length > 6) {
                $('#checkAll').prop("checked", true);
            } else {
                $('#checkAll').prop("checked", false);
            }

            if ($('.terms_checkbox[require]:checked').length > 3) {
                $('#terms_agree_btn').addClass('gra_left_right_red').attr('disabled',false);
            } else {
                $('#terms_agree_btn').removeClass('gra_left_right_red').attr('disabled',true);
            }
        });

    }
});


</script>
</html>