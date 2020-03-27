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
<link href="resources/NiceAdmin/css/bootstrap.min.css?2"
	rel="stylesheet">
<!-- bootstrap theme -->
<link href="resources/NiceAdmin/css/bootstrap-theme.css?2"
	rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="resources/NiceAdmin/css/elegant-icons-style.css"
	rel="stylesheet" />
<link href="resources/NiceAdmin/css/font-awesome.min.css"
	rel="stylesheet" />
<!-- Custom styles -->
<link href="resources/NiceAdmin/css/style.css?2" rel="stylesheet">
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


<style>
#favor {
	font-size: 18px;
	color: #688a7e;
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
					</a></li>


					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_table"></i> <span><b>Manager Tab </b></span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>

						<ul class="sub">
							<li><a class="" href="insuranceManage"><b>Insurance
										Table</b></a></li>
						</ul></li>



				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->
	<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="row" style="height: 10px">
					<div class="col-lg-12">
						
						<ol class="breadcrumb">
							<li><i class="fa fa-th-list"></i>Manager Tab</li>
							<li><i class="fa fa-table"></i><a href="insuranceManage">Insurance Table</a></li>
						</ol>
					</div>
				</div>
				<!-- page start-->


				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading">
								<b>Insurance Manage</b>
								<div style="float: right">
									<a class='btn btn-primary' data-target='#insertModal'
														data-toggle="modal"> <i class='icon_plus_alt2'
														id='insertIns' style="border-right: none"></i></a>
								</div>
							</header>

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
		
					</section>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLabel">Insurance
						Modify</h3>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="insDivision" class="col-form-label">Insurance
								Division:</label> <input type="text" class="form-control"
								id="insDivision" name="insDivision">
						</div>
						<div class="form-group">
							<label for="insName" class="col-form-label">Insurance
								Name:</label> <input type="text" class="form-control" name="insName"
								id="insName">
						</div>
						<div class="form-group">

							<label for="insCategory" class="col-form-label">Category:</label>
							<select class="form-control" id="insCategory" name="insCategory">
								<option value="범죄/치안">범죄/치안</option>
								<option value="소음공해">소음공해</option>
								<option value="외국인 거주 현황">외국인 거주 현황</option>
								<option value="여성 안전 지킴이 존">여성 안전 지킴이 존</option>
								<option value="대기오염">대기오염</option>
								<option value="교통 안전사고 현황">교통 안전사고 현황</option>
							</select>
						</div>
						<div class="form-group">
							<label for="insAge" class="col-form-label">Age Group:</label> <select
								class="form-control" id="insAge" name="insAge">
								<option value="20대">20대</option>
								<option value="30대">30대</option>
								<option value="40대">40대</option>
							</select>

						</div>
						<div class="form-group">
							<label for="insSex" class="col-form-label">Sex:</label> <select
								class="form-control" id="insSex" name="insSex">
								<option value="여성">여성</option>
								<option value="남성">남성</option>
							</select>
						</div>
						<div class="insImage">
							<label for="recipient-name" class="col-form-label">Image
								Name:</label> <input type="text" class="form-control" id="insImage"
								name="insImage">
						</div>
						<div class="modal-footer">

							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<input class="btn btn-primary" type="submit"
								value="Update Insurance" formaction="updateInsurance" id="btn">

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="insertModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Insurance
						Modify</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="insDivision" class="col-form-label">Insurance
								Division:</label> <input type="text" class="form-control"
								id="insDivision" name="insDivision">
						</div>
						<div class="form-group">
							<label for="insName" class="col-form-label">Insurance
								Name:</label> <input type="text" class="form-control" name="insName"
								id="insName">
						</div>
						<div class="form-group">

							<label for="insCategory" class="col-form-label">Category:</label>
							<select class="form-control" id="insCategory" name="insCategory">
								<option value="범죄/치안">범죄/치안</option>
								<option value="소음공해">소음공해</option>
								<option value="외국인 거주 현황">외국인 거주 현황</option>
								<option value="여성 안전 지킴이 존">여성 안전 지킴이 존</option>
								<option value="대기오염">대기오염</option>
								<option value="교통 안전사고 현황">교통 안전사고 현황</option>
							</select>
						</div>
						<div class="form-group">
							<label for="insAge" class="col-form-label">Age Group:</label> <select
								class="form-control" id="insAge" name="insAge">
								<option value="20대">20대</option>
								<option value="30대">30대</option>
								<option value="40대">40대</option>
							</select>

						</div>
						<div class="form-group">
							<label for="insSex" class="col-form-label">Sex:</label> <select
								class="form-control" id="insSex" name="insSex">
								<option value="여성">여성</option>
								<option value="남성">남성</option>
							</select>
						</div>
						<div class="insImage">
							<label for="recipient-name" class="col-form-label">Image
								Name:</label> <input type="text" class="form-control" id="insImage"
								name="insImage">
						</div>
						<div class="modal-footer">

							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<input class="btn btn-primary" type="submit"
								value="Insert Insurance" formaction="insertInsurance" id="btn">

						</div>
					</form>
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
				
				var buttonVar = "<td><a class='btn btn-success' data-toggle='modal' data-target='#exampleModal' data-index='"+v.insuranceIndex+ "' data-insname='"+v.insuranceName+ "' data-icategory='"+v.category+"' data-iage='"+v.ages+"' data-isex='"+v.sex+"' data-imagename='"+v.imgName+"'>";
				buttonVar += "<i class='icon_check_alt2' id ='modifyIns'></i></a>";
				
				
				buttonVar += "<a class='btn btn-danger' id='deleteIns' data-iname='"+v.insuranceName+"'><i class='icon_close_alt2'></i></a></div></td>";

				$("#insTab > tbody").append("<tr><td>" + v.insuranceIndex + "</td><td>" 
					+ v.insuranceName + "</td><td>" + v.category + 
					"</td><td>" + v.ages + "</td><td>" + v.sex + "</td><td>"
					+ v.imgName + buttonVar)
			})
		}
		

		$(document).on('click','#deleteIns',function() {
			console.log("삭제")
			
			deleteIndex = $('#deleteIns').index($(this));
			
			$.get("deleteInsurance?name="+ $(this).attr("data-iname"), function(data){
				$('tbody>tr:eq('+deleteIndex+')').remove();
			}); 
		})
		
		$(document).on('click','insertIns',function() {
			modifyIndex = $('tbody>tr>td>#modifyIns').index($(this));
			
			$('tbody>tr:eq('+modifyIndex+')').html("<td></td><td> 수정수정</td><td>수정수정</td><td>수정!</td><td>악</td><td>ㅠ</td><td> <button id = 'modifyIns'> 수정 </button></td><td><button id='deleteIns'> 삭제 </button> </td>");
		
		})
		
		
		$('#exampleModal').on('show.bs.modal', function (event) {
			  var button = $(event.relatedTarget) // Button that triggered the modal
			  // var recipient = button.data('whatever')// Extract info from data-* attributes
			  
			  var insDivision = button.attr('data-index')
			  var insName = button.attr('data-insname') 
			  var insCategory = button.attr('data-icategory')
			  var insAge = button.attr('data-iage')
			  var insSex = button.attr('data-isex')
			  var insImage = button.attr('data-imagename')
			  
			  var modal = $(this)
			  
			  console.log(insDivision)
			  console.log(insName)
			  console.log(insCategory)
			  console.log(insAge)
			  console.log(insSex)
			  console.log(insImage)
			  
			  modal.find('.modal-title').text('Insurance Modify On ' + insName)
			  
			  $('#insName').val(insName);
			  $('#insDivision').val(insDivision);
			  $('#insCategory').val(insCategory);
			  $('#insAge').val(insAge);
			  $('#insSex').val(insSex);
			  $('#insImage').val(insImage);
		})
		
		$('#insertModal').on('show.bs.modal', function (event) {
			  var modal = $(this)
			  modal.find('.modal-title').text('Insert Insurance')
		})
		
	</script>

</body>

</html>
