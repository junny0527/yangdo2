<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업주 회원가입 양식</title>
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/hostJoinForm.css">


<body>

<div id = "container">
	<div id="title">
		<h1>양도어때 HOST</h1>
	</div>
	
	<br><br><br>
	
	<div id = "joinform">
		<div>
			<label for = "id">아이디</label>
			<input type = "text" name = "id" class = "form-control" placeholder = "아이디를 입력하세요.">
		</div>
		
		<div>
			<label for = "password">비밀번호</label>
			<input type = "text" name = "password" class = "form-control" placeholder = "비밀번호를 입력하세요.">
		</div>
		
		<div>
			<label for = "passwordcheck">비밀번호 확인</label>
			<input type = "text" name = "passwordcheck" class = "form-control" placeholder = "비밀번호 확인">
		</div>
		
		<div>
			<label for = "cellphone">휴대전화 번호</label>
			<input type = "text" name = "cellphone" class = "form-control" placeholder = "휴대전화 번호를 입력하세요.">
		</div>
		
		<div>
			<label for = "verify">인증번호</label>
			<input type = "text" name = "verify" class = "form-control" placeholder = "인증번호를 입력하세요.">
		</div>
		
		<div>
			<label for = "email">이메일 입력</label>
			<input type = "text" name = "email" class = "form-control" placeholder = "이메일을 입력하세요.">
		</div>
	</div>
	
	<div id = "policy" class = "checkbox">
		<input type = "checkbox"><strong>전체 동의</strong>
		<input type = "checkbox">업주 <strong>CMS 이용 약관</strong>에 동의합니다.(필수)
		<input type = "checkbox">업주 <strong>개인정보 수집</strong>에 동의합니다.(필수)
		<input type = "checkbox">호스트 <strong>보장사항</strong>에 대한 내용에 동의합니다.(필수)
		
		
	
	
	</div>
	
	
</div>


</body>
</html>