<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<title>Login Page</title>

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

<script>
	//빈칸 여부 or 비밀번호 일치 테스트

	
	
	function check() {
		if (!document.loginForm.id.value) {
			alert("id를 입력하세요.");
			return false;
		} else if (!document.loginForm.password.value) {
			alert("password를 입력하세요.");
			return false;
		}
		//		else {
		//			$.getJSON("confirmID?id=" + $('[name="id"]').val() + "&pwd="
		//					+ $('[name="password"]').val(), recvID);
		//		}
	}

	function recvID(data) {
		console.log("recvID")
		if (data.length == 0) {
			alert("OK.");//가능
		} else {
			alert("Your Id already in use. Please Insert another ID.");//불가능
			return false;
		}
	}
</script>

</head>

<body class="login-img3-body">
	
	<div class="container">

		<form class="login-form" name="loginForm" onSubmit="return check()">
			<div class="login-wrap">
				<p class="login-img">
					<i class="icon_lock_alt"></i>
				</p>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<input type="text" class="form-control" name="id"
						placeholder="UserID" autofocus>
				</div>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_key_alt"></i></span>
					<input type="password" class="form-control" name="password"
						placeholder="Password">
				</div>

				<input class="btn btn-primary btn-lg btn-block" type="submit" value="Login"
					formaction="confirmID"> 
					<input class="btn btn-info btn-lg btn-block" type="button" value="Sign Up"
					onclick="location.href='joinForm'">
			</div>
		</form>
		<div class="text-right">
			<div class="credits">

				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
		</div>
	</div>


</body>

</html>