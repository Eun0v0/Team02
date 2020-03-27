<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>Sign in Page Template</title>

<!-- Bootstrap CSS -->
<link href="resources/NiceAdmin/css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="resources/NiceAdmin/css/bootstrap-theme.css"
	rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="resources/NiceAdmin/css/elegant-icons-style.css"
	rel="stylesheet" />
<link href="resources/NiceAdmin/css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles -->
<link href="resources/NiceAdmin/css/style.css" rel="stylesheet">
<link href="resources/NiceAdmin/css/style-responsive.css"
	rel="stylesheet" />

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>

<body class="login-img3-body">

	<div class="container">

		<form class="login-form" name="joinForm" method="POST">
			<div class="login-wrap">
				<br> <br> <b><font size="5" color="gray">회원가입
						정보를 확인하세요.</font></b> <br> <br> <font color="blue">${name}</font>님
				가입을 축하드립니다. <br> <br>

				<hr>
				<table>
					<tr>
						<td id="title">ID </td>
						<td>${id}</td>
					</tr>
					<tr>
						<td id="title">Name </td>
						<td>${name}</td>
					</tr>
					<tr>
						<td id="title">Gender </td>
						<td>${sex}</td>
					</tr>
					<tr>
						<td id="title">Birth </td>
						<td>${age}</td>
					</tr>
					<tr>
						<td id="title">Addr </td>
						<td>${gu}${dong}</td>
					</tr>
					<tr>
						<td id="title">Job </td>
						<td>${job}</td>
					</tr>
				</table>

				<hr>
				<br> <input class="btn btn-primary btn-lg btn-block"
					type="button" value="Go to Login"
					onclick="location.href='loginForm'">
			</div>

		</form>
	</div>
</body>

</html>

