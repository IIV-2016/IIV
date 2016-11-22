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
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/owl-carousel/owl-carousel/owl.carousel.css">

	<!-- CSS Page Style -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/pages/portfolio-v2.css">
	<!-- CSS Theme -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/theme-colors/dark-blue.css" id="style_color">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/theme-skins/dark.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/custom.css">
	<style>
	.img-size{
	height : 230px;
	}
	</style>
</head>

<body class="header-fixed header-fixed-space">
	<div class="wrapper">
		<sec:authorize access="isAnonymous()">
			<%@include file="/WEB-INF/jsp/header.jsp"%>
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
			<%@include file="/WEB-INF/jsp/header2.jsp"%>
		</sec:authorize>
		<!--=== Breadcrumbs ===-->
		<div class="breadcrumbs">
			<div class="container">
				<h1 class="pull-left">Gallery</h1>
				<ul class="pull-right breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li><a href="">introduce</a></li>
					<li class="active">Gallery</li>
				</ul>
			</div><!--/container-->
		</div><!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->
		<!--=== Content Part ===-->
		<div class="container content">
			<!-- Portfolio Sorting Blocks -->
			<div class="sorting-block">
				<div class="content-xs">
					<ul class="sorting-nav sorting-nav-v1 text-center">
						<li class="filter" data-filter="all">All</li>
						<li class="filter" data-filter="category_1">2016</li>
						<li class="filter" data-filter="category_2">2015</li>
						<li class="filter" data-filter="category_3">2014</li>
						<li class="filter" data-filter="category_4">2013</li>
						<li class="filter" data-filter="category_5">Projects</li>
					</ul>
				</div>

				<ul class="row sorting-grid">
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_1" data-cat="1">
						<a href="https://www.flickr.com/photos/131710251@N06/albums/72157669609061054">
							<img class="img-responsive img-size" src="https://c1.staticflickr.com/9/8465/29122363575_5bf3d4b77d_b.jpg" alt="">
							<span class="sorting-cover">
								<span>The 2nd IIV2016 Evaluation</span>
								<p>Certification Ceremony</p>
							</span>
						</a>
					</li>
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_1" data-cat="3">
						<a href="https://www.flickr.com/photos/131710251@N06/albums/72157672063131956">
							<img class="img-responsive img-size" src="https://c1.staticflickr.com/9/8237/28560433700_155afed7a8_b.jpg" alt="">
							<span class="sorting-cover">
								<span>International ICT Volunteers 2016</span>
								<p>Certification Ceremony</p>
							</span>
						</a>
					</li>
					<li class="col-md-3 col-sm-6 col-xs-12 mix ategory_1" data-cat="2">
						<a href="https://www.flickr.com/photos/131710251@N06/albums/72157669668783980">
							<img class="img-responsive img-size" src="https://c2.staticflickr.com/8/7396/28030138242_19c2e5c715_b.jpg" alt="">
							<span class="sorting-cover">
								<span>IIV 2016 Boot Camp</span>
								<p>Day3</p>
							</span>
						</a>
					</li>
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_1" data-cat="3">
						<a href="https://www.flickr.com/photos/131710251@N06/albums/72157669994593732s">
							<img class="img-responsive img-size" src="https://c2.staticflickr.com/8/7656/28028473771_ebd5a8f796_b.jpg" alt="">
							<span class="sorting-cover">
								<span>IIV 2016 Boot Camp</span>
								<p>Day2</p>
							</span>
						</a>
					</li>
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_1" data-cat="2">
						<a href="#">
							<img class="img-responsive img-size" src="https://c2.staticflickr.com/8/7369/27806106790_17fe57a10c_b.jpg" alt="">
							<span class="sorting-cover">
								<span>IIV 2016 Boot Camp</span>
								<p>Day1</p>
							</span>
						</a>
					</li>
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_1" data-cat="1">
						<a href="#">
							<img class="img-responsive img-size" src="https://c2.staticflickr.com/8/7252/26306798533_c569004ba0_b.jpg" alt="">
							<span class="sorting-cover">
								<span>IIV 2016 Interview day</span>
								<p>KIV</p>
							</span>
						</a>
					</li>
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_1" data-cat="2">
						<a href="#">
							<img class="img-responsive img-size" src="https://c2.staticflickr.com/2/1534/25755895584_0802be7774_b.jpg" alt="">
							<span class="sorting-cover">
								<span>IIV2016 Promotion at University</span>
								<p>at University</p>
							</span>
						</a>
					</li>
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_2" data-cat="1">
						<a href="#">
							<img class="img-responsive img-size" src="https://c2.staticflickr.com/6/5664/20891981599_3375b52064_b.jpg" alt="">
							<span class="sorting-cover">
								<span>IIV Boot Camp 2015</span>
								<p>Day 1</p>
							</span>
						</a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<!-- End Portfolio Sorting Blocks -->
		</div><!--/container-->
		<!--=== End Content Part ===-->
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
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/jquery.mixitup.min.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/app.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/pages/page_portfolio.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/plugins/style-switcher.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			StyleSwitcher.initStyleSwitcher();
			PortfolioPage.init();
		});
	</script>
	<!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/plugins/respond.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/placeholder-IE-fixes.js"></script>
  <![endif]-->
</body>
</html>
