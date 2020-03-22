<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="saveLog" target="myi">
		<fieldset>
			<legend>관심사</legend>
			<input type="checkbox" name="searchKey" value="noise">소음공해<br> 
			<input type="checkbox" name="searchKey" value="fineDust">대기오염<br> 
			<input type="checkbox" name="searchKey" value="crime">범죄/치안<br>
			<input type="checkbox" name="searchKey" value="foreigner">외국인거주현황<br> 
			<input type="checkbox" name="searchKey" value="wSafeZone">여성안심존<br> 
			<input type="checkbox" name="searchKey" value="traffic">교통사고<br>
		</fieldset>
		<button>전송</button>
	</form>
	<iframe name="myi" width="500" height="500" frameborder="0"></iframe>
</body>
</html>