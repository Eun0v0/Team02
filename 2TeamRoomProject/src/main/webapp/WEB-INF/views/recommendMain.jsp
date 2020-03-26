<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="resources/NiceAdmin/img/favicon.png">

<title>Creative - Bootstrap Admin Template</title>

<!-- Bootstrap CSS -->
<link href="resources/NiceAdmin/css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="resources/NiceAdmin/css/bootstrap-theme.css?3"
	rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="resources/NiceAdmin/css/elegant-icons-style.css"
	rel="stylesheet" />
<link href="resources/NiceAdmin/css/font-awesome.min.css"
	rel="stylesheet" />
<!-- full calendar css-->
<link
	href="resources/NiceAdmin/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css"
	rel="stylesheet" />
<link
	href="resources/NiceAdmin/assets/fullcalendar/fullcalendar/fullcalendar.css"
	rel="stylesheet" />
<!-- easy pie chart-->
<link
	href="resources/NiceAdmin/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
	rel="stylesheet" type="text/css" media="screen" />
<!-- owl carousel -->
<link rel="stylesheet" href="resources/NiceAdmin/css/owl.carousel.css"
	type="text/css">
<link href="resources/NiceAdmin/css/jquery-jvectormap-1.2.2.css"
	rel="stylesheet">
<!-- Custom styles -->
<link rel="stylesheet" href="resources/NiceAdmin/css/fullcalendar.css">
<link href="resources/NiceAdmin/css/widgets.css" rel="stylesheet">
<link href="resources/NiceAdmin/css/style.css?3" rel="stylesheet">
<link href="resources/NiceAdmin/css/style-responsive.css"
	rel="stylesheet" />
<link href="resources/NiceAdmin/css/xcharts.min.css" rel=" stylesheet">
<link href="resources/NiceAdmin/css/jquery-ui-1.10.4.min.css"
	rel="stylesheet">
<!-- =======================================================
    Theme Name: NiceAdmin
    Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
<style>
#favor {
	font-size: 18px;
	color: #688a7e;
}

.customoverlay {
	position: relative;
	bottom: 85px;
	border-radius: 6px;
	border: 1px solid #ccc;
	border-bottom: 2px solid #ddd;
	float: left;
}

.customoverlay:nth-of-type(n) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.customoverlay a {
	display: block;
	text-decoration: none;
	color: #000;
	text-align: center;
	border-radius: 6px;
	font-size: 14px;
	font-weight: bold;
	overflow: hidden;
	background: #d95050;
	background: #d95050 no-repeat right 14px center;
}

.customoverlay .title {
	display: block;
	text-align: center;
	background: white;
	margin-right: 35px;
	padding: 10px 15px;
	font-size: 14px;
	font-weight: bold;
}

.customoverlay:after {
	content: '';
	position: absolute;
	margin-left: -12px;
	left: 50%;
	bottom: -12px;
	width: 22px;
	height: 12px;
	background:
		url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}
</style>


</head>

<body>
	<!-- container section start -->
	<section id="container" class="">
		<header class="header green2-bg">
			<div class="toggle-nav">
				<div class="icon-reorder tooltips"
					data-original-title="Toggle Navigation" data-placement="bottom">
					<i class="icon_menu"></i>
				</div>
			</div>

			<!--logo start-->
			<a href="mainMap" class="logo" align="center"><span class="lite"><img
					src="resources/NiceAdmin/img/자취핫플로고.png" height=100px></span></a>
			<!--logo end-->

			<div class="top-nav notification-row">
				<!-- notificatoin dropdown start-->
				<ul class="nav pull-right top-menu">

					
					<!-- user login dropdown start-->
					
					<li class="dropdown" id="btn"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <span class="profile-ava">
								<img alt="" src="resources/NiceAdmin/img/avatar1_small2.jpg" >
						</span> <span class="username">Welcome, ${id}!</span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<div class="log-arrow-up"></div>
							<li class="eborder-top"><a href="profile"><i
									class="icon_profile"></i> My Profile</a></li>
							<li><a href="logout"><i class="icon_key_alt"></i> LogOut</a></li>
						</ul></li>
					
						
					<!-- user login dropdown end -->
				</ul>
				<!-- notificatoin dropdown end-->
			</div>
		</header>
		<!--header end-->

		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu">
					<li><a class="" href="mainMap"> <i class="icon_genius"></i>
							<span><b>Home</b></span>
					</a></li>
					<li class="sub-menu"><a href="recommendMain" class=""> <i
							class="icon_document_alt"></i> <span><b>Recommend</b></span>
					</a>

					<li><a class="" href="chart-chartjs.html"> <i
							class="icon_piechart"></i> <span><b>Charts</b></span>
					</a></li>

					<%if("${id}".equals("manager")){ %>
						<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_table"></i> <span><b>Manager Tab </b></span> 
							<span class="menu-arrow arrow_carrot-right"></span>
						</a>
					
						<ul class="sub">
							<li><a class="" href="insuranceManage"><b>Insurance Table</b></a></li>
						</ul></li>
					<% } %>
				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<!--overview start-->
				<div class="row" style="height: 10px">
					<div class="col-lg-12">
						<b>
						<ol class="breadcrumb">
							<li><i class="fa fa-laptop"></i><a href="recommendMain">Recommend</a></li>
						</ol>
						</b>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-9 col-md-12">

						<div class="panel panel-default">
							<div class="panel-heading">
								<h2>
									<i class="fa fa-map-marker red"></i> <strong>항목별 지도보기
										( 상위 30%: 초록 / 40~70% : 노랑 / 하위 30%: 빨강 )</strong>
								</h2>
								<div class="panel-actions">
									<a href="mainMap" class="btn-setting"><i
										class="fa fa-rotate-right"></i></a> <a href="recommendMain"
										class="btn-minimize"><i class="fa fa-chevron-up"></i></a> <a
										href="mainMap" class="btn-close"><i class="fa fa-times"></i></a>
								</div>
							</div>
							<div class="panel-body-map">
								<div id="map" style="width: 100%; height: 650px;"></div>
							</div>

						</div>
					</div>
					<div class="col-md-3" id="favor">
						<br>
						<br>
						<ol>
							<label for="favors"><img
								src="resources/NiceAdmin/img/icons/search-line-icon2.png"
								width="25px" height="25px"><b>관심사</b></label>
						</ol>
						
						<ol>
							<input type="checkbox" name="searchKey" value="noise"><b>소음공해
						</ol>
						<ol>
							<input type="checkbox" name="searchKey" value="finedust">대기오염
						</ol>
						<ol>
							<input type="checkbox" name="searchKey" value="crime">범죄/치안
						</ol>
						<ol>
							<input type="checkbox" name="searchKey" value="foreigner">외국인거주현황
						</ol>
						<ol>
							<input type="checkbox" name="searchKey" value="wsafezone">여성안심존
						</ol>
						<ol>
							<input type="checkbox" name="searchKey" value="traffic">교통사고
						</ol>
						<ol>
							<a class="btn btn-success btn-lg" onclick = "recommend()"> <span class="icon_pin_alt">추천</span></a></b>
						</ol>

					</div>
					<br><br>
					<div class="row">
						<table id="insAD">
						
						</table>
					</div>
				</div>
				<!-- project team & activity end -->
			</section>
			</div>
		</section>
		<!--main content end-->
	</section>
	<!-- container section start -->

	<!-- javascripts -->
	<script src="resources/NiceAdmin/js/jquery.js"></script>
	<script src="resources/NiceAdmin/js/jquery-ui-1.10.4.min.js"></script>
	<script src="resources/NiceAdmin/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript"
		src="resources/NiceAdmin/js/jquery-ui-1.9.2.custom.min.js"></script>
	<!-- bootstrap -->
	<script src="resources/NiceAdmin/js/bootstrap.min.js"></script>
	<!-- nice scroll -->
	<script src="resources/NiceAdmin/js/jquery.scrollTo.min.js"></script>
	<script src="resources/NiceAdmin/js/jquery.nicescroll.js"
		type="text/javascript"></script>
	<!-- charts scripts -->
	<script src="resources/NiceAdmin/assets/jquery-knob/js/jquery.knob.js"></script>
	<script src="resources/NiceAdmin/js/jquery.sparkline.js"
		type="text/javascript"></script>
	<script
		src="resources/NiceAdmin/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
	<script src="resources/NiceAdmin/js/owl.carousel.js"></script>
	<!-- jQuery full calendar -->
	<
	<script src="resources/NiceAdmin/js/fullcalendar.min.js"></script>
	<!-- Full Google Calendar - Calendar -->
	<script
		src="resources/NiceAdmin/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
	<!--script for this page only-->
	<script src="resources/NiceAdmin/js/calendar-custom.js"></script>
	<script src="resources/NiceAdmin/js/jquery.rateit.min.js"></script>
	<!-- custom select -->
	<script src="resources/NiceAdmin/js/jquery.customSelect.min.js"></script>
	<script src="resources/NiceAdmin/assets/chart-master/Chart.js"></script>

	<!--custome script for all page-->
	<script src="resources/NiceAdmin/js/scripts.js"></script>
	<!-- custom script for this page-->
	<script src="resources/NiceAdmin/js/sparkline-chart.js"></script>
	<script src="resources/NiceAdmin/js/easy-pie-chart.js"></script>
	<script src="resources/NiceAdmin/js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="resources/NiceAdmin/js/jquery-jvectormap-world-mill-en.js"></script>
	<script src="resources/NiceAdmin/js/xcharts.min.js"></script>
	<script src="resources/NiceAdmin/js/jquery.autosize.min.js"></script>
	<script src="resources/NiceAdmin/js/jquery.placeholder.min.js"></script>
	<script src="resources/NiceAdmin/js/gdp-data.js"></script>
	<script src="resources/NiceAdmin/js/morris.min.js"></script>
	<script src="resources/NiceAdmin/js/sparklines.js"></script>
	<script src="resources/NiceAdmin/js/charts.js"></script>
	<script src="resources/NiceAdmin/js/jquery.slimscroll.min.js"></script>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5bcdac877b8e9d5df65dcdcba3c9c1e4"></script>

	<script>
      //knob
      $(function() {
        $(".knob").knob({
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      $(function() {
        $('select.styled').customSelect();
      });

      positions = [];//전체 정보
      selectOption = ""; //선택된 옵션 정보
	  map;
      circles= []
      cnt = 0;
      
      $(function(){
    	  makeMap();
      })
      
      $(function(){
    	  var age = "${age}"
          var sex = "${sex}"
            	  
          $.getJSON("selectUserInsurance?age="+age+"&sex="+sex, recvInsJson)  
            
      })
      
      //보험 상품 추천 부분
      function recvInsJson(data){
			console.log(data)
			var imgArr = new Array();		
			
			$.each(data, (i, v) => {
				imgArr.push(v.imgName);	
			})
			
			var randomInt = Math.floor(Math.random()*imgArr.length);
			if(randomInt == imgArr.length-1)
				randomInt-=1;
			$("#insAD").append("<tr><td><a href='https://www.idbins.com/mall/MallIntro.jsp'><img src='resources/NiceAdmin/img/insImg/"+imgArr[randomInt]+"' width='350px' height='200px'></a></td></tr>")
			$("#insAD").append("<tr><td><a href='https://www.idbins.com/mall/MallIntro.jsp'><img src='resources/NiceAdmin/img/insImg/"+imgArr[randomInt+1]+"' width='350px' height='200px'></a></td></tr>")	
		}
      
      //지도에 추천지역 뿌리기
      function recommend(){
    	  //var selectOption = new Array();
    	 
    	 var temp = "";
    	 var userID="${id}";
    	
    	 $("input:checkbox[name=searchKey]:checked").each(function(){
    		 temp += "&searchKey="+$(this).val();
    	 });
    	 
    	 //$.getJSON("recommendResult?id=1"+ temp , recvOptionJson)
    	 
    	 $.getJSON("insRecommendResult?id="+userID + temp , recvOptionJson)
    	 customOverlay.setMap(null);
      }
      
      function recvOptionJson(data){
    	  positions = []
    	    $.each(data, (i, v) => {
    	        var position = { score: 0, count: 0, latlng: new kakao.maps.LatLng(0, 0) } //정보 하나씩
    	        position.latlng = new kakao.maps.LatLng(v.latitude, v.longitude)
    	        
    	        if(v.score == null)
    	        	position.score = 0;
    	        else
    	        	position.score = v.score;
    	        console.log(v.score);
    	        position.count = cnt++;
    	        positions.push(position)
    	    })
    	    
    	    for(var j=0; j<circles.length; j++){
    	    	circles[j].setMap(null);
    	    }
    	  
    	    circles=[];
    	    cnt = 0;
    	    for (var i = 0, len = positions.length; i < len; i++) {
        	  drawCircles(positions[i]);
          }
      }
      
      function makeMap() {
    	  map = null;
    	  var mapContainer = null;
          mapContainer = document.getElementById("map")    // 지도를 표시할 DIV
          mapOption = {
              center: new kakao.maps.LatLng(37.524856, 126.994017)    // 지도의 중심좌표
              , level: 8    // 지도의 확대레벨
          };
		  // 지도를 생성
          map = new kakao.maps.Map(mapContainer, mapOption),
          customOverlay = new kakao.maps.CustomOverlay({}),
          infowindow = new kakao.maps.InfoWindow({removable: true});
          mapContainer.onmousewheel =  function(e) {
              e.stopPropagation();
            }
		  
      }
      
      function drawCircles(positions){
    		// 지도에 표시할 원을 생성합니다
		    var circle = new kakao.maps.Circle({
			center : positions.latlng, // 원의 중심좌표 입니다 
			radius : 1800, // 미터 단위의 원의 반지름입니다 
			strokeWeight : 0, // 선의 두께입니다 
			fillColor : '#00854A', // 채우기 색깔입니다
			fillOpacity : 0.6 // 채우기 불투명도 입니다   
			 });
        
	      	 if(1<=positions.count&& positions.count<=8)
	      	 	circle.setOptions({fillColor: '#65D35D'}); 
	      	 else if (9<=positions.count && positions.count <=16)
	      		 circle.setOptions({fillColor: '#FFFF8F'}); 
	      	 else //좋음
	      		 circle.setOptions({fillColor: '#CD3B3B'});
	       
       
	       // 다각형에 mouseover 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 변경합니다 
	       // 지역명을 표시하는 커스텀오버레이를 지도위에 표시합니다
	       kakao.maps.event.addListener(circle, 'mouseover', function(mouseEvent) {
	    	   circle.setOptions({fillColor: '#F5FFED'});
	       });
	
	       // 다각형에 mouseout 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 원래색으로 변경합니다
	       // 커스텀 오버레이를 지도에서 제거합니다 
	       kakao.maps.event.addListener(circle, 'mouseout', function() {
	    	   console.log("마우스 아웃!!!")
	    	   console.log(positions.cnt)
	    	   if(1<=positions.count&& positions.count<=8)
		      	 	circle.setOptions({fillColor: '#65D35D'}); 
		      	 else if (9<=positions.count && positions.count <=16)
		      		 circle.setOptions({fillColor: '#FFFF8F'}); 
		      	 else //좋음
		      		 circle.setOptions({fillColor: '#CD3B3B'});
	       }); 

	       // 다각형에 click 이벤트를 등록하고 이벤트가 발생하면 다각형의 이름과 면적을 인포윈도우에 표시합니다 
	       kakao.maps.event.addListener(circle, 'click', function(mouseEvent) {
	           
	    	   console.log("click")
	    	   
	    	   optionName = "추천 지수"
	    		   
	    		   
	    	   console.log(optionName)
	    	   scoreText = positions.score
	       	   
	    	   var content = '<div class="customoverlay"><a><span class="title">' + optionName +': ' + scoreText + '</span></a></div>';
	
	    	   customOverlay.setContent(content);
	           customOverlay.setPosition(mouseEvent.latLng); 
	           customOverlay.setMap(map);
	           
	       });
	
	        circles.push(circle)
			// 지도에 원을 표시합니다 
			circle.setMap(map);
			
      }
    </script>

</body>

</html>
