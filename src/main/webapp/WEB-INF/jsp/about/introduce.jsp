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
					<li><a href="#organization-1" data-toggle="tab">Organization</a></li>
					<li><a href="#sponsors-1" data-toggle="tab">Sponsors</a></li>
					<li><a href="#process-1" data-toggle="tab">Process</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane fade in active" id="background-1">
						<h4>Heading Sample 1</h4>
						<p>Vivamus imperdiet condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum <strong>ivamus imperdiet</strong> condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, ac adipiscing nunc. Pellentesque <strong>fermentum vivamus</strong> imperdiet condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, ante ac felis consectetur id. Donec eget orci metusvivamus imperdiet.</p>
					</div>
					<div class="tab-pane fade in" id="history-1">
						<div class="heading heading-v1">
							<h2>IIV history</h2>
						</div>
						<!-- Begin Content -->
							<ul class="timeline-v2">
								<li class="equal-height-columns">
									<div class="cbp_tmtime equal-height-column"><span>4/1/08</span> <span>January</span></div>
									<i class="cbp_tmicon rounded-x hidden-xs"></i>
									<div class="cbp_tmlabel equal-height-column">
										<h2>Our first step</h2>
										<div class="row">
											<div class="col-md-4">
												<img class="img-responsive" src="assets/img/main/img1.jpg" alt="">
												<div class="md-margin-bottom-20"></div>
											</div>
											<div class="col-md-8">
												<p>Winter purslane courgette pumpkin quandong komatsuna fennel green bean cucumber watercress. Pea sprouts wattle seed rutabaga okra yarrow cress avocado grape.</p>
												<p>Cabbage lentil cucumber chickpea sorrel gram garbanzo plantain lotus root bok choy squash cress potato.</p>
											</div>
										</div>
									</div>
								</li>
								<li class="equal-height-columns">
									<div class="cbp_tmtime equal-height-column"><span>7/2/09</span> <span>February</span></div>
									<i class="cbp_tmicon rounded-x hidden-xs"></i>
									<div class="cbp_tmlabel equal-height-column">
										<h2>First achievements</h2>
										<p>Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi.</p>
										<div class="row">
											<div class="col-sm-6">
												<ul class="list-unstyled">
													<li><i class="fa fa-check color-green"></i> Donec id elit non mi porta gravida</li>
													<li><i class="fa fa-check color-green"></i> Corporate and Creative</li>
													<li><i class="fa fa-check color-green"></i> Responsive Bootstrap Template</li>
													<li><i class="fa fa-check color-green"></i> Corporate and Creative</li>
												</ul>
											</div>
											<div class="col-sm-6">
												<ul class="list-unstyled">
													<li><i class="fa fa-check color-green"></i> Donec id elit non mi porta gravida</li>
													<li><i class="fa fa-check color-green"></i> Corporate and Creative</li>
													<li><i class="fa fa-check color-green"></i> Responsive Bootstrap Template</li>
													<li><i class="fa fa-check color-green"></i> Corporate and Creative</li>
												</ul>
											</div>
										</div>
									</div>
								</li>
								<li class="equal-height-columns">
									<div class="cbp_tmtime equal-height-column"><span>28/6/12</span> <span>May</span></div>
									<i class="cbp_tmicon rounded-x hidden-xs"></i>
									<div class="cbp_tmlabel equal-height-column">
										<h2>Difficulties</h2>
										<p>Parsley amaranth tigernut silver beet maize fennel spinach. Ricebean black-eyed pea maize scallion green bean spinach cabbage jícama bell pepper carrot onion corn plantain garbanzo. Sierra leone bologi komatsuna celery peanut swiss chard silver beet squash dandelion maize chicory burdock tatsoi dulse radish wakame beetroot.</p>
									</div>
								</li>
								<li class="equal-height-columns">
									<div class="cbp_tmtime equal-height-column"><span>11/3/10</span> <span>March</span></div>
									<i class="cbp_tmicon rounded-x hidden-xs"></i>
									<div class="cbp_tmlabel equal-height-column">
										<h2>Our Popularity</h2>
										<p>Parsnip lotus root celery yarrow seakale tomato collard greens tigernut epazote ricebean melon tomatillo soybean chicory broccoli beet greens peanut salad. Lotus root burdock bell pepper chickweed shallot groundnut pea sprouts welsh onion wattle seed pea salsify turnip scallion peanut arugula bamboo shoot onion swiss chard.</p>
		
										<div class="margin-bottom-20"></div>
		
										<div class="row">
											<div class="col-sm-6">
												<!-- Progress Bar Text -->
												<div class="progress-bar-text">
													<p class="text-left">HTML &amp; CSS</p>
													<p class="text-right">91%</p>
													<div class="progress progress-u progress-xs">
														<div class="progress-bar progress-bar-u progress-bar-u-success" role="progressbar" aria-valuenow="91" aria-valuemin="0" aria-valuemax="100" style="width: 91%">
														</div>
													</div>
												</div>
												<!-- End Progress Bar Text -->
		
												<!-- Progress Bar Text -->
												<div class="progress-bar-text">
													<p class="text-left">Web Animation</p>
													<p class="text-right">55%</p>
													<div class="progress progress-u progress-xs">
														<div class="progress-bar progress-bar-u progress-bar-u-info" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100" style="width: 55%">
														</div>
													</div>
												</div>
												<!-- End Progress Bar Text -->
											</div>
		
											<div class="col-sm-6">
												<!-- Progress Bar Text -->
												<div class="progress-bar-text">
													<p class="text-left">Web Design</p>
													<p class="text-right">67%</p>
													<div class="progress progress-u progress-xs">
														<div class="progress-bar progress-bar-u progress-bar-u-danger" role="progressbar" aria-valuenow="67" aria-valuemin="0" aria-valuemax="100" style="width: 67%">
														</div>
													</div>
												</div>
												<!-- End Progress Bar Text -->
		
												<!-- Progress Bar Text -->
												<div class="progress-bar-text">
													<p class="text-left">PHP &amp; Javascript</p>
													<p class="text-right">73%</p>
													<div class="progress progress-u progress-xs">
														<div class="progress-bar progress-bar-u progress-bar-u-warning" role="progressbar" aria-valuenow="73" aria-valuemin="0" aria-valuemax="100" style="width: 73%">
														</div>
													</div>
												</div>
												<!-- End Progress Bar Text -->
											</div>
										</div>
									</div>
								</li>
								<li class="equal-height-columns">
									<div class="cbp_tmtime equal-height-column"><span>2/4/11</span> <span>April</span></div>
									<i class="cbp_tmicon rounded-x hidden-xs"></i>
									<div class="cbp_tmlabel equal-height-column">
										<h2>Back to the past</h2>
										<p>Peanut gourd nori welsh onion rock melon mustard jícama. Desert raisin amaranth kombu aubergine kale seakale brussels sprout pea. Black-eyed pea celtuce bamboo shoot salad kohlrabi leek squash prairie turnip catsear rock melon chard taro broccoli turnip greens. Fennel quandong potato watercress ricebean swiss chard garbanzo. Endive daikon brussels sprout lotus root silver beet epazote melon shallot.</p>
									</div>
								</li>
								<li class="equal-height-columns">
									<div class="cbp_tmtime equal-height-column"><span>18/7/13</span> <span>June</span></div>
									<i class="cbp_tmicon rounded-x hidden-xs"></i>
									<div class="cbp_tmlabel equal-height-column">
										<h2>Unify in recent years</h2>
										<p>Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi.</p>
										<p>Bitterleaf celery coriander epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout.</p>
		
										<div class="margin-bottom-20"></div>
		
										<div class="row">
											<div class="col-md-4 col-xs-6">
												<img class="img-responsive md-margin-bottom-10" src="assets/img/main/img2.jpg" alt="">
											</div>
											<div class="col-md-4 col-xs-6">
												<img class="img-responsive md-margin-bottom-10" src="assets/img/main/img4.jpg" alt="">
											</div>
											<div class="col-md-4 col-xs-6">
												<img class="img-responsive md-margin-bottom-10" src="assets/img/main/img3.jpg" alt="">
											</div>
										</div>
									</div>
								</li>
							</ul>
						<!-- End Content -->					
					</div>
					<div class="tab-pane fade in" id="organization-1">
						<h4>Heading Sample 3</h4>
						<p><img alt="" class="pull-right rgt-img-margin img-width-200" src="assets/img/main/img21.jpg"> <strong>Vivamus imperdiet condimentum diam, eget placerat felis consectetur id.</strong> Donec eget orci metus, Vivamus imperdiet condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, ante ac interdum ullamcorper. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, consectetur id. Donec eget orci metus, ac adipiscing nunc. <strong>Pellentesque fermentum</strong>, ante ac interdum ullamcorper. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, ante ac interdum ullamcorper.</p>
					</div>
					<div class="tab-pane fade in" id="sponsors-1">
						<h4>Heading Sample 4</h4>
						<p><img alt="" class="pull-right rgt-img-margin img-width-200" src="assets/img/main/img23.jpg"> Vivamus imperdiet condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, Vivamus imperdiet condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, ante ac interdum ullamcorper. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, consectetur id. Donec eget orci metus, ac adipiscing nunc. <strong>Pellentesque fermentum</strong>, ante ac interdum ullamcorper. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, ante ac interdum ullamcorper.</p>
					</div>
					<div class="tab-pane fade in" id="process-1">
						<h4>Heading Sample 4</h4>
						<p><img alt="" class="pull-right rgt-img-margin img-width-200" src="assets/img/main/img23.jpg"> Vivamus imperdiet condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, Vivamus imperdiet condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, ante ac interdum ullamcorper. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, consectetur id. Donec eget orci metus, ac adipiscing nunc. <strong>Pellentesque fermentum</strong>, ante ac interdum ullamcorper. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, ante ac interdum ullamcorper.</p>
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
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			StyleSwitcher.initStyleSwitcher();
		});
	</script>
	<!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/plugins/respond.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/placeholder-IE-fixes.js"></script>
  <![endif]-->
</body>
</html>
