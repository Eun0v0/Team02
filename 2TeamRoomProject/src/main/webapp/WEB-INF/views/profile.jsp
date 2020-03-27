<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
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
<link rel="shortcut icon" href="img/favicon.png">

<title>profile</title>

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
<link href="resources/NiceAdmin/css/style.css?2" rel="stylesheet">
<link href="resources/NiceAdmin/css/style-responsive.css"
	rel="stylesheet" />
<link href="resources/NiceAdmin/css/xcharts.min.css" rel=" stylesheet">
<link href="resources/NiceAdmin/css/jquery-ui-1.10.4.min.css"
	rel="stylesheet">
<!-- ================


</head>

<body>
	<!-- container section start -->
<section id="container" class="">
	<!--header start-->

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
							<img alt="" src="resources/NiceAdmin/img/avatar1_small2.jpg">
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
				</a> <li><a class="" href="chart-chartjs.html"> <i
						class="icon_piechart"></i> <span><b>Charts</b></span>
				</a></li><%
					String memberId = (String) session.getAttribute("id");
					if (memberId.equals("manager")) {
				%>
				<li class="sub-menu"><a href="javascript:;" class=""> <i
						class="icon_table"></i> <span><b>Manager Tab </b></span> <span
						class="menu-arrow arrow_carrot-right"></span>
				</a>

					<ul class="sub">
						<li><a class="" href="insuranceManage"><b>Insurance
									Table</b></a></li>
					</ul></li>
				<%
					}
				%>
			</ul>
			<!-- sidebar menu end-->
		</div>
	</aside>
	<!--sidebar end-->

	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
				<div class="col-lg-12">
					

				</div>
			</div>
			<!-- page start-->
			<div class="row">
				<div class="col-lg-6">
				<b>
					<div class="recent">
						<h3>My Info</h3>
					</div>
					<form action="" method="post" role="form" class="contactForm">
						<div class="form-group">
							ID
							<h2 class="form-control">${id}</h2>
							NAME
							<h2 class="form-control">${name}</h2>
							GENDER
							<h2 class="form-control">${sex}</h2>
							AGE
							<h2 class="form-control">${age}</h2>
							ADDRESS
							<h2 class="form-control">${gu}/${dong }</h2>
							JOB
							<h2 class="form-control">${job}</h2>
						</div>

					</form>
				</div>
				</b>
				<div class="col-lg-6">
					<div class="recent">
						<h3>Get in touch with us</h3>
					</div>
					<div class="">
						<p>Nam liber tempor cum soluta nobis eleifend option congue
							nihil imperdiet doming id quod mazim placerat facer possim assum.
							Typi non habent claritatem insitam; est usus legentis in iis qui
							facit eorum.</p>
						<p>Nam liber tempor cum soluta nobis eleifend option congue
							nihil imperdiet doming id quod mazim placerat facer possim assum.
							Typi non habent claritatem insitam; est usus legentis in iis qui
							facit eorum.</p>

						<h4>Address:</h4>
						Sansung St 96-23, Gangnam-gu, Seoul<br>
						<h4>Telephone:</h4>
						02-2136-6000 </br>
						<h4>Fax:</h4>
						02-2136-6007
					</div>
				</div>
			</div>
			<!-- page end-->
		</section>
	</section>
	<!--main content end-->
	<div class="text-right">
		<div class="credits"></div>
	</div>
</section>
<!-- container section end -->
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
	</body>

	</html>
