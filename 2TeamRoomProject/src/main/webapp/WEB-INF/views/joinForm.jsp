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

<title>Sign in Page 
	Template</title>

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
<script>
	//빈칸 여부 or 비밀번호 일치 테스트
	function check() {
		if (!document.joinForm.id.value) {
			alert("id를 입력하세요.");
			return false;
		} else if (!document.joinForm.password.value) {
			alert("password를 입력하세요.");
			return false;
		} else if (document.joinForm.password.value != document.joinForm.password2.value) {
			alert("password가 일치하지 않습니다. 다시 확인해주세요.");
			return false;
		} else if (!document.joinForm.name.value) {
			alert("name를 입력하세요.");
			return false;
		} else if (!document.joinForm.age.value) {
			alert("생년월일을 입력하세요.");
			return false;
		} else if (!(document.joinForm.gu.value && document.joinForm.dong.value)) {
			alert("주소를 입력하세요.");
			return false;
		} else if (!document.joinForm.age.value) {
			alert("생년월일을 입력하세요.");
			return false;
		}
	}
</script>

<script>
	var btn;
	function btn_on() {
		btn = document.getElementById('btn');
		btn.disabled = false;//버튼활성화
	}
	function btn_off() {
		btn = document.getElementById('btn');
		btn.disabled = 'disabled';//버튼비활성화
	}
</script>

</head>

<body class="login-img3-body">

	<div class="container">

		<form class="login-form" name="joinForm" onSubmit="return check()"
			method="POST">
			<div class="login-wrap">
				<p class="login-img">
					<i class="icon_lock_alt"></i>
				</p>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<input type="text" class="form-control" name="id"
						placeholder="UserID" autofocus>
					<div>
						<input type="button" class="form-control" value="Confirm"
							onclick="isNew()">
						<script>
							function isNew() {
								$.getJSON("selectID?id="
										+ $('[name="id"]').val(), recvID)
							}

							function recvID(data) {
								if (data.length == 0) {
									alert("OK. You can use this ID");//가능
									btn_on();
								} else {
									alert("Your Id already in use. Please Insert another ID.");//불가능
									btn_off();
								}
							}
						</script>
					</div>

				</div>

				<div class="input-group">
					<span class="input-group-addon"><i class="icon_key_alt"></i></span>

					<input type="password" class="form-control" name="password"
						placeholder="Password" autofocus>

				</div>

				<div class="input-group">
					<span class="input-group-addon"><i class="icon_key_alt"></i></span>
					<input type="password" class="form-control" name="password2"
						placeholder="Confirm Password" autofocus>
				</div>

				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>

					<input type="text" class="form-control" name="name"
						placeholder="Name" autofocus>
				</div>

				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<input type="number" class="form-control" name="age"
						placeholder="birth(yymmdd)" autofocus>
				</div>

				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<input type="text" class="form-control" name="gu" placeholder="OO구"
						autofocus><input type="text" class="form-control"
						name="dong" placeholder="OO동" autofocus>
				</div>

				<div>
					<input type="radio" name="sex" value="남성" checked>Man <input
						type="radio" name="sex" value="여성" checked>Woman
				</div>

				<div>
					<input type="radio" name="job" value="무직" checked>무직 <input
						type="radio" name="job" value="학생" checked>학생 <input
						type="radio" name="job" value="직장인" checked>직장인 <input
						type="radio" name="job" value="자영업" checked>자영업
				</div>
				<div>
					<hr>
					<br> Preference <label class="checkbox"> <input
						type="checkbox" name="option" value="finedust" checked>Fine
						Dust
					</label> <label class="checkbox"> <input type="checkbox"
						name="option" value="noise" checked>Noise
					</label> <label class="checkbox"> <input type="checkbox"
						name="option" value="crime" checked>criminal
					</label> <label class="checkbox"> <input type="checkbox"
						name="option" value="foreigner" checked>foreigner
					</label> <label class="checkbox"> <input type="checkbox"
						name="option" value="wsafezone" checked>Woman Safe Zone
					</label> <label class="checkbox"> <input type="checkbox"
						name="option" value="traffic" checked>Traffic Accident
					</label>
				</div>

				<input class="btn btn-primary btn-lg btn-block" type="submit"
					value="Sign Up" formaction="joinComplete" id="btn"
					disabled="disabled"> <input
					class="btn btn-primary btn-lg btn-block" type="button"
					value="Cancel" onclick="location.href='loginForm'">
			</div>

		</form>
	</div>
</body>

</html>

