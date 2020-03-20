<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Log In Page!</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div>LOGOLOGO</div>
	<br>

	<form name="loginForm" action="index">
		<table>
			<tr>
				<td id="title">아이디</td>
				<td><input type="text" name="id" maxlength="20">
			</tr>

			<tr>
				<td id="title">비밀번호</td>
				<td><input type="password" name="password" maxlength="15">
				</td>
			</tr>
		</table>
			<input type="submit" value="로그인">
			<input type="button" value="회원가입" onclick="location.href='joinForm'">
	</form>

</body>
</html>