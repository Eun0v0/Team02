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
<link href="resources/NiceAdmin/css/bootstrap-theme.css"
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
<link href="resources/NiceAdmin/css/style.css" rel="stylesheet">
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
	background: #d95050
		no-repeat right 14px center;
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


		<header class="header dark-bg">
			<div class="toggle-nav">
				<div class="icon-reorder tooltips"
					data-original-title="Toggle Navigation" data-placement="bottom">
					<i class="icon_menu"></i>
				</div>
			</div>

			<!--logo start-->
			<a href="index.html" class="logo">Nice <span class="lite">Admin</span></a>
			<!--logo end-->

			<div class="nav search-row" id="top_menu">
				<!--  search form start -->
				<ul class="nav top-menu">
					<li>
						<form class="navbar-form">
							<input class="form-control" placeholder="Search" type="text">
						</form>
					</li>
				</ul>
				<!--  search form end -->
			</div>

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
						</span> <span class="username">Jenifer Smith</span> <b class="caret"></b>
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
					<li class="active"><a class="" href="mainMap"> <i
							class="icon_house_alt"></i> <spa> Home </span></a></li>
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
					<li><a class="" href="widgets.html"> <i
							class="icon_genius"></i> <span>Widgets</span>
					</a></li>
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
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">
							<i class="fa fa-laptop"></i> Dashboard
						</h3>
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a href="mainMap">Home</a></li>
							<li><i class="fa fa-laptop"></i>Dashboard</li>
						</ol>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
						<div class="info-box blue-bg">
							<i class="fa fa-cloud-download"></i>
							<div class="count">6.674</div>
							<div class="title">Download</div>
						</div>
						<!--/.info-box-->
					</div>
					<!--/.col-->

					<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
						<div class="info-box brown-bg">
							<i class="fa fa-shopping-cart"></i>
							<div class="count">7.538</div>
							<div class="title">Purchased</div>
						</div>
						<!--/.info-box-->
					</div>
					<!--/.col-->

					<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
						<div class="info-box dark-bg">
							<i class="fa fa-thumbs-o-up"></i>
							<div class="count">4.362</div>
							<div class="title">Order</div>
						</div>
						<!--/.info-box-->
					</div>
					<!--/.col-->

					<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
						<div class="info-box green-bg">
							<i class="fa fa-cubes"></i>
							<div class="count">1.426</div>
							<div class="title">Stock</div>
						</div>
						<!--/.info-box-->
					</div>
					<!--/.col-->

				</div>
				<!--/.row-->


				<div class="row">
					<div class="col-lg-9 col-md-12">

						<div class="panel panel-default">
							<div class="panel-heading">
								<h2>
									<i class="fa fa-map-marker red"></i>
									<strong>항목별 지도보기    ( 상위 30%: 좋음 / 하위 30%: 나쁨 )</strong>
								</h2>
								<div class="panel-actions">
									<a href="mainMap" class="btn-setting"><i
										class="fa fa-rotate-right"></i></a> <a href="mainMap"
										class="btn-minimize"><i class="fa fa-chevron-up"></i></a> <a
										href="mainMap" class="btn-close"><i class="fa fa-times"></i></a>
								</div>
							</div>
							<div class="panel-body-map">
								<div id="map" style="width: 100%; height: 450px;"></div>
							</div>

						</div>
					</div>
					<div class="col-md-3">
						<label for="favors">옵션 선택 : </label> <br> <input type="radio"
							name="favor" value="finedust">공기<br> <input
							type="radio" name="favor" value="noise">소음 <br> <input
							type="radio" name="favor" value="criminal">범죄<br> <input
							type="radio" name="favor" value="foreigner">외국인<br>
						<input type="radio" name="favor" value="wsafezone">여성귀가안심존<br>
						<input type="radio" name="favor" value="traffic">교통사고 다발구역


						<!-- List starts -->
						<ul class="today-datas">
							<!-- List #1 -->
							<li>
								<!-- Graph -->
								<div>
									<span id="todayspark1" class="spark"></span>
								</div> <!-- Text -->
								<div class="datas-text">11,500 visitors/day</div>
							</li>
							<li>
								<div>
									<span id="todayspark2" class="spark"></span>
								</div>
								<div class="datas-text">15,000 Pageviews</div>
							</li>
							<li>
								<div>
									<span id="todayspark3" class="spark"></span>
								</div>
								<div class="datas-text">30.55% Bounce Rate</div>
							</li>
							<li>
								<div>
									<span id="todayspark4" class="spark"></span>
								</div>
								<div class="datas-text">$16,00 Revenue/Day</div>
							</li>
							<li>
								<div>
									<span id="todayspark5" class="spark"></span>
								</div>
								<div class="datas-text">12,000000 visitors every Month</div>
							</li>
						</ul>
					</div>


				</div>


				<!-- Today status end -->



				<div class="row">

					<div class="col-lg-9 col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2>
									<i class="fa fa-flag-o red"></i><strong>Registered
										Users</strong>
								</h2>
								<div class="panel-actions">
									<a href="index.html#" class="btn-setting"><i
										class="fa fa-rotate-right"></i></a> <a href="index.html#"
										class="btn-minimize"><i class="fa fa-chevron-up"></i></a> <a
										href="index.html#" class="btn-close"><i
										class="fa fa-times"></i></a>
								</div>
							</div>
							<div class="panel-body">
								<table class="table bootstrap-datatable countries">
									<thead>
										<tr>
											<th></th>
											<th>Country</th>
											<th>Users</th>
											<th>Online</th>
											<th>Performance</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><img src="resources/NiceAdmin/img/Germany.png"
												style="height: 18px; margin-top: -2px;"></td>
											<td>Germany</td>
											<td>2563</td>
											<td>1025</td>
											<td>
												<div class="progress thin">
													<div class="progress-bar progress-bar-danger"
														role="progressbar" aria-valuenow="73" aria-valuemin="0"
														aria-valuemax="100" style="width: 73%"></div>
													<div class="progress-bar progress-bar-warning"
														role="progressbar" aria-valuenow="27" aria-valuemin="0"
														aria-valuemax="100" style="width: 27%"></div>
												</div> <span class="sr-only">73%</span>
											</td>
										</tr>
										<tr>
											<td><img src="resources/NiceAdmin/img/India.png"
												style="height: 18px; margin-top: -2px;"></td>
											<td>India</td>
											<td>3652</td>
											<td>2563</td>
											<td>
												<div class="progress thin">
													<div class="progress-bar progress-bar-danger"
														role="progressbar" aria-valuenow="57" aria-valuemin="0"
														aria-valuemax="100" style="width: 57%"></div>
													<div class="progress-bar progress-bar-warning"
														role="progressbar" aria-valuenow="43" aria-valuemin="0"
														aria-valuemax="100" style="width: 43%"></div>
												</div> <span class="sr-only">57%</span>
											</td>
										</tr>
										<tr>
											<td><img src="resources/NiceAdmin/img/Spain.png"
												style="height: 18px; margin-top: -2px;"></td>
											<td>Spain</td>
											<td>562</td>
											<td>452</td>
											<td>
												<div class="progress thin">
													<div class="progress-bar progress-bar-danger"
														role="progressbar" aria-valuenow="93" aria-valuemin="0"
														aria-valuemax="100" style="width: 93%"></div>
													<div class="progress-bar progress-bar-warning"
														role="progressbar" aria-valuenow="7" aria-valuemin="0"
														aria-valuemax="100" style="width: 7%"></div>
												</div> <span class="sr-only">93%</span>
											</td>
										</tr>
										<tr>
											<td><img src="resources/NiceAdmin/img/India.png"
												style="height: 18px; margin-top: -2px;"></td>
											<td>Russia</td>
											<td>1258</td>
											<td>958</td>
											<td>
												<div class="progress thin">
													<div class="progress-bar progress-bar-danger"
														role="progressbar" aria-valuenow="20" aria-valuemin="0"
														aria-valuemax="100" style="width: 20%"></div>
													<div class="progress-bar progress-bar-warning"
														role="progressbar" aria-valuenow="80" aria-valuemin="0"
														aria-valuemax="100" style="width: 80%"></div>
												</div> <span class="sr-only">20%</span>
											</td>
										</tr>
										<tr>
											<td><img src="resources/NiceAdmin/img/Spain.png"
												style="height: 18px; margin-top: -2px;"></td>
											<td>USA</td>
											<td>4856</td>
											<td>3621</td>
											<td>
												<div class="progress thin">
													<div class="progress-bar progress-bar-danger"
														role="progressbar" aria-valuenow="20" aria-valuemin="0"
														aria-valuemax="100" style="width: 20%"></div>
													<div class="progress-bar progress-bar-warning"
														role="progressbar" aria-valuenow="80" aria-valuemin="0"
														aria-valuemax="100" style="width: 80%"></div>
												</div> <span class="sr-only">20%</span>
											</td>
										</tr>
										<tr>
											<td><img src="resources/NiceAdmin/img/Germany.png"
												style="height: 18px; margin-top: -2px;"></td>
											<td>Brazil</td>
											<td>265</td>
											<td>102</td>
											<td>
												<div class="progress thin">
													<div class="progress-bar progress-bar-danger"
														role="progressbar" aria-valuenow="20" aria-valuemin="0"
														aria-valuemax="100" style="width: 20%"></div>
													<div class="progress-bar progress-bar-warning"
														role="progressbar" aria-valuenow="80" aria-valuemin="0"
														aria-valuemax="100" style="width: 80%"></div>
												</div> <span class="sr-only">20%</span>
											</td>
										</tr>
										<tr>
											<td><img src="resources/NiceAdmin/img/Germany.png"
												style="height: 18px; margin-top: -2px;"></td>
											<td>Coloumbia</td>
											<td>265</td>
											<td>102</td>
											<td>
												<div class="progress thin">
													<div class="progress-bar progress-bar-danger"
														role="progressbar" aria-valuenow="20" aria-valuemin="0"
														aria-valuemax="100" style="width: 20%"></div>
													<div class="progress-bar progress-bar-warning"
														role="progressbar" aria-valuenow="80" aria-valuemin="0"
														aria-valuemax="100" style="width: 80%"></div>
												</div> <span class="sr-only">20%</span>
											</td>
										</tr>
										<tr>
											<td><img src="resources/NiceAdmin/img/Germany.png"
												style="height: 18px; margin-top: -2px;"></td>
											<td>France</td>
											<td>265</td>
											<td>102</td>
											<td>
												<div class="progress thin">
													<div class="progress-bar progress-bar-danger"
														role="progressbar" aria-valuenow="20" aria-valuemin="0"
														aria-valuemax="100" style="width: 20%"></div>
													<div class="progress-bar progress-bar-warning"
														role="progressbar" aria-valuenow="80" aria-valuemin="0"
														aria-valuemax="100" style="width: 80%"></div>
												</div> <span class="sr-only">20%</span>
											</td>
										</tr>
									</tbody>
								</table>
							</div>

						</div>

					</div>
					<!--/col-->
					<div class="col-md-3">

						<div class="social-box facebook">
							<i class="fa fa-facebook"></i>
							<ul>
								<li><strong>256k</strong> <span>friends</span></li>
								<li><strong>359</strong> <span>feeds</span></li>
							</ul>
						</div>
						<!--/social-box-->
					</div>
					<div class="col-md-3">

						<div class="social-box google-plus">
							<i class="fa fa-google-plus"></i>
							<ul>
								<li><strong>962</strong> <span>followers</span></li>
								<li><strong>256</strong> <span>circles</span></li>
							</ul>
						</div>
						<!--/social-box-->

					</div>
					<!--/col-->
					<div class="col-md-3">

						<div class="social-box twitter">
							<i class="fa fa-twitter"></i>
							<ul>
								<li><strong>1562k</strong> <span>followers</span></li>
								<li><strong>2562</strong> <span>tweets</span></li>
							</ul>
						</div>
						<!--/social-box-->

					</div>
					<!--/col-->

				</div>



				<!-- statics end -->




				<!-- project team & activity start -->
				<div class="row">
					<div class="col-md-4 portlets">
						<!-- Widget -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="pull-left">Message</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="fa fa-times"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>

							<div class="panel-body">
								<!-- Widget content -->
								<div class="padd sscroll">

									<ul class="chats">

										<!-- Chat by us. Use the class "by-me". -->
										<li class="by-me">
											<!-- Use the class "pull-left" in avatar -->
											<div class="avatar pull-left">
												<img src="resources/NiceAdmin/img/user.jpg" alt="" />
											</div>

											<div class="chat-content">
												<!-- In meta area, first include "name" and then "time" -->
												<div class="chat-meta">
													John Smith <span class="pull-right">3 hours ago</span>
												</div>
												Vivamus diam elit diam, consectetur dapibus adipiscing elit.
												<div class="clearfix"></div>
											</div>
										</li>

										<!-- Chat by other. Use the class "by-other". -->
										<li class="by-other">
											<!-- Use the class "pull-right" in avatar -->
											<div class="avatar pull-right">
												<img src="resources/NiceAdmin/img/user22.png" alt="" />
											</div>

											<div class="chat-content">
												<!-- In the chat meta, first include "time" then "name" -->
												<div class="chat-meta">
													3 hours ago <span class="pull-right">Jenifer Smith</span>
												</div>
												Vivamus diam elit diam, consectetur fconsectetur dapibus
												adipiscing elit.
												<div class="clearfix"></div>
											</div>
										</li>

										<li class="by-me">
											<div class="avatar pull-left">
												<img src="resources/NiceAdmin/img/user.jpg" alt="" />
											</div>

											<div class="chat-content">
												<div class="chat-meta">
													John Smith <span class="pull-right">4 hours ago</span>
												</div>
												Vivamus diam elit diam, consectetur fermentum sed dapibus
												eget, Vivamus consectetur dapibus adipiscing elit.
												<div class="clearfix"></div>
											</div>
										</li>

										<li class="by-other">
											<!-- Use the class "pull-right" in avatar -->
											<div class="avatar pull-right">
												<img src="resources/NiceAdmin/img/user22.png" alt="" />
											</div>

											<div class="chat-content">
												<!-- In the chat meta, first include "time" then "name" -->
												<div class="chat-meta">
													3 hours ago <span class="pull-right">Jenifer Smith</span>
												</div>
												Vivamus diam elit diam, consectetur fermentum sed dapibus
												eget, Vivamus consectetur dapibus adipiscing elit.
												<div class="clearfix"></div>
											</div>
										</li>

									</ul>

								</div>
								<!-- Widget footer -->
								<div class="widget-foot">

									<form class="form-inline">
										<div class="form-group">
											<input type="text" class="form-control"
												placeholder="Type your message here...">
										</div>
										<button type="submit" class="btn btn-info">Send</button>
									</form>


								</div>
							</div>


						</div>
					</div>

					<div class="col-lg-8">
						<!--Project Activity start-->
						<section class="panel">
							<div class="panel-body progress-panel">
								<div class="row">
									<div class="col-lg-8 task-progress pull-left">
										<h1>To Do Everyday</h1>
									</div>
									<div class="col-lg-4">
										<span class="profile-ava pull-right"> <img alt=""
											class="simple"
											src="resources/NiceAdmin/img/avatar1_small.jpg">
											Jenifer smith
										</span>
									</div>
								</div>
							</div>
							<table class="table table-hover personal-task">
								<tbody>
									<tr>
										<td>Today</td>
										<td>web design</td>
										<td><span class="badge bg-important">Upload</span></td>
										<td><span class="profile-ava"> <img alt=""
												class="simple"
												src="resources/NiceAdmin/img/avatar1_small.jpg">
										</span></td>
									</tr>
									<tr>
										<td>Yesterday</td>
										<td>Project Design Task</td>
										<td><span class="badge bg-success">Task</span></td>
										<td>
											<div id="work-progress2"></div>
										</td>
									</tr>
									<tr>
										<td>21-10-14</td>
										<td>Generate Invoice</td>
										<td><span class="badge bg-success">Task</span></td>
										<td>
											<div id="work-progress3"></div>
										</td>
									</tr>
									<tr>
										<td>22-10-14</td>
										<td>Project Testing</td>
										<td><span class="badge bg-primary">To-Do</span></td>
										<td><span class="profile-ava"> <img alt=""
												class="simple"
												src="resources/NiceAdmin/img/avatar1_small.jpg">
										</span></td>
									</tr>
									<tr>
										<td>24-10-14</td>
										<td>Project Release Date</td>
										<td><span class="badge bg-info">Milestone</span></td>
										<td>
											<div id="work-progress4"></div>
										</td>
									</tr>
									<tr>
										<td>28-10-14</td>
										<td>Project Release Date</td>
										<td><span class="badge bg-primary">To-Do</span></td>
										<td>
											<div id="work-progress5"></div>
										</td>
									</tr>
									<tr>
										<td>Last week</td>
										<td>Project Release Date</td>
										<td><span class="badge bg-primary">To-Do</span></td>
										<td>
											<div id="work-progress1"></div>
										</td>
									</tr>
									<tr>
										<td>last month</td>
										<td>Project Release Date</td>
										<td><span class="badge bg-success">To-Do</span></td>
										<td><span class="profile-ava"> <img alt=""
												class="simple"
												src="resources/NiceAdmin/img/avatar1_small.jpg">
										</span></td>
									</tr>
								</tbody>
							</table>
						</section>
						<!--Project Activity end-->
					</div>
				</div>
				<br> <br>

				<div class="row">
					<div class="col-md-6 portlets">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2>
									<strong>Calendar</strong>
								</h2>
								<div class="panel-actions">
									<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="fa fa-times"></i></a>
								</div>

							</div>
							<br> <br> <br>
							<div class="panel-body">
								<!-- Widget content -->

								<!-- Below line produces calendar. I am using FullCalendar plugin. -->
								<div id="calendar"></div>

							</div>
						</div>

					</div>

					<div class="col-md-6 portlets">
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="pull-left">Quick Post</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="fa fa-times"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-body">
								<div class="padd">

									<div class="form quick-post">
										<!-- Edit profile form (not working)-->
										<form class="form-horizontal">
											<!-- Title -->
											<div class="form-group">
												<label class="control-label col-lg-2" for="title">Title</label>
												<div class="col-lg-10">
													<input type="text" class="form-control" id="title">
												</div>
											</div>
											<!-- Content -->
											<div class="form-group">
												<label class="control-label col-lg-2" for="content">Content</label>
												<div class="col-lg-10">
													<textarea class="form-control" id="content"></textarea>
												</div>
											</div>
											<!-- Cateogry -->
											<div class="form-group">
												<label class="control-label col-lg-2">Category</label>
												<div class="col-lg-10">
													<select class="form-control">
														<option value="">- Choose Cateogry -</option>
														<option value="1">General</option>
														<option value="2">News</option>
														<option value="3">Media</option>
														<option value="4">Funny</option>
													</select>
												</div>
											</div>
											<!-- Tags -->
											<div class="form-group">
												<label class="control-label col-lg-2" for="tags">Tags</label>
												<div class="col-lg-10">
													<input type="text" class="form-control" id="tags">
												</div>
											</div>

											<!-- Buttons -->
											<div class="form-group">
												<!-- Buttons -->
												<div class="col-lg-offset-2 col-lg-9">
													<button type="submit" class="btn btn-primary">Publish</button>
													<button type="submit" class="btn btn-danger">Save
														Draft</button>
													<button type="reset" class="btn btn-default">Reset</button>
												</div>
											</div>
										</form>
									</div>


								</div>
								<div class="widget-foot">
									<!-- Footer goes here -->
								</div>
							</div>
						</div>

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

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      var positions = [];//전체 정보
      var selectOption = ""; //선택된 옵션 정보
	  var map; 
      
      $(function(){
    	  $.getJSON("showWSafeZone", recvJson)
      })
      
      $(function(){
    	$("input:radio[name=favor]").click(function(){
    		selectOption = $("input[name=favor]:checked").val();
    		$.getJSON("searchFavor?favor=" + selectOption, recvOptionJson)
    	})  
      })
      
      function recvOptionJson(data){
    	  positions = []
    	    $.each(data, (i, v) => {
    	        var position = { score: 0, latlng: new kakao.maps.LatLng(0, 0) } //정보 하나씩
    	        position.latlng = new kakao.maps.LatLng(v.latitude, v.longitude)
    	        position.score = v.score;
    	        positions.push(position)
    	    })
    	    makeMap() 
      }
      
      function recvJson(data) {
  	    //console.log(data)
  	    positions = []
  	    $.each(data, (i, v) => {
  	        var position = { title: '', latlng: new kakao.maps.LatLng(0, 0) } //정보 하나씩
  	        position.latlng = new kakao.maps.LatLng(v.latitude, v.longitude)
  	        positions.push(position)
  	    })
  	    makeMap() 
  	}
      
      function makeMap() {
          mapContainer = document.getElementById("map")    // 지도를 표시할 DIV
          mapOption = {
              center: new kakao.maps.LatLng(37.5092956, 127.0554639)    // 지도의 중심좌표
              , level: 8    // 지도의 확대레벨
          };
		  // 지도를 생성
          map = new kakao.maps.Map(mapContainer, mapOption),
          customOverlay = new kakao.maps.CustomOverlay({}),
          infowindow = new kakao.maps.InfoWindow({removable: true});
          
          for (var i = 0, len = positions.length; i < len; i++) {
        	  drawCircles(positions[i]);
        	}
      }
      
      function drawCircles(positions){
    	// 지도에 표시할 원을 생성합니다
		    var circle = new kakao.maps.Circle({
			center : positions.latlng, // 원의 중심좌표 입니다 
			radius : 200, // 미터 단위의 원의 반지름입니다 
			strokeWeight : 0, // 선의 두께입니다 
			//strokeColor : '#FF6C6C', // 선의 색깔입니다
			//strokeOpacity : 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			//strokeStyle : 'dash', // 선의 스타일 입니다
			fillColor : '#FF6C6C', // 채우기 색깔입니다
			fillOpacity : 0.7 // 채우기 불투명도 입니다   
			 });
        
	       if(selectOption=="noise"||selectOption=="criminal"||selectOption=="finedust"){
	      	 circle.setRadius(2000);
	      	 
	      	 if(1<=positions.score && positions.score <=3) //나쁨
	      	 	circle.setOptions({fillColor: '#CD3B3B'}); 
	      	 else if (4<=positions.score && positions.score <=7) //보통
	      		 circle.setOptions({fillColor: '#FF7171'}); 
	      	 else //좋음
	      		 circle.setOptions({fillColor: '#FFB9B9'});
	       }
       
	    // 다각형에 mouseover 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 변경합니다 
	       // 지역명을 표시하는 커스텀오버레이를 지도위에 표시합니다
	       kakao.maps.event.addListener(circle, 'mouseover', function(mouseEvent) {
	           
	    	   //console.log("OK")
	    	   circle.setOptions({fillColor: '#FFEAEA'});
	    	   
	    	   /* var content = '점수 정보: ' + positions.score ;
	    		
	    	   customOverlay.setContent('<div style="color:black">점수 : ' + positions.score +'</div>');
	           
	           customOverlay.setPosition(mouseEvent.latLng); 
	           customOverlay.setMap(map);  */
	       });
	
	       // 다각형에 mousemove 이벤트를 등록하고 이벤트가 발생하면 커스텀 오버레이의 위치를 변경합니다 
	       /* kakao.maps.event.addListener(circle, 'mousemove', function(mouseEvent) {
	           
	           customOverlay.setPosition(mouseEvent.latLng); 
	       }); */
	 
	 		
	 
	       // 다각형에 mouseout 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 원래색으로 변경합니다
	       // 커스텀 오버레이를 지도에서 제거합니다 
	       kakao.maps.event.addListener(circle, 'mouseout', function() {
	    	   if(1<=positions.score && positions.score <=3) //나쁨
		      	 	circle.setOptions({fillColor: '#CD3B3B'}); 
		      	 else if (4<=positions.score && positions.score <=7) //보통
		      		 circle.setOptions({fillColor: '#FF7171'}); 
		      	 else //좋음
		      		 circle.setOptions({fillColor: '#FFB9B9'});
	    	   
	    	   //customOverlay.setMap(null);
	       }); 

	       // 다각형에 click 이벤트를 등록하고 이벤트가 발생하면 다각형의 이름과 면적을 인포윈도우에 표시합니다 
	       kakao.maps.event.addListener(circle, 'click', function(mouseEvent) {
	           
	    	   console.log("click")
	    	   
	    	   if(selectOption=="noise")
	    	   	  optionName = "환경소음"
	    	   else if (selectOption=="criminal")
	    		  optionName = "치안"
	    	   else if (selectOption=="finedust")
	    		   optionName = "미세먼지"
	    	   else
	    		   optionName = "정도"
	    		   
	    		   
	    	   console.log(optionName)
	    	   	 if(1<=positions.score && positions.score <=3) //나쁨
	    		     scoreText = "나쁨" 
		      	 else if (4<=positions.score && positions.score <=7) //보통
		      		 scoreText = "보통" 
		      	 else //좋음
		      		 scoreText = "좋음"   
	       	   
	    	   var content = '<div class="customoverlay"><a><span class="title">' + optionName +': ' + scoreText + '</span></a></div>';
	           
	           /* infowindow.setContent(content); 
	           infowindow.setPosition(mouseEvent.latLng); 
	           infowindow.setMap(map); */
  
	    	   customOverlay.setContent(content);
	           customOverlay.setPosition(mouseEvent.latLng); 
	           customOverlay.setMap(map);
	           
	       });
	
			// 지도에 원을 표시합니다 
			circle.setMap(map);  
      }
    </script>

</body>

</html>
