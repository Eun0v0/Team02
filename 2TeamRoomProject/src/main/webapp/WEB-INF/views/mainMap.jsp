<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5bcdac877b8e9d5df65dcdcba3c9c1e4"></script>

<meta charset="utf-8">
<title>집집집</title>

<script>
	var positions = [];//전체 정보

	function recvJson(data) {
	    //console.log(data)
	    $.each(data, (i, v) => {
	        var position = { title: '', latlng: new kakao.maps.LatLng(0, 0) } //정보 하나씩
	        position.latlng = new kakao.maps.LatLng(v.latitude, v.longitude)
	        positions.push(position)
	    })
	    makeMap() 
	}

	function init() {
	    $.getJSON("showWSafeZone", recvJson)
	}

	function makeMap() {
        mapContainer = document.getElementById("map")    // 지도를 표시할 DIV
        mapOption = {
            center: new kakao.maps.LatLng(37.5092956, 127.0554639)    // 지도의 중심좌표
            , level: 8    // 지도의 확대레벨
        };

        // 지도를 생성
        map = new kakao.maps.Map(mapContainer, mapOption);

        for (var i = 0; i < positions.length; i++) {
         // 지도에 표시할 원을 생성합니다
			var circle = new kakao.maps.Circle({
				center : positions[i].latlng, // 원의 중심좌표 입니다 
				radius : 200, // 미터 단위의 원의 반지름입니다 
				strokeWeight : 1, // 선의 두께입니다 
				strokeColor : '#FF6C6C', // 선의 색깔입니다
				strokeOpacity : 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
				strokeStyle : 'dash', // 선의 스타일 입니다
				fillColor : '#FF6C6C', // 채우기 색깔입니다
				fillOpacity : 0.7 // 채우기 불투명도 입니다   
			});
			// 지도에 원을 표시합니다 
			circle.setMap(map);
        }
    }
	</script>
</head>

<body onload="init()">
	<form>
		<label for="favors">옵션 선택 : </label> <br>
		 <input type="radio" name="favor" value="air">공기<br>
		  <input type="radio" name="favor" value="noise">소음 <br> <input type="radio"
			name="favor" value="criminal">범죄<br> <input type="radio"
			name="favor" value="foreigner">외국인<br> <input
			type="radio" name="favor" value="safezone">여성귀가안심존<br> <input
			type="radio" name="favor" value="traffic">교통사고 다발구역 <br>
		<input type="submit" value="확인">
	</form>

	<div id="map" style="width: 100%; height: 700px;"></div>
</body>
</html>