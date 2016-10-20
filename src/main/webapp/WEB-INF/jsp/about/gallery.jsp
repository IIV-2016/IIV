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
						<li class="filter" data-filter="category_1">UI Design</li>
						<li class="filter" data-filter="category_2">Wordpress</li>
						<li class="filter" data-filter="category_3">HTML5/CSS3</li>
						<li class="filter" data-filter="category_4">Bootstrap 3</li>
					</ul>
				</div>

				<ul class="row sorting-grid">
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_1 category_3" data-cat="1">
						<a href="#">
							<img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img11.jpg" alt="">
							<span class="sorting-cover">
								<span>Happy New Year</span>
								<p>Anim pariatur cliche reprehenderit</p>
							</span>
						</a>
					</li>
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_3 category_1" data-cat="3">
						<a href="#">
							<img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img12.jpg" alt="">
							<span class="sorting-cover">
								<span>Happy New Year</span>
								<p>Anim pariatur cliche reprehenderit</p>
							</span>
						</a>
					</li>
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_2 category_1" data-cat="2">
						<a href="#">
							<img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img13.jpg" alt="">
							<span class="sorting-cover">
								<span>Happy New Year</span>
								<p>Anim pariatur cliche reprehenderit</p>
							</span>
						</a>
					</li>
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_3 category_4" data-cat="3">
						<a href="#">
							<img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img3.jpg" alt="">
							<span class="sorting-cover">
								<span>Happy New Year</span>
								<p>Anim pariatur cliche reprehenderit</p>
							</span>
						</a>
					</li>
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_2 category_1 category_4" data-cat="2">
						<a href="#">
							<img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img2.jpg" alt="">
							<span class="sorting-cover">
								<span>Happy New Year</span>
								<p>Anim pariatur cliche reprehenderit</p>
							</span>
						</a>
					</li>
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_4" data-cat="1">
						<a href="#">
							<img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img6.jpg" alt="">
							<span class="sorting-cover">
								<span>Happy New Year</span>
								<p>Anim pariatur cliche reprehenderit</p>
							</span>
						</a>
					</li>
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_2 category_3  category_4" data-cat="2">
						<a href="#">
							<img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img8.jpg" alt="">
							<span class="sorting-cover">
								<span>Happy New Year</span>
								<p>Anim pariatur cliche reprehenderit</p>
							</span>
						</a>
					</li>
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_1 category_2 category_3" data-cat="1">
						<a href="#">
							<img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img1.jpg" alt="">
							<span class="sorting-cover">
								<span>Happy New Year</span>
								<p>Anim pariatur cliche reprehenderit</p>
							</span>
						</a>
					</li>
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_4 category_2" data-cat="1">
						<a href="#">
							<img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img11.jpg" alt="">
							<span class="sorting-cover">
								<span>Happy New Year</span>
								<p>Anim pariatur cliche reprehenderit</p>
							</span>
						</a>
					</li>
					<li class="col-md-3 col-sm-6 col-xs-12 mix category_3 category_2" data-cat="3">
						<a href="#">
							<img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img12.jpg" alt="">
							<span class="sorting-cover">
								<span>Happy New Year</span>
								<p>Anim pariatur cliche reprehenderit</p>
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
