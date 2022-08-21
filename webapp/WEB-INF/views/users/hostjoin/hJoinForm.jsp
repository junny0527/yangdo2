<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/users/loginjoin.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<body>
<div class="layer_fix pop_login pop_mem_reserve fix_disable">
    <section>
    <form id="joinForm" action="${pageContext.request.contextPath}/host/join" autocomplete="off" method="post" novalidate="novalidate">

		<input type="hidden" name="identify" value="host">

        <div class="fix_title">
                <strong><a class="col_red" href="">양도	어때</a></strong>
        </div>

        <div class="join">
            <strong class="sub_title">호스트회원가입</strong>
            <b>아이디</b>
            <div class="inp_type_2 form-errors btn-add">
                <input type="text" name="id" placeholder="아이디를 입력해주세요">
                <button type="button" class="btn_etc" id="checkId">중복체크</button>
                <label id="id_check_msg" class="validate_msg_label"></label>
            </div>

            <b>비밀번호</b>
            <div class="inp_type_2 form-errors form-password-rule">
                <input type="password" name="pw" placeholder="비밀번호를 입력해주세요." id="new_pw">
				<label id="new_pw_msg" class="validate_msg_label"></label>
            </div>

            <b>비밀번호 확인</b>
            <div class="inp_type_2 form-errors">
                <input type="password" name="upw_retry" placeholder="비밀번호를 입력해주세요." id="new_pw_re" class="valid" aria-invalid="false">
				<label id="new_pw_re_msg" class="validate_msg_label"></label>
            </div>
            <b>휴대전화 번호</b>
            <div class="inp_type_2 form-errors">
                <input type="text" name="hp" placeholder="전화번호를 입력해주세요." id="hp">
            </div>
            <b>이메일 입력</b>
            <div class="inp_type_2 form-errors">
                <input type="text" name="email" placeholder="이메일 주소를 입력해주세요." id="email">
            </div>

            <button type="submit" id="joinBtn" class="btn_link gra_left_right_red" style="border: none;"><span>가입하기</span></button>
        </div>
    </form>
</section>



</div>

</body>
<script type="text/javascript">

	
	$("#checkId").on("click",function(){
		console.log("체크버튼클릭");
		var id = $("[name='id']").val();
		$.ajax({
			url : "${pageContext.request.contextPath }/user/api/joinIdCheck",		
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(id),
			dataType : "json",
			success : function(result){
				console.log(result)
				if(result == 1){
					$("#id_check_msg").html("아이디가 중복되었습니다");
				}else{
					$("#id_check_msg").html("사용할 수 있는 아이디입니다");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});

		 
	});
	
	$("#new_pw_re").on("blur",function(){
		console.log("비밀번호 체크");
		
		var pw = $("[name='pw']").val();
		var pwC = $("[name='upw_retry']").val();
		if(pw === pwC) {
			$("#new_pw_re_msg").html("비밀번호가 맞았습니다");
		}else{
			$("#new_pw_re_msg").html("비밀번호가 틀렸습니다");
		}
		
	});


	$("#joinBtn").on("submit",function(){
		console.log("버튼클릭 ")
		var id = $("[name='id']").val();
		var pw = $("[name='pw']").val();
		var pwC = $("[name='upw_retry']").val();
		var hp = $("[name='hp']").val();
		var email = $("[name='email']").val();
		
		if(id == "" || id == null){
			alert("아이디를 입력하세요");
			return false;
		}else if(pw == "" || pw == null){
			alert("비밀번호를 입력하세요");
			return false;
		}else if(pwC == "" || pwC == null){
			alert("비밀번호를 확인하세요");
			return false;
		}else if(hp == "" || hp == null){
			alert("전화번호를 입력하세요");
			return false;
		}else if(email == "" || email == null){
			alert("이메일을 입력하세요");
			return false;
		}else{
			return ture;
		}
	}); 
	
</script>
</html>