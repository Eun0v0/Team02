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
<link href="resources/NiceAdmin/css/bootstrap-theme.css"
	rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="resources/NiceAdmin/css/elegant-icons-style.css"
	rel="stylesheet" />
<link href="resources/NiceAdmin/css/font-awesome.min.css"
	rel="stylesheet" />
<!-- Custom styles -->
<link href="resources/NiceAdmin/css/style.css" rel="stylesheet">
<link href="resources/NiceAdmin/css/style-responsive.css"
	rel="stylesheet" />


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

					<!-- task notificatoin start -->
					<li id="task_notificatoin_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="icon-task-l"></i> <span class="badge bg-important">5</span>
					</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-blue"></div>
							<li>
								<p class="blue">You have 5 pending tasks</p>
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
										alt="avatar" src="./img/avatar-mini.jpg"></span> <span
									class="subject"> <span class="from">Greg Martin</span> <span
										class="time">1 min</span>
								</span> <span class="message"> I really like this admin panel. </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./img/avatar-mini2.jpg"></span> <span
									class="subject"> <span class="from">Bob Mckenzie</span>
										<span class="time">5 mins</span>
								</span> <span class="message"> Hi, What is next project plan? </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./img/avatar-mini3.jpg"></span> <span
									class="subject"> <span class="from">Phillip Park</span>
										<span class="time">2 hrs</span>
								</span> <span class="message"> I am like to buy this Admin
										Template. </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./img/avatar-mini4.jpg"></span> <span
									class="subject"> <span class="from">Ray Munoz</span> <span
										class="time">1 day</span>
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
					
					<li class="dropdown" id="btn"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <span class="profile-ava">
								<img alt="" src="resources/NiceAdmin/img/avatar1_small2.jpg" >
						</span> <span class="username">Welcome, ${id}!</span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<div class="log-arrow-up"></div>
							<li class="eborder-top"><a href="#"><i
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
							<span>Home</span>
					</a></li>
					<li class="sub-menu"><a href="recommendMain" class=""> <i
							class="icon_document_alt"></i> <span>Recommend</span>
					</a> <!-- 	
					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_desktop"></i> <span>UI Fitures</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="general.html">Elements</a></li>
							<li><a class="" href="buttons.html">Buttons</a></li>
							<li><a class="" href="grids.html">Grids</a></li>
						</ul></li>
 -->
					<li><a class="" href="chart-chartjs.html"> <i
							class="icon_piechart"></i> <span>Charts</span>
					</a></li>

					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_table"></i> <span>Manager Tab</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="insuranceManage">Insurance Table</a></li>
						</ul></li>

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
						<h3 class="page-header">
							<i class="fa fa fa-bars"></i> Profile
						</h3>

					</div>
				</div>
				<!-- page start-->
				<div class="row">
					<div class="col-lg-6">
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
								<h2 class="form-control">${gu} / ${dong }</h2>
								JOB
								<h2 class="form-control">${job}</h2>
							</div>
							
						</form>
					</div>

					<div class="col-lg-6">
						<div class="recent">
							<h3>Get in touch with us</h3>
						</div>
						<div class="">
							<p>Nam liber tempor cum soluta nobis eleifend option congue
								nihil imperdiet doming id quod mazim placerat facer possim
								assum. Typi non habent claritatem insitam; est usus legentis in
								iis qui facit eorum.</p>
							<p>Nam liber tempor cum soluta nobis eleifend option congue
								nihil imperdiet doming id quod mazim placerat facer possim
								assum. Typi non habent claritatem insitam; est usus legentis in
								iis qui facit eorum.</p>

							<h4>Address:</h4>
							Teheran St, Seoul<br>
							<h4>Telephone:</h4>
							</br>
							<h4>Fax:</h4>
							123 456 789
						</div>
					</div>
				</div>
				<!-- page end-->
			</section>
		</section>
		<!--main content end-->
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
	<!-- container section end -->
	<!-- javascripts -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- nice scroll -->
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
	<!--custome script for all page-->
	<script src="js/scripts.js"></script>
	<script src="contactform/contactform.js"></script>


</body>

</html>