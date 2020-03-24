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
<link rel="shortcut icon" href="img/favicon.png">

<title>Basic Table | Creative - Bootstrap 3 Responsive Admin
	Template</title>

<!-- Bootstrap CSS -->
<link
	href="resources/NiceAdmin/resources/NiceAdmin/css/bootstrap.min.css"
	rel="stylesheet">
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

<!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
<!--[if lt IE 9]>
      <script src="resources/NiceAdmin/js/html5shiv.js"></script>
      <script src="resources/NiceAdmin/js/respond.min.js"></script>
      <script src="resources/NiceAdmin/js/lte-ie7.js"></script>
    <![endif]-->

<!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>

<body>
	<!-- container section start -->
	<section id="container" class="">
		<!--header start-->
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
										alt="avatar" src="resources/NiceAdmin/img/avatar-mini.jpg"></span>
									<span class="subject"> <span class="from">Greg
											Martin</span> <span class="time">1 min</span>
								</span> <span class="message"> I really like this admin panel. </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="resources/NiceAdmin/img/avatar-mini2.jpg"></span>
									<span class="subject"> <span class="from">Bob
											Mckenzie</span> <span class="time">5 mins</span>
								</span> <span class="message"> Hi, What is next project plan? </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="resources/NiceAdmin/img/avatar-mini3.jpg"></span>
									<span class="subject"> <span class="from">Phillip
											Park</span> <span class="time">2 hrs</span>
								</span> <span class="message"> I am like to buy this Admin
										Template. </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="resources/NiceAdmin/img/avatar-mini4.jpg"></span>
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
								<img alt="" src="img/avatar1_small.jpg">
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
							<li><a href="login.html"><i class="icon_key_alt"></i>
									Log Out</a></li>
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
					<li class=""><a class="" href="index.html"> <i
							class="icon_house_alt"></i> <span>Dashboard</span>
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
							<li><a class="" href="general.html">Components</a></li>
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
							<li><a class="active" href="basic_table.html">Basic
									Table</a></li>
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
			</div>
		</aside>

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">
							<i class="fa fa-table"></i> Table
						</h3>
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
							<li><i class="fa fa-table"></i>Table</li>
							<li><i class="fa fa-th-list"></i>Basic Table</li>
						</ol>
					</div>
				</div>
				<!-- page start-->


				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading"> Advanced Table </header>

							<table id="insTab"
								class="table table-striped table-advance table-hover">
								<thead>
									<tr>
										<th><i class="icon_profile"></i> Insurance</th>
										<th><i class="icon_calendar"></i> Name</th>
										<th><i class="icon_mail_alt"></i> Category</th>
										<th><i class="icon_pin_alt"></i> Age Group</th>
										<th><i class="icon_mobile"></i> Sex</th>
										<th><i class="icon_mobile"></i> Image Name</th>
										<th><i class="icon_cogs"></i> Action</th>
									</tr>
								</thead>

								<tbody>

								</tbody>
							</table>
						</section>
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

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Insurance Modify</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="insDivision" class="col-form-label">Insurance
								Division:</label> 
								<input type="text" class="form-control" id="insDivision">
						</div>
						<div class="form-group">
							<label for="insName" class="col-form-label">Insurance
								Name:</label> <input type="text" class="form-control" id="insName">
						</div>
						<div class="form-group">

							<label for="insCategory" class="col-form-label">Category:</label>
							<select class="form-control" id="insCategory">
								<option value="범죄">범죄</option>
								<option value="소음공해">소음공해</option>
								<option value="외국인거주">외국인거주</option>
								<option value="여성안심지키미집">여성안심지키미집</option>
								<option value="미세먼지">미세먼지</option>
								<option value="교통사고">교통사고</option>
							</select> 
						</div>
						<div class="form-group">
						<label for="insAge" class="col-form-label">Age Group:</label>
							<select class="form-control" id="insAge">
								<option value="20대">20대</option>
								<option value="30대">30대</option>
								<option value="40대">40대</option>
							</select> 
							
						</div>
						<div class="form-group">
							<label for="insSex" class="col-form-label">Sex:</label>
							 <select class="form-control" id="insSex">
								<option value="여자">여자</option>
								<option value="남자">남자</option>
							</select> 
						</div>
						<div class="insImage">
							<label for="recipient-name" class="col-form-label">Image Name:</label> 
							<input type="text" class="form-control" id="insImage">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Send message</button>
				</div>
			</div>
		</div>
	</div>


	<!-- container section end -->
	<!-- javascripts -->
	<script src="resources/NiceAdmin/js/jquery.js"></script>
	<script src="resources/NiceAdmin/js/bootstrap.min.js"></script>
	<!-- nicescroll -->
	<script src="resources/NiceAdmin/js/jquery.scrollTo.min.js"></script>
	<script src="resources/NiceAdmin/js/jquery.nicescroll.js"
		type="text/javascript"></script>
	<!--custome script for all page-->
	<script src="resources/NiceAdmin/js/scripts.js"></script>

	<script>
		$(function() {
			console.log("확인")
			$.getJSON("selectInsurance", recvJson)
	      });
		
		function recvJson(data){
			console.log(data)
			$.each(data, (i, v) => {
				var buttonVar = "<td><div class='btn-group'><a class='btn btn-primary' href='#'><i class='icon_plus_alt2' id='insertIns'></i></a>";
				
				var objData = { 
						insIndex: v.insuranceIndex,
						
				}
				buttonVar += "<a class='btn btn-success' data-toggle='modal' data-target='#exampleModal' data-index='"+v.insuranceIndex+ "' data-insname='"+v.insuranceName+ "' data-icategory='"+v.category+"' data-iage='"+v.age+"' data-isex='"+v.sex+"' data-imagename='"+v.imgName+"'>";
				buttonVar += "<i class='icon_check_alt2' id ='modifyIns'></i></a>";
				
				
				buttonVar += "<a class='btn btn-danger' id='deleteIns' data-iname='"+v.insuranceName+"'><i class='icon_close_alt2'></i></a></div></td>";

				$("#insTab > tbody").append("<tr><td>" + v.insuranceIndex + "</td><td>" 
					+ v.insuranceName + "</td><td>" + v.category + 
					"</td><td>" + v.ages + "</td><td>" + v.sex + "</td><td>"
					+ v.imgName + buttonVar)
			})
		}
		

		$(document).on('click','tbody>tr>td>div>#deleteIns',function() {
			console.log("삭제")
			
			deleteIndex = $('tbody>tr>td>div>#deleteIns').index($(this));
			
			$.get("deleteInsurance?name="+ $(this).attr("data-iname"), function(data){
				$('tbody>tr:eq('+deleteIndex+')').remove();
			}); 
			
			
		})
		
		$(document).on('click','tbody>tr>td>#modifyIns',function() {
			modifyIndex = $('tbody>tr>td>#modifyIns').index($(this));
			
			$('tbody>tr:eq('+modifyIndex+')').html("<td></td><td> 수정수정</td><td>수정수정</td><td>수정!</td><td>악</td><td>ㅠ</td><td> <button id = 'modifyIns'> 수정 </button></td><td><button id='deleteIns'> 삭제 </button> </td>");
		
		})
		
		function modify(){
			$("#insTab > tbody").click()
		}
		
		$('#exampleModal').on('show.bs.modal', function (event) {
			  var button = $(event.relatedTarget) // Button that triggered the modal
			  // var recipient = button.data('whatever')// Extract info from data-* attributes
			  
			  var insIndex = button.attr('data-index')
			  var insName = button.attr('data-insname') 
			  var insCategory = button.attr('data-icategory')
			  var insAge = button.attr('data-iage')
			  var insSex = button.attr('data-isex')
			  var insImage = button.attr('data-imagename')
			  
			  var modal = $(this)
			  
			  modal.find('.modal-title').text('Insurance Modify On ' + insName)
			  modal.find('.modal-body input').val(insName)
		})
		
	</script>

</body>

</html>
