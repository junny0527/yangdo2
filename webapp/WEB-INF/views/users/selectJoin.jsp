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
<div class="layer_fix layer_unfix pop_login pop_mem_reserve">
    <section>
            <div class="fix_title">
                <strong><a class="col_red" href="">양도	어때</a></strong>
            </div>
            <a href="${pageContext.request.contextPath}/user/agree"><button id="btn_hJoin" class="btn_link gra_left_right_red" type="button"><span>유저로 회원가입</span></button></a>
            <a href="${pageContext.request.contextPath}/host/agree"><button id="btn_uJoin" class="btn_link col_host btn_join" type="button"><span>호스트로 회원가입</span></button></a>
      </section>
</div>
</body>
</html>