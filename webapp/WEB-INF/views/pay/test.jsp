<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<script>

	fetch("/yangdo/res/testApi", {
		method: "GET"
	})
	.then(res => res.json())
	.then(data => console.log("data: ", data))
</script>
</body>
</html>