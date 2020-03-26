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
<link href="resources/NiceAdmin/css/bootstrap-theme.css?2"
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

					<!-- task notificatoin start -->
					<li id="task_notificatoin_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="icon-task-l"></i> <span class="badge bg-important">6</span>
					</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-blue"></div>
							<li>
								<p class="blue">You have 6 pending letter</p>
							</li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Design PSD</div>
										<div class="percent">90%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="90" aria-valuemin="0"
											aria-valuemax="100" style="width: 90%">
											<span class="sr-only">90% Complete (success)</span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Project 1</div>
										<div class="percent">30%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-warning"
											role="progressbar" aria-valuenow="30" aria-valuemin="0"
											aria-valuemax="100" style="width: 30%">
											<span class="sr-only">30% Complete (warning)</span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Digital Marketing</div>
										<div class="percent">80%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-info" role="progressbar"
											aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
											style="width: 80%">
											<span class="sr-only">80% Complete</span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Logo Designing</div>
										<div class="percent">78%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="78" aria-valuemin="0"
											aria-valuemax="100" style="width: 78%">
											<span class="sr-only">78% Complete (danger)</span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Mobile App</div>
										<div class="percent">50%</div>
									</div>
									<div class="progress progress-striped active">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
											style="width: 50%">
											<span class="sr-only">50% Complete</span>
										</div>
									</div>

							</a></li>
							<li class="external"><a href="#">See All Tasks</a></li>
						</ul></li>
					<!-- task notificatoin end -->
					<!-- inbox notificatoin start-->
					<li id="mail_notificatoin_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="icon-envelope-l"></i> <span class="badge bg-important">5</span>
					</a>
						<ul class="dropdown-menu extended inbox">
							<div class="notify-arrow notify-arrow-blue"></div>
							<li>
								<p class="blue">You have 5 new messages</p>
							</li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="resources/NiceAdmin/img/avatar-mini.jpg"></span>
									<span class="subject"> <span class="from">Greg
											Martin</span> <span class="time">1 min</span>
								</span> <span class="message"> I really like this admin panel. </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./resources/NiceAdmin/img/avatar-mini2.jpg"></span>
									<span class="subject"> <span class="from">Bob
											Mckenzie</span> <span class="time">5 mins</span>
								</span> <span class="message"> Hi, What is next project plan? </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./resources/NiceAdmin/img/avatar-mini3.jpg"></span>
									<span class="subject"> <span class="from">Phillip
											Park</span> <span class="time">2 hrs</span>
								</span> <span class="message"> I am like to buy this Admin
										Template. </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./resources/NiceAdmin/img/avatar-mini4.jpg"></span>
									<span class="subject"> <span class="from">Ray
											Munoz</span> <span class="time">1 day</span>
								</span> <span class="message"> Icon fonts are great. </span>
							</a></li>
							<li><a href="#">See all messages</a></li>
						</ul></li>
					<!-- inbox notificatoin end -->
					<!-- alert notification start-->
					<li id="alert_notificatoin_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="icon-bell-l"></i> <span class="badge bg-important">7</span>
					</a>
						<ul class="dropdown-menu extended notification">
							<div class="notify-arrow notify-arrow-blue"></div>
							<li>
								<p class="blue">You have 4 new notifications</p>
							</li>
							<li><a href="#"> <span class="label label-primary"><i
										class="icon_profile"></i></span> Friend Request <span
									class="small italic pull-right">5 mins</span>
							</a></li>
							<li><a href="#"> <span class="label label-warning"><i
										class="icon_pin"></i></span> John location. <span
									class="small italic pull-right">50 mins</span>
							</a></li>
							<li><a href="#"> <span class="label label-danger"><i
										class="icon_book_alt"></i></span> Project 3 Completed. <span
									class="small italic pull-right">1 hr</span>
							</a></li>
							<li><a href="#"> <span class="label label-success"><i
										class="icon_like"></i></span> Mick appreciated your work. <span
									class="small italic pull-right"> Today</span>
							</a></li>
							<li><a href="#">See all notifications</a></li>
						</ul></li>
					<!-- alert notification end-->
					<!-- user login dropdown start-->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <span class="profile-ava">
								<img alt="" src="resources/NiceAdmin/img/avatar1_small.jpg">
						</span> <span class="username">${id}</span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<div class="log-arrow-up"></div>
							<li class="eborder-top"><a href="#"><i
									class="icon_profile"></i> My Profile</a></li>
							<li><a href="#"><i class="icon_mail_alt"></i> My Inbox</a></li>
							<li><a href="#"><i class="icon_clock_alt"></i> Timeline</a>
							</li>
							<li><a href="#"><i class="icon_chat_alt"></i> Chats</a></li>
							<li><a href="login"><i class="icon_key_alt"></i> Log Out</a></li>
							<li><a href="documentation.html"><i class="icon_key_alt"></i>
									Documentation</a></li>
							<li><a href="documentation.html"><i class="icon_key_alt"></i>
									Documentation</a></li>
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
							<span>Home</span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_document_alt"></i> <span>Forms</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="form_component.html">Form Elements</a></li>
							<li><a class="" href="form_validation.html">Form
									Validation</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_desktop"></i> <span>UI Fitures</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="general.html">Elements</a></li>
							<li><a class="" href="buttons.html">Buttons</a></li>
							<li><a class="" href="grids.html">Grids</a></li>
						</ul></li>

					<li><a class="" href="chart-chartjs.html"> <i
							class="icon_piechart"></i> <span>Charts</span>

					</a></li>

					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_table"></i> <span>Tables</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="insuranceManage">Basic Table</a></li>
						</ul></li>

					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_documents_alt"></i> <span>Pages</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="profile.html">Profile</a></li>
							<li><a class="" href="login.html"><span>Login
										Page</span></a></li>
							<li><a class="" href="contact.html"><span>Contact
										Page</span></a></li>
							<li><a class="" href="blank.html">Blank Page</a></li>
							<li><a class="" href="404.html">404 Error</a></li>
						</ul></li>

				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<!--overview start-->
				<div class="row" style="height: 80px">
					<div class="col-lg-12">
						<h2 class="page-header">
						</h2>
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a href="mainMap">Home</a></li>
							<li><i class="fa fa-laptop"></i>Dashboard</li>
						</ol>
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
										class="fa fa-rotate-right"></i></a> <a href="mainMap"
										class="btn-minimize"><i class="fa fa-chevron-up"></i></a> <a
										href="mainMap" class="btn-close"><i class="fa fa-times"></i></a>
								</div>
							</div>
							<div class="panel-body-map">
								<div id="map" style="width: 100%; height: 650px;"></div>
							</div>

						</div>
					</div>
					<div class="col-md-3">
						<br>
						<br>
							<label for="favors">관심사 : </label> <br> <input
								type="checkbox" name="searchKey" value="noise">소음공해<br>
							<input type="checkbox" name="searchKey" value="finedust">대기오염<br>
							<input type="checkbox" name="searchKey" value="crime">범죄/치안<br>
							<input type="checkbox" name="searchKey" value="foreigner">외국인거주현황<br>
							<input type="checkbox" name="searchKey" value="wsafezone">여성안심존<br>
							<input type="checkbox" name="searchKey" value="traffic">교통사고<br>
							<button onclick="recommend()">Search</button>

					</div>
					<br><br>
					<div class="row">
						<table id="insAD">
						
						</table>
					</div>
				</div>
				<!-- project team & activity end -->
			</section>
			<div class="text-right">
				<div class="credits">
					<!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
					Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
				</div>
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
