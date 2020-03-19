<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>

<body>
	<div id="mydiv">표시</div>
	<button type="button" id="btnPSeoulView">people_seoul</button>
	<script>
		/* 	function fn() {
			console.log("출력")
			$.getJSON(" ", recvJson)
		} */
		
		function printPSeoul(data) {
			$.each(data, function (i, v) {
				$("#mydiv").append(v.guCode)
		)} 
		
		$('#btnPSeoulView').on('click', function() {
			$.getJSON("testPSeoulView", printPSeoul)
		});
	</script>	
</body>
</html>