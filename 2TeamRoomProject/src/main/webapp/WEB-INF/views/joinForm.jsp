<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<title>회원가입 화면</title>
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
</head>
<body>
	<div id="wrap">
		<br> <br> <b><font size="6" color="gray">회원가입</font></b> <br>
		<br> <br>

		<form name="joinForm" onSubmit="return check()" action="joinComplete">
			<table>
				<tr>
					<td id="title">아이디</td>
					<td><input type="text" name="id" maxlength="20"> <input
						type="button" value="중복확인" onclick="isNew()"> <script>
							function isNew() {
								//중복확인!!!!!!!!!!!!!!!!!!!!!!!!!
							}
						</script></td>
				</tr>

				<tr>
					<td id="title">비밀번호</td>
					<td><input type="password" name="password" maxlength="15">
					</td>
				</tr>

				<tr>
					<td id="title">비밀번호 확인</td>
					<td><input type="password" name="password2" maxlength="15">
					</td>
				</tr>

				<tr>
					<td id="title">이름</td>
					<td><input type="text" name="name" maxlength="40"></td>
				</tr>

				<tr>
					<td id="title">성별</td>
					<td><input type="radio" name="sex" value="남성" checked>남
						<input type="radio" name="sex" value="여성" checked>여</td>
				</tr>

				<tr>
					<td id="title">생년월일</td>
					<td><input type="date" name="age" maxlength="6"
						placeholder="년월일(6자)" size="12"></td>
				</tr>

				<tr>
					<td id="title">주소(OO구)</td>
					<td><input type="text" size="10" name="gu" placeholder="강남구" />
						주소(OO동)<input type="text" size="10" name="dong" placeholder="삼성동" />
					</td>
				</tr>

				<tr>
					<td id="title">직업</td>
					<td><input type="radio" name="job" value="무직" checked>무직
						<input type="radio" name="job" value="학생" checked>학생 <input
						type="radio" name="job" value="직장인" checked>직장인 <input
						type="radio" name="job" value="자영업" checked>자영업</td>
				</tr>
				<tr>
					<td><hr></td>
					<td><hr></td>
				</tr>
				<tr>
					<td id="title">선호항목</td>
					<td><input type="checkbox" name="options" value="air" checked>대기오염
						<input type="checkbox" name="options" value="noise" checked>소음공해<br>
						<input type="checkbox" name="options" value="criminal" checked>범죄/치안
						<input type="checkbox" name="options" value="foreigner" checked>외국인 거주 현황<br>
						<input type="checkbox" name="options" value="safezone" checked>여성 안전 지킴이 존
						<input type="checkbox" name="options" value="traffic" checked>교통 안전사고 현황</td>
				</tr>

			</table>
			<br> <input type="submit" value="가입">
			<input type="button" value="취소" onclick="location.href='loginForm'">
		</form>
	</div>
</body>
</html>