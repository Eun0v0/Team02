<%@page import="com.my.myrooms.searchlog.guScoreModel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<% ArrayList<guScoreModel> guScoreList = (ArrayList<guScoreModel>)request.getRequestDispatcher("guScoreList"); %>
	
	<c:forEach items = "${guScoreList}" var="guScoreList">
		${guScoreList.guCode}<br>
		${guScoreList.score}<br>
	</c:forEach>

</body>
</html>