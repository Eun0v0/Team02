<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>집집집</title>
</head>
<body>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5bcdac877b8e9d5df65dcdcba3c9c1e4"></script>
	<form>
		<label for="favors">옵션 선택 : </label> <br>
			<input type="radio" name="favor" value="air">공기<br>
			<input type="radio" name="favor" value="noise">소음 <br>
			<input type="radio" name="favor" value="criminal">범죄<br>
			<input type="radio" name="favor" value="foreigner">외국인<br>
			<input type="radio" name="favor" value="safezone">여성귀가안심존<br>
			<input type="radio" name="favor" value="traffic">교통사고 다발구역 <br>
			<input type="submit" value="확인">
	</form>

	<div id="map" style="width: 100%; height: 700px;"></div>
	<script>
		function getLocation(position) {
			latitud = position.coords.latitude;
			longitude = position.coords.longitude;

			mapContainer = document.getElementById("map") // 지도를 표시할 DIV
			mapOption = {
				center : new kakao.maps.LatLng(latitud, longitude) // 지도의 중심좌표
				,
				level : 8
			// 지도의 확대레벨
			};

			// 지도를 생성
			map = new kakao.maps.Map(mapContainer, mapOption);

			// 지도에 표시할 원을 생성합니다
			var circle = new kakao.maps.Circle({
				center : new kakao.maps.LatLng(latitud, longitude), // 원의 중심좌표 입니다 
				radius : 1500, // 미터 단위의 원의 반지름입니다 
				strokeWeight : 1, // 선의 두께입니다 
				strokeColor : '#75B8FA', // 선의 색깔입니다
				strokeOpacity : 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
				strokeStyle : 'dashed', // 선의 스타일 입니다
				fillColor : '#CFE7FF', // 채우기 색깔입니다
				fillOpacity : 0.7
			// 채우기 불투명도 입니다   
			});
			// 지도에 원을 표시합니다 
			circle.setMap(map);
		}

		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(getLocation, function(
					error) {
				consol.log(error.message);
			});
		} else {
			consol.log("Geolocation을 지원하지 않는 브라우저 입니다.");
		}
	</script>

</body>
</html>