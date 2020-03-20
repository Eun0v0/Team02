<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	<br>
	<button type="button" id="btnForeignerView">foreigner</button>
	<br>
	<button type="button" id="btnFineDustView">finedust</button>
	<br>
	<button type="button" id="btnTrafficView">traffic</button>
	<br>
	<button type="button" id="btnNoiseView">noise</button>
	<br>
	<button type="button" id="btnCrimeView">crime</button>
	<br>
	<button type="button" id="btnWSafeZoneView">wsafezone</button>
	<br>
	<button type="button" id="btnHousePriceView">houseprice</button>
	<br>
	<button type="button" id="btnCustomerView">customer</button>
	<br>
	<button type="button" id="btnCusOptionView">c_option</button>
	<br>
	<button type="button" id="btnSearchLogView">searchlog</button>
	<br>
	<button type="button" id="btnLocCodeView">loccode</button>
	<br>

	<script>
		//서울시민수
		function printPSeoul(data) {
			console.log(data)
		} 
		$('#btnPSeoulView').on('click', function() {
			$.getJSON("testPSeoulView", printPSeoul)
		});
		
		//외국인
		function printForeigner(data) {
		/* 	$.each(data, function (i, v) {
				console.log(data)
			})} */
			console.log(data)
			} 
		$('#btnForeignerView').on('click', function() {
			$.getJSON("testForeignerView", printForeigner)
		});
		
		//대기오염
		function printFineDust(data) {
			console.log(data)
		} 
		$('#btnFineDustView').on('click', function() {
			$.getJSON("testFineDustView", printFineDust)
		});
		
		//교통사고
		function printTraffic(data) {
			console.log(data)
		} 
		$('#btnTrafficView').on('click', function() {
			$.getJSON("testTrafficView", printTraffic)
		});
		
		//소음공해
		function printNoise(data) {
			console.log(data)
		} 
		$('#btnNoiseView').on('click', function() {
			$.getJSON("testNoiseView", printNoise)
		});
		
		//범죄,치안
		function printCrime(data) {
			console.log(data)
		} 
		$('#btnCrimeView').on('click', function() {
			$.getJSON("testCrimeView", printCrime)
		});
		
		//여성안전지킴이존
		function printWSafeZone(data) {
			console.log(data)
		} 
		$('#btnWSafeZoneView').on('click', function() {
			$.getJSON("testWSafeZoneView", printWSafeZone)
		});
		
		//부동산 실거래가
		function printHousePrice(data) {
			console.log(data)
		} 
		$('#btnHousePriceView').on('click', function() {
			$.getJSON("testHousePriceView", printHousePrice)
		});
		
		//회원정보
		function printCustomer(data) {
			console.log(data)
		} 
		$('#btnCustomerView').on('click', function() {
			$.getJSON("testCustomerView", printCustomer)
		});
		
		//회원 선호항목
		function printCusOption(data) {
			console.log(data)
		} 
		$('#btnCusOptionView').on('click', function() {
			$.getJSON("testCusOptionView", printCusOption)
		});
		
		//검색기록
		function printSearchLog(data) {
			console.log(data)
		} 
		$('#btnSearchLogView').on('click', function() {
			$.getJSON("testSearchLogView", printSearchLog)
		});
		
		//지역구행정코드
		function printLocCode(data) {
			console.log(data)
		} 
		$('#btnLocCodeView').on('click', function() {
			$.getJSON("testLocCodeView", printLocCode)
		});
	</script>
</body>
</html>