<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<head>
<title>CSMS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Gretong Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- Bootstrap Core CSS -->
<link href="${contextPath}/resources/admin/css/bootstrap.min.css"
	rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="${contextPath}/resources/admin/css/style.css"
	rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="${contextPath}/resources/admin/css/font-awesome.css"
	rel="stylesheet">
<!-- jQuery -->
<link
	href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400'
	rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet"
	href="${contextPath}/resources/admin/css/icon-font.min.css"
	type='text/css' />
<script src="${contextPath}/resources/admin/js/amcharts.js"></script>
<script src="${contextPath}/resources/admin/js/serial.js"></script>
<!-- <script src="js/light.js"></script>	 -->
<!-- //lined-icons -->
<script src="${contextPath}/resources/admin/js/jquery-1.10.2.min.js"></script>
<!--pie-chart--->
<script src="${contextPath}/resources/admin/js/pie-chart.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$('#demo-pie-1').pieChart(
						{
							barColor : '#3bb2d0',
							trackColor : '#eee',
							lineCap : 'round',
							lineWidth : 8,
							onStep : function(from, to, percent) {
								$(this.element).find('.pie-value').text(
										Math.round(percent) + '%');
							}
						});

				$('#demo-pie-2').pieChart(
						{
							barColor : '#fbb03b',
							trackColor : '#eee',
							lineCap : 'butt',
							lineWidth : 8,
							onStep : function(from, to, percent) {
								$(this.element).find('.pie-value').text(
										Math.round(percent) + '%');
							}
						});

				$('#demo-pie-3').pieChart(
						{
							barColor : '#ed6498',
							trackColor : '#eee',
							lineCap : 'square',
							lineWidth : 8,
							onStep : function(from, to, percent) {
								$(this.element).find('.pie-value').text(
										Math.round(percent) + '%');
							}
						});

			});
</script>
</head>
<body>
	<div class="page-container">
		<!--/content-inner-->
		<div class="left-content">
			<div class="inner-content">
				<!-- header-starts -->
				<div class="header-section">
					<!-- top_bg -->
					<div class="top_bg">
						<div class="header_top">
							<div class="top_right">
								<button type="button" class="btn btn-danger btn-sm"
									onclick="logout();">
									<span class="glyphicon glyphicon-log-out"></span>Logout
								</button>
							</div>
							<div class="top_left"> 
								<span style="color: brown;">${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.dbUser.userName} (Role: ${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.dbUser.role.description})</span> 						
							</div> 
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>
					<!-- /top_bg -->
				</div>

				<!-- //header-ends -->

				<!--content-->
				<div class="content">
					<div class="monthly-grid">
						<div class="panel panel-widget">
							<div class="panel-title">Dashboard</div>
							<div class="panel-body">
								<!-- status -->
								<div class="contain">
									<div class="gantt"></div>
								</div>
								<!-- status -->
							</div>
						</div>
					</div>

					<!--//area-->
					<div class="col-md-5 skil">
						<div class="content-top-1">
							<div class="col-md-12 top-content">
								<h5>Customers</h5>
								<label>8761</label>
							</div>

							<div class="clearfix"></div>
						</div>
						<div class="content-top-1">
							<div class="col-md-12 top-content">
								<h5>Active Connections</h5>
								<label>6295</label>
							</div>

							<div class="clearfix"></div>
						</div>
						<div class="content-top-1">
							<div class="col-md-12 top-content">
								<h5>Service Areas</h5>
								<label>3401</label>
							</div>

							<div class="clearfix"></div>
						</div>
					</div>
					<div class="col-md-7 mid-content-top">
						<div class="middle-content">
							<h3>Setup Box Types</h3>
							<!-- start content_slider -->
							<div id="owl-demo" class="owl-carousel text-center">
								<div class="col-sm-4">
									<img class="img img-thumbnail upload-img"
										src="resources/admin/images/Airtel Settop Box.jpg"
										style="height: 318px; width: 300px;">
								</div>
								<div class="col-sm-4">
									<img class="img img-thumbnail upload-img"
										src="resources/admin/images/Dish TV Settop Box.jpg"
										style="height: 318px; width: 300px;">
								</div>
								<div class="col-sm-4">
									<img class="img img-thumbnail upload-img"
										src="resources/admin/images/Tata Sky Settop Box.jpg"
										style="height: 318px; width: 300px;">
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<!--//sreen-gallery-cursual---->
						<!-- requried-jsfiles-for owl -->
						<link href="css/owl.carousel.css" rel="stylesheet">
						<script src="js/owl.carousel.js"></script>
						<script>
							$(document).ready(function() {
								$("#owl-demo").owlCarousel({
									items : 3,
									lazyLoad : true,
									autoPlay : true,
									pagination : true,
									nav : true,
								});
							});
						</script>
						<!-- //requried-jsfiles-for owl -->
					</div>
					<div class="clearfix"></div>

					<!--area-->

					<!--//area-->

				</div>
				<!--content-->
			</div>
		</div>
		<!--//content-inner-->
		<!--/sidebar-menu-->
		<div class="sidebar-menu">
			<header class="logo1">
				<img class="img img-thumbnail upload-img"
					src="resources/admin/images/CSMS Logo.jpg"
					style="height: 120px; width: 150px;"> <a href="#"
					class="sidebar-icon"> <span class="fa fa-bars"></span>
				</a>
			</header>
			<div style="border-top: 1px ridge rgba(255, 255, 255, 0.15)"></div>
			<div class="menu">
				<ul id="menu">
					<li><a href="${contextPath}/adminPage.htm"><i
							class="fa fa-tachometer"></i><span>Home</span></a></li>
					<li id="menu-academico"><a href="#"><i
							class="lnr lnr-layers"></i> <span>Manage Master Data</span> <span
							class="fa fa-angle-right" style="float: right"></span></a>
						<ul id="menu-academico-sub">
							<li id="menu-academico-avaliacoes"><a
								href="${contextPath}/manageLocation.htm">Manage Location</a></li>
							<li id="menu-academico-boletim"><a
								href="${contextPath}/manageSetupBoxType.htm">Manage Setup
									Box Type</a></li>
							<li id="menu-academico-boletim"><a
								href="${contextPath}/manageAgent.htm">Manage Agent</a></li>
						</ul></li>
					<li><a href="${contextPath}/addManageCustomer.htm"><i
							class="lnr lnr-pencil"></i><span>Add & Manage Customer</span></a></li>
					<li id="menu-academico"><a href="#"><i
							class="fa fa-file-text-o"></i> <span>Report</span></a></li>
				</ul>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>

	<form action="${contextPath}/logout" id="logout" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

	<script>
		var toggle = true;

		$(".sidebar-icon").click(
				function() {
					if (toggle) {
						$(".page-container").addClass("sidebar-collapsed")
								.removeClass("sidebar-collapsed-back");
						$("#menu span").css({
							"position" : "absolute"
						});
					} else {
						$(".page-container").removeClass("sidebar-collapsed")
								.addClass("sidebar-collapsed-back");
						setTimeout(function() {
							$("#menu span").css({
								"position" : "relative"
							});
						}, 400);
					}

					toggle = !toggle;
				});
	</script>
	<!--js -->
	<script src="${contextPath}/resources/admin/js/jquery.nicescroll.js"></script>
	<script src="${contextPath}/resources/admin/js/scripts.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="${contextPath}/resources/admin/js/bootstrap.min.js"></script>
	<!-- /Bootstrap Core JavaScript -->
	<!-- real-time -->
	<script language="javascript" type="text/javascript"
		src="${contextPath}/resources/admin/js/jquery.flot.js"></script>
	<script type="text/javascript">
		$(function() {

			// We use an inline data source in the example, usually data would
			// be fetched from a server

			var data = [], totalPoints = 300;

			function getRandomData() {

				if (data.length > 0)
					data = data.slice(1);

				// Do a random walk

				while (data.length < totalPoints) {

					var prev = data.length > 0 ? data[data.length - 1] : 50, y = prev
							+ Math.random() * 10 - 5;

					if (y < 0) {
						y = 0;
					} else if (y > 100) {
						y = 100;
					}

					data.push(y);
				}

				// Zip the generated y values with the x values

				var res = [];
				for (var i = 0; i < data.length; ++i) {
					res.push([ i, data[i] ])
				}

				return res;
			}

			// Set up the control widget

			var updateInterval = 30;
			$("#updateInterval").val(updateInterval).change(function() {
				var v = $(this).val();
				if (v && !isNaN(+v)) {
					updateInterval = +v;
					if (updateInterval < 1) {
						updateInterval = 1;
					} else if (updateInterval > 2000) {
						updateInterval = 2000;
					}
					$(this).val("" + updateInterval);
				}
			});

			var plot = $.plot("#placeholder", [ getRandomData() ], {
				series : {
					shadowSize : 0
				// Drawing is faster without shadows
				},
				yaxis : {
					min : 0,
					max : 100
				},
				xaxis : {
					show : false
				}
			});

			function update() {

				plot.setData([ getRandomData() ]);

				// Since the axes don't change, we don't need to call plot.setupGrid()

				plot.draw();
				setTimeout(update, updateInterval);
			}

			update();

			// Add the Flot version string to the footer

			$("#footer").prepend("Flot " + $.plot.version + " &ndash; ");
		});
	</script>
	<!-- /real-time -->
	<script src="${contextPath}/resources/admin/js/jquery.fn.gantt.js"></script>
	<script>
		$(function() {

			"use strict";

			$(".gantt").gantt({
				source : [ {
					name : "Sprint 0",
					desc : "Analysis",
					values : [ {
						from : "/Date(1320192000000)/",
						to : "/Date(1322401600000)/",
						label : "Requirement Gathering",
						customClass : "ganttRed"
					} ]
				}, {
					name : " ",
					desc : "Scoping",
					values : [ {
						from : "/Date(1322611200000)/",
						to : "/Date(1323302400000)/",
						label : "Scoping",
						customClass : "ganttRed"
					} ]
				}, {
					name : "Sprint 1",
					desc : "Development",
					values : [ {
						from : "/Date(1323802400000)/",
						to : "/Date(1325685200000)/",
						label : "Development",
						customClass : "ganttGreen"
					} ]
				}, {
					name : " ",
					desc : "Showcasing",
					values : [ {
						from : "/Date(1325685200000)/",
						to : "/Date(1325695200000)/",
						label : "Showcasing",
						customClass : "ganttBlue"
					} ]
				}, {
					name : "Sprint 2",
					desc : "Development",
					values : [ {
						from : "/Date(1326785200000)/",
						to : "/Date(1325785200000)/",
						label : "Development",
						customClass : "ganttGreen"
					} ]
				}, {
					name : " ",
					desc : "Showcasing",
					values : [ {
						from : "/Date(1328785200000)/",
						to : "/Date(1328905200000)/",
						label : "Showcasing",
						customClass : "ganttBlue"
					} ]
				}, {
					name : "Release Stage",
					desc : "Training",
					values : [ {
						from : "/Date(1330011200000)/",
						to : "/Date(1336611200000)/",
						label : "Training",
						customClass : "ganttOrange"
					} ]
				}, {
					name : " ",
					desc : "Deployment",
					values : [ {
						from : "/Date(1336611200000)/",
						to : "/Date(1338711200000)/",
						label : "Deployment",
						customClass : "ganttOrange"
					} ]
				}, {
					name : " ",
					desc : "Warranty Period",
					values : [ {
						from : "/Date(1336611200000)/",
						to : "/Date(1349711200000)/",
						label : "Warranty Period",
						customClass : "ganttOrange"
					} ]
				} ],
				navigate : "scroll",
				scale : "weeks",
				maxScale : "months",
				minScale : "days",
				itemsPerPage : 10,
				onItemClick : function(data) {
					alert("Item clicked - show some details");
				},
				onAddClick : function(dt, rowId) {
					alert("Empty space clicked - add an item!");
				},
				onRender : function() {
					if (window.console && typeof console.log === "function") {
						console.log("chart rendered");
					}
				}
			});

			$(".gantt").popover({
				selector : ".bar",
				title : "I'm a popover",
				content : "And I'm the content of said popover.",
				trigger : "hover"
			});

			prettyPrint();

		});
	</script>
	<script src="${contextPath}/resources/admin/js/menu_jquery.js"></script>
</body>
</html>
<script>
	function logout() {
		$("#logout").submit();
	}
</script>
