<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Web Fonts -->
	<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/headers/header-v6.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/footers/footer-v1.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/font-awesome/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/pages/shortcode_timeline2.css">	

	<!-- CSS Theme -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/theme-colors/dark-blue.css" id="style_color">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/theme-skins/dark.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/custom.css">
</head>

<body class="header-fixed header-fixed-space">
	<div class="wrapper">
		<sec:authorize access="isAnonymous()">
			<%@include file="/WEB-INF/jsp/header.jsp"%>
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
			<%@include file="/WEB-INF/jsp/header2.jsp"%>
		</sec:authorize>
		<div class="breadcrumbs">
			<div class="container">
				<h1 class="pull-left">Introduce</h1>
				<ul class="pull-right breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li class="active">introduce</li>
				</ul>
			</div>
		</div>
		<div class="container content">
			<!-- Tab v2 -->
			<div class="tab-v2">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#background-1" data-toggle="tab">Background</a></li>
					<li><a href="#history-1" data-toggle="tab">History</a></li>
					<li><a href="#organization-1" data-toggle="tab">What IIVs Do?</a></li>
					<li><a href="#sponsors-1" data-toggle="tab">Process</a></li>
					<li><a href="#process-1" data-toggle="tab">Partners</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane fade in active" id="background-1">
						<%@include file="./background.jsp"%>
					</div>
					<div class="tab-pane fade in" id="history-1">
						<%@include file="./history.jsp"%>				
					</div>
					<div class="tab-pane fade in" id="organization-1">
						<%@include file="./what.jsp"%>
					</div>
					<div class="tab-pane fade in" id="sponsors-1">
						<h4>Heading Sample 4</h4>
						<p><img alt="" class="pull-right rgt-img-margin img-width-200" src="assets/img/main/img23.jpg"> Vivamus imperdiet condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, Vivamus imperdiet condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, ante ac interdum ullamcorper. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, consectetur id. Donec eget orci metus, ac adipiscing nunc. <strong>Pellentesque fermentum</strong>, ante ac interdum ullamcorper. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, ante ac interdum ullamcorper.</p>
					</div>
					<div class="tab-pane fade in" id="process-1">
						<%@include file="./partners.jsp"%>
					</div>					
				</div>
			</div>
			<!-- End Tab v2 -->
		</div>
		<%@include file="/WEB-INF/jsp/footer.jsp"%>
		<!--=== End Header v6 ===-->
	</div><!--/wrapper-->
	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/smoothScroll.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/jquery.parallax.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/app.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/plugins/style-switcher.js"></script>
	
	<!-- 1 -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/jquery-appear.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/plugins/fancy-box.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/plugins/progress-bar.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/plugins/owl-carousel.js"></script>
	
	<script type="text/javascript">
	jQuery(document).ready(function() {
		App.init();
		FancyBox.initFancybox();
		OwlCarousel.initOwlCarousel();
		StyleSwitcher.initStyleSwitcher();
		ProgressBar.initProgressBarHorizontal();
	});
	</script>
	<!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/plugins/respond.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/placeholder-IE-fixes.js"></script>
  <![endif]-->
</body>
</html>
