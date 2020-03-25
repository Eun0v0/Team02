<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head>
<title>회원가입 처리</title>

</head>
<body>
<form method="POST">
	<div id="wrap">
		<br> <br> <b><font size="5" color="gray">회원가입 정보를
				확인하세요.</font></b> <br> <br> <font color="blue">${name}</font>님 가입을
		축하드립니다. <br> <br>
		<hr>
		<table>
			<tr>
				<td id="title">아이디</td>
				<td>${id}</td>
			</tr>
			<tr>
				<td id="title">이름</td>
				<td>${name}</td>
			</tr>
			<tr>
				<td id="title">성별</td>
				<td>${sex}</td>
			</tr>
			<tr>
				<td id="title">생일</td>
				<td>${age}</td>
			</tr>
			<tr>
				<td id="title">주소</td>
				<td>${gu}${dong}</td>
			</tr>
			<tr>
				<td id="title">직업</td>
				<td>${job}</td>
			</tr>
		</table>

		<hr>
		<br> <input type="button" value="Go to Login"
			onclick="location.href='loginForm'">
	</div>
	</form>
</body>
</html>