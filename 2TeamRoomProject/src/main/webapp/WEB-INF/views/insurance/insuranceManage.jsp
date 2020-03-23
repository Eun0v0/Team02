<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<script>
		$(function() {
			console.log("확인")
			$.getJSON("selectInsurance", recvJson)
	      });
		
		function recvJson(data){
			console.log(data)
			$.each(data, (i, v) => {$("#insTab > tbody").append("<tr><td>" + v.insuranceIndex + "</td><td>" 
					+ v.insuranceName + "</td><td>" + v.category + 
					"</td><td>" + v.ages + "</td><td>" + v.sex + "</td><td>"
					+ v.imgName + "</td><td> <button> 수정 </button> </td></tr>")
			})
		}
		
		function modify(){
			$("#insTab > tbody").click()
		}
		
	</script>
	<table id = "insTab">
		<thead>
			<tr>
				<th>보험 구분</th>
				<th>이름</th>
				<th>카테고리</th>
				<th>추천 연령대</th>
				<th>추천 성별</th>
				<th>이미지 주소</th>
				<th>수정하기</th>
			</tr>
		</thead>
		<tbody>
		
		</tbody>
	</table>
</body>
</html>