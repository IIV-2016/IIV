<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/pages/blog_masonry_3col.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/pages/profile.css">
	
	<!-- CSS Theme -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/theme-colors/dark-blue.css" id="style_color">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/theme-skins/dark.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/custom.css">
	<style>
	.img-size{
		height : 200px;
		width: 100%;
		border: 1px solid rgba(128, 128, 128, 0.1);
	}
	</style>
</head>

<body class="header-fixed header-fixed-space index-page">
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
				<h1 class="pull-left">IIV News & Notice</h1>
				<ul class="pull-right breadcrumb">
					<li><a href="<%=request.getContextPath()%>/home">Home</a></li>
					<li class="active">IIV News & Notice</li>
				</ul>
			</div>
		</div><!--/breadcrumbs-->
		<!--Testimonials v1-->
		<div class="container content profile">
			<div class="col-md-12">
				<div class="margin-bottom-40">
					<div id="testimonials-1" class="carousel slide testimonials testimonials-v1">
						<div class="carousel-inner">
							<div class="item active">
								<p>Crasjusto ducimus qui cupiditate non provident, similique sunt in culpaid est anditiis praesentium praesentium blanditiis praesentium non provident, similique sunt in culpaid est anditiis praesentium praesentium..</p>
								<div class="testimonial-info">
									<img class="rounded-x" src="assets/img/testimonials/img1.jpg" alt="">
									<span class="testimonial-author">
										Jeremy Asigner
										<em>Web Developer, Unify Theme.</em>
									</span>
								</div>
							</div>
							<div class="item">
								<p>Crasjusto ducimus qui cupiditate non provident, similique sunt in culpaid est anditiis praesentium praesentium blanditiis praesentium non provident, similique sunt in culpaid est anditiis praesentium praesentium..</p>
								<div class="testimonial-info">
									<img class="rounded-x" src="assets/img/testimonials/user.jpg" alt="">
									<span class="testimonial-author">
										User
										<em>Java Developer, Htmlstream</em>
									</span>
								</div>
							</div>
						</div>
		
						<div class="carousel-arrow">
							<a class="left carousel-control" href="#testimonials-1" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							</a>
							<a class="right carousel-control" href="#testimonials-1" data-slide="next">
								<i class="fa fa-angle-right"></i>
							</a>
						</div>
					</div>
				</div>
			</div>

				<div class="col-md-12">
					<div class="profile-body margin-bottom-20">
						<!--Profile Blog-->
						<div class="row margin-bottom-20">
							<div class="col-sm-6 sm-margin-bottom-20">
								<div class="profile-blog">
									<img class="rounded-x" src="assets/img/testimonials/img1.jpg" alt="">
									<div class="name-location">
										<strong>Mikel Andrews</strong>
										<span><i class="fa fa-map-marker"></i><a href="#">California,</a> <a href="#">US</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<p>Donec non dignissim eros. Mauris faucibus turpis volutpat sagittis rhoncus. Pellentesque et rhoncus sapien, sed ullamcorper justo.</p>
									<hr>
									<ul class="list-inline share-list">
										<li><i class="fa fa-bell"></i><a href="#">12 Notifications</a></li>
										<li><i class="fa fa-group"></i><a href="#">54 Followers</a></li>
										<li><i class="fa fa-share"></i><a href="#">Share</a></li>
									</ul>
								</div>
							</div>

							<div class="col-sm-6">
								<div class="profile-blog">
									<img class="rounded-x" src="assets/img/testimonials/user.jpg" alt="">
									<div class="name-location">
										<strong>Natasha Kolnikova</strong>
										<span><i class="fa fa-map-marker"></i><a href="#">Moscow,</a> <a href="#">Russia</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<p>Donec non dignissim eros. Mauris faucibus turpis volutpat sagittis rhoncus. Pellentesque et rhoncus sapien, sed ullamcorper justo.</p>
									<hr>
									<ul class="list-inline share-list">
										<li><i class="fa fa-bell"></i><a href="#">37 Notifications</a></li>
										<li><i class="fa fa-group"></i><a href="#">46 Followers</a></li>
										<li><i class="fa fa-share"></i><a href="#">Share</a></li>
									</ul>
								</div>
							</div>
						</div><!--/end row-->
						<!--End Profile Blog-->

						<!--Profile Blog-->
						<div class="row margin-bottom-20">
							<div class="col-sm-6 sm-margin-bottom-20">
								<div class="profile-blog">
									<img class="rounded-x" src="assets/img/testimonials/img2.jpg" alt="">
									<div class="name-location">
										<strong>Sasha Elli</strong>
										<span><i class="fa fa-map-marker"></i><a href="#">California,</a> <a href="#">US</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<p>Donec non dignissim eros. Mauris faucibus turpis volutpat sagittis rhoncus. Pellentesque et rhoncus sapien, sed ullamcorper justo.</p>
									<hr>
									<ul class="list-inline share-list">
										<li><i class="fa fa-bell"></i><a href="#">3 Notifications</a></li>
										<li><i class="fa fa-group"></i><a href="#">25 Followers</a></li>
										<li><i class="fa fa-share"></i><a href="#">Share</a></li>
									</ul>
								</div>
							</div>

							<div class="col-sm-6">
								<div class="profile-blog">
									<img class="rounded-x" src="assets/img/testimonials/img3.jpg" alt="">
									<div class="name-location">
										<strong>Frank Heller</strong>
										<span><i class="fa fa-map-marker"></i><a href="#">Moscow,</a> <a href="#">Russia</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<p>Donec non dignissim eros. Mauris faucibus turpis volutpat sagittis rhoncus. Pellentesque et rhoncus sapien, sed ullamcorper justo.</p>
									<hr>
									<ul class="list-inline share-list">
										<li><i class="fa fa-bell"></i><a href="#">7 Notifications</a></li>
										<li><i class="fa fa-group"></i><a href="#">77 Followers</a></li>
										<li><i class="fa fa-share"></i><a href="#">Share</a></li>
									</ul>
								</div>
							</div>
						</div><!--/end row-->
						<!--End Profile Blog-->

						<!--Profile Blog-->
						<div class="row margin-bottom-20">
							<div class="col-sm-6 sm-margin-bottom-20">
								<div class="profile-blog">
									<img class="rounded-x" src="assets/img/testimonials/user.jpg" alt="">
									<div class="name-location">
										<strong>John W.A</strong>
										<span><i class="fa fa-map-marker"></i><a href="#">California,</a> <a href="#">US</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<p>Donec non dignissim eros. Mauris faucibus turpis volutpat sagittis rhoncus. Pellentesque et rhoncus sapien, sed ullamcorper justo.</p>
									<hr>
									<ul class="list-inline share-list">
										<li><i class="fa fa-bell"></i><a href="#">0 Notifications</a></li>
										<li><i class="fa fa-group"></i><a href="#">9 Followers</a></li>
										<li><i class="fa fa-share"></i><a href="#">Share</a></li>
									</ul>
								</div>
							</div>

							<div class="col-sm-6">
								<div class="profile-blog">
									<img class="rounded-x" src="assets/img/testimonials/img5.jpg" alt="">
									<div class="name-location">
										<strong>Natalia J.</strong>
										<span><i class="fa fa-map-marker"></i><a href="#">Moscow,</a> <a href="#">Russia</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<p>Donec non dignissim eros. Mauris faucibus turpis volutpat sagittis rhoncus. Pellentesque et rhoncus sapien, sed ullamcorper justo.</p>
									<hr>
									<ul class="list-inline share-list">
										<li><i class="fa fa-bell"></i><a href="#">56 Notifications</a></li>
										<li><i class="fa fa-group"></i><a href="#">125 Followers</a></li>
										<li><i class="fa fa-share"></i><a href="#">Share</a></li>
									</ul>
								</div>
							</div>
						</div><!--/end row-->

						<!--Profile Blog-->
						<div class="row margin-bottom-20">
							<div class="col-sm-6 sm-margin-bottom-20">
								<div class="profile-blog">
									<img class="rounded-x" src="assets/img/testimonials/img4.jpg" alt="">
									<div class="name-location">
										<strong>Pavel Kolnikov</strong>
										<span><i class="fa fa-map-marker"></i><a href="#">Moscow,</a> <a href="#">Russia</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<p>Donec non dignissim eros. Mauris faucibus turpis volutpat sagittis rhoncus. Pellentesque et rhoncus sapien, sed ullamcorper justo.</p>
									<hr>
									<ul class="list-inline share-list">
										<li><i class="fa fa-bell"></i><a href="#">37 Notifications</a></li>
										<li><i class="fa fa-group"></i><a href="#">46 Followers</a></li>
										<li><i class="fa fa-share"></i><a href="#">Share</a></li>
									</ul>
								</div>
							</div>

							<div class="col-sm-6">
								<div class="profile-blog">
									<img class="rounded-x" src="assets/img/testimonials/img6.jpg" alt="">
									<div class="name-location">
										<strong>Taylor Lee</strong>
										<span><i class="fa fa-map-marker"></i><a href="#">California,</a> <a href="#">US</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<p>Donec non dignissim eros. Mauris faucibus turpis volutpat sagittis rhoncus. Pellentesque et rhoncus sapien, sed ullamcorper justo.</p>
									<hr>
									<ul class="list-inline share-list">
										<li><i class="fa fa-bell"></i><a href="#">0 Notifications</a></li>
										<li><i class="fa fa-group"></i><a href="#">9 Followers</a></li>
										<li><i class="fa fa-share"></i><a href="#">Share</a></li>
									</ul>
								</div>
							</div>
						</div><!--/end row-->
						<!--End Profile Blog-->

						<!--Profile Blog-->
						<div class="row margin-bottom-20">
							<div class="col-sm-6 sm-margin-bottom-20">
								<div class="profile-blog">
									<img class="rounded-x" src="assets/img/testimonials/img3.jpg" alt="">
									<div class="name-location">
										<strong>Frank Heller</strong>
										<span><i class="fa fa-map-marker"></i><a href="#">Moscow,</a> <a href="#">Russia</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<p>Donec non dignissim eros. Mauris faucibus turpis volutpat sagittis rhoncus. Pellentesque et rhoncus sapien, sed ullamcorper justo.</p>
									<hr>
									<ul class="list-inline share-list">
										<li><i class="fa fa-bell"></i><a href="#">7 Notifications</a></li>
										<li><i class="fa fa-group"></i><a href="#">77 Followers</a></li>
										<li><i class="fa fa-share"></i><a href="#">Share</a></li>
									</ul>
								</div>
							</div>

							<div class="col-sm-6">
								<div class="profile-blog">
									<img class="rounded-x" src="assets/img/testimonials/img2.jpg" alt="">
									<div class="name-location">
										<strong>Sasha Elli</strong>
										<span><i class="fa fa-map-marker"></i><a href="#">California,</a> <a href="#">US</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<p>Donec non dignissim eros. Mauris faucibus turpis volutpat sagittis rhoncus. Pellentesque et rhoncus sapien, sed ullamcorper justo.</p>
									<hr>
									<ul class="list-inline share-list">
										<li><i class="fa fa-bell"></i><a href="#">3 Notifications</a></li>
										<li><i class="fa fa-group"></i><a href="#">25 Followers</a></li>
										<li><i class="fa fa-share"></i><a href="#">Share</a></li>
									</ul>
								</div>
							</div>
						</div><!--/end row-->
					</div>
				</div>
			
		</div>
		<!--=== End Footer Version 1 ===-->
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
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/pages/blog-masonry.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/masonry/jquery.masonry.min.js"></script>
	
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
