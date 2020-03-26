<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>LOGOUT</title>
<% session.invalidate(); %>  
<script>
	alert("logout");
	document.location.href = "loginForm";
</script>
</head>

<body>
</body>
</html>
