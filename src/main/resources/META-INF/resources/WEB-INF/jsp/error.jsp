<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<title>error</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Web Fonts -->
	<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/headers/header-v6.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/footers/footer-v1.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/animate.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/font-awesome/css/font-awesome.min.css">

	<!-- CSS Page Style -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/pages/page_404_error.css">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/theme-colors/dark-blue.css" id="style_color">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/theme-skins/dark.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/custom.css">
</head>

<body class="header-fixed header-fixed-space">
	<div class="wrapper">
<div class="header-v6 header-classic-white header-sticky header-fixed-shrink">
	<!-- Navbar -->
	<div class="navbar mega-menu" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="menu-container">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

				<!-- Navbar Brand -->
				<div class="navbar-brand">
					<a href="<%=request.getContextPath()%>/home">
						<img class="shrink-logo" src="<%=request.getContextPath()%>/img/iivlogo.png" alt="Logo">
					</a>
				</div>
				<!-- End Navbar Brand -->

				<!-- Header Inner Right -->
				<div class="header-inner-right">
					<ul class="menu-icons-list">
						<li class="menu-icons shopping-cart">
							<i class="menu-icons-style radius-x fa fa-user"></i>
							<div class="shopping-cart-open">
								<span class="shc-title">Login to your account</span>
								<a href="<%=request.getContextPath()%>/user/login" class="btn-u">Login</a>
								<a href="<%=request.getContextPath()%>/user/registration"><span class="shc-total">Sing up</span></a>
							</div>
						</li>
						<li class="menu-icons">
							<i class="menu-icons-style search search-close search-btn fa fa-search"></i>
							<div class="search-open">
								<input type="text" class="animated fadeIn form-control" placeholder="Start searching ...">
							</div>
						</li>
					</ul>
				</div>
				<!-- End Header Inner Right -->
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-responsive-collapse">
				<div class="menu-container">
					<ul class="nav navbar-nav">
						<!-- Home -->
						<li class="dropdown">
							<a href="<%=request.getContextPath()%>/home"> Home </a>
						</li>
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								About IIV
							</a>
							<ul class="dropdown-menu">
								<li><a href="<%=request.getContextPath()%>/about/introduce">Introduction</a></li>
								<li><a href="<%=request.getContextPath()%>/about/gallery">Gallery</a></li>
								<li><a href="<%=request.getContextPath()%>/about/dispatch">Dispatch</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								Activity
							</a>
							<ul class="dropdown-menu">
								<li><a href="<%=request.getContextPath()%>/activity/home">Home</a></li>
								<li><a href="<%=request.getContextPath()%>/activity/list">List</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								Community
							</a>
							<ul class="dropdown-menu">
								<li><a href="<%=request.getContextPath()%>/community/notice">Notice</a></li>
								<li><a href="<%=request.getContextPath()%>/community/board">Board</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								Alumni
							</a>
							<ul class="dropdown-menu">
								<li><a href="<%=request.getContextPath()%>/alumni/home">Home</a></li>
								<li><a href="<%=request.getContextPath()%>/alumni/board">Board</a></li>
								<li><a href="<%=request.getContextPath()%>/alumni/iivprofile">IIV Profile</a></li>
							</ul>
						</li>																																
					</ul>
				</div>
			</div><!--/navbar-collapse-->
		</div>
	</div>
	<!-- End Navbar -->
</div>
		<!--=== Breadcrumbs ===-->
		<div class="breadcrumbs">
			<div class="container">
				<h1 class="pull-left">404 Error</h1>
				<ul class="pull-right breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li><a href="">Pages</a></li>
					<li class="active">404 Error</li>
				</ul>
			</div>
		</div><!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->

		<!--=== Content Part ===-->
		<div class="container content">
			<!--Error Block-->
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="error-v1">
						<span class="error-v1-title">404</span>
						<span>${message}</span>
						<p>login</p>
						<a class="btn-u btn-bordered" href="<%=request.getContextPath()%>/user/login">Login</a>
					</div>
				</div>
			</div>
			<!--End Error Block-->
		</div>
		<%@include file="/WEB-INF/jsp/footer.jsp"%>
	</div><!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/smoothScroll.js"></script>
	<!-- JS Customization -->
	<!-- JS Page Level -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/app.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
		});
	</script>
	<!--[if lt IE 9]>
	<script src="<%=request.getContextPath()%>/plugins/respond.js"></script>
	<script src="<%=request.getContextPath()%>/plugins/html5shiv.js"></script>
	<script src="<%=request.getContextPath()%>/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->
</body>
</html>
