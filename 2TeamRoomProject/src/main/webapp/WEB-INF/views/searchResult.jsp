<%@page import="com.my.myrooms.searchlog.GuScoreModel"%>
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
<%-- 	<%
		ArrayList<GuScoreModel> guScoreList = (ArrayList<GuScoreModel>)request.getAttribute("guScoreList");
	%>
	
	<h1>추천 자치구</h1>
	<table>
		<tr>
		<td>자치구</td>
		<td>맞춤점수</td>
		<td>위도</td>
		<td>경도</td>
		</tr>
	
	<%
			if(guScoreList == null) {
	%>
			<tr>
				<td>Nothing</td>
				<td>Nothing</td>
				<td>Nothing</td>
				<td>Nothing</td>
			</tr>
		<% 	
			} 
			else {
				for (GuScoreModel m : guScoreList) {
		%>
				<tr>
					<td><%=m.getGu() %></td>
					<td><%=m.getScore() %></td>
					<td><%=m.getLatitude() %></td>
					<td><%=m.getLongitude() %></td>
				</tr>
	 <% 		
	 			}
			}
	 %>	
	 
	</table>
 --%>
 
 ${guScoreList}
</body>
</html>