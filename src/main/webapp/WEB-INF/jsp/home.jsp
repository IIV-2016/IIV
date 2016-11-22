<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<title>IIV Home</title>

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
	<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="css/headers/header-v6.css">
	<link rel="stylesheet" href="css/footers/footer-v1.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="plugins/parallax-slider/css/parallax-slider.css">
	<link rel="stylesheet" href="plugins/owl-carousel/owl-carousel/owl.carousel.css">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="css/theme-colors/dark-blue.css" id="style_color">
	<link rel="stylesheet" href="css/theme-skins/dark.css">
	<link rel="stylesheet" href="css/custom.css">
	<style>
	.img-size{
		height : 200px;
		width: 300px;
		border: 1px solid rgba(128, 128, 128, 0.1);
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
		<!--=== Slider ===-->
		<div class="slider-inner">
			<div id="da-slider" class="da-slider">
				<div class="da-slide">
					<h2><i>ICT Promotion</i><br> <i>People Network</i><br><i>Platform of Innovations</i></h2>
					<p><i>International ICT Volunteers (IIV)</i>
					<div class="da-img">
						<iframe src="https://www.youtube.com/embed/nERufye6ZhU" width="530" height="300" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
					</div>
				</div>
				<div class="da-arrows">
					<span class="da-arrows-prev"></span>
					<span class="da-arrows-next"></span>
				</div>
			</div>
		</div><!--/slider-->
		<!--=== End Slider ===-->

		<!--=== Purchase Block ===-->
		<div class="purchase">
			<div class="container overflow-h">
				<div class="row">
					<div class="col-md-9 animated fadeInLeft">
						<h2>About IIV</h2>
						<p>International ICT Volunteers (IIV) is an open international platform for mobilizing resource of volunteers who will help promote ICT development and for development in the Asia-Pacific region. 
						Since 2012, ITU and NIA have jointly dispatched over 520 Korean volunteers over 10 countries in the Asia-Pacific Region.
						</p>
					</div>
					<div class="col-md-3 btn-buy animated fadeInRight">
						<a href="<%=request.getContextPath()%>/about/introduce" class="btn-u btn-u-lg">About IIV</a>
					</div>
				</div>
			</div>
		</div><!--/row-->
		<!-- End Purchase Block -->

		<!--=== Content Part ===-->
		<div class="container content-sm">
			<!-- Service Blocks -->
			<div class="row margin-bottom-30">
				<div class="col-md-4">
					<div class="service">
						<i class="fa fa-compress service-icon"></i>
						<div class="desc">
							<h4>ICT Promotion</h4>
							<p>IIVs help promote digital societies and ICT literacy at all levels. They harness digital technologies to accelerate social and economic development</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="service">
						<i class="fa fa-cogs service-icon"></i>
						<div class="desc">
							<h4>People Network</h4>
							<p>IIV is an internationally social network of volunteers from different backgrounds, different countries, different age groups but common desire for doing good deeds.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="service">
						<i class="fa fa-rocket service-icon"></i>
						<div class="desc">
							<h4>Platform of Innovations</h4>
							<p>Bringing together various skills, knowledge, experiences, and spirits. We create a platform – the one that makes innovations and inspire people.</p>
						</div>
					</div>
				</div>
			</div>
			<!-- End Service Blokcs -->

			<!-- Recent Works -->
			<div class="headline"><h2>IIV News & Activities</h2></div>
			<div class="row margin-bottom-20">
				<c:forEach var="post" begin="0" end="3" items="${postList}" varStatus="status">
				<div class="col-md-3 col-sm-6">
					<div class="thumbnails thumbnail-style thumbnail-kenburn">
						<div class="thumbnail-img">
							<div class="overflow-hidden">
								<img class="img-responsive img-size" src="${post.fileId}" alt="">
							</div>
							<a class="btn-more hover-effect" href="<%=request.getContextPath()%>/activity/post/${post.id}">read more +</a>
						</div>
						<div class="caption">
							<h3>Weekly</h3>
							<span>${post.title}</span>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
			<!-- End Recent Works -->

			<!-- Info Blokcs -->
			<div class="row margin-bottom-30">
				<!-- Welcome Block -->
				<div class="col-md-8 md-margin-bottom-40">
					<div class="headline"><h2>What IIV is?</h2></div>
					<div class="row">
						<div class="col-sm-4">
							<img class="img-responsive margin-bottom-20" src="http://mm.sookmyung.ac.kr/~m1314694/iiv/photo/2016/Thailand/Khumsilkhumsil/Junsoo%20BAE.JPG" alt="">
						</div>
						<div class="col-sm-8">
					<p style="font-size: 10px;">The objective of the IIV program is to have you to participate in reducing the digital divide with your wonderful ability. You will probably leave your home town with passion and desire to "give" what you have. You may be excited, you may be worried until you arrive at the local. But don't worry. Wherever you are dispatched to, you will be the most welcomed person in the world! Fulfill your dreams, and also share your experiences to let others fulfill their dreams as well! As the time with the local people goes on, I assure that you will be feeling that you are being given more than you have been helpful to them. And at the end, you will recognize that, it was not about "giving", but all about "sharing".
					Through the program, the values and the view of life can be totally changed. What you will experience is what you cannot in Korea. So join in, and feel it by yourself!
					</p>
						</div>
					</div>

					<blockquote class="hero-unify">
					<h2>"International ICT Volunteers (IIV), the change of my values"</h2>
					<small>Junsu Bae, Kkumsil Kkumsil, Thailand 2016</small>
					</blockquote>
				</div><!--/col-md-8-->

				<!-- Latest Shots -->
				<div class="col-md-4">
					<div class="headline"><h2>Latest Shots</h2></div>
					<div id="myCarousel" class="carousel slide carousel-v1">
						<div class="carousel-inner">
							<div class="item active">
								<img src="https://c2.staticflickr.com/8/7420/27491078923_c0ed0c60f4_b.jpg" alt="">
								<div class="carousel-caption">
									<p>International ICT Volunteers 2016 Boot Camp</p>
								</div>
							</div>
							<div class="item">
								<img src="https://c1.staticflickr.com/9/8216/29159896496_660ca0bf43_b.jpg" alt="">
								<div class="carousel-caption">
									<p>The 2nd IIV2016 Evaluation - Certification Ceremony</p>
								</div>
							</div>
						</div>

						<div class="carousel-arrow">
							<a class="left carousel-control" href="#myCarousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							</a>
							<a class="right carousel-control" href="#myCarousel" data-slide="next">
								<i class="fa fa-angle-right"></i>
							</a>
						</div>
					</div>
				</div><!--/col-md-4-->
			</div>
			<!-- End Info Blokcs -->

			<!-- Owl Clients v1 -->
			<div class="headline"><h2>Our Partners</h2></div>
			<div class="owl-clients-v1">
				<div class="item">
					<img src="http://drive.google.com/uc?export=view&id=0B-YQl1gBpDIJV25FUFFfSGFMYXM" alt="">
				</div>
				<div class="item">
					<img src="http://drive.google.com/uc?export=view&id=0B-YQl1gBpDIJSHl1V21oSWNUZDA" alt="">
				</div>
				<div class="item">
					<img src="http://drive.google.com/uc?export=view&id=0B-YQl1gBpDIJX0pEQlRtNVdfV1U" alt="">
				</div>
				<div class="item">
					<img src="http://drive.google.com/uc?export=view&id=0B-YQl1gBpDIJZkJiTXFGd0ctb28" alt="">
				</div>
				<div class="item">
					<img src="http://drive.google.com/uc?export=view&id=0B-YQl1gBpDIJQVdpc3VNUHlBbGs" alt="">
				</div>
				<div class="item">
					<img src="http://drive.google.com/uc?export=view&id=0B-YQl1gBpDIJR3M1MlllVXFCNkk" alt="">
				</div>
				<div class="item">
					<img src="http://drive.google.com/uc?export=view&id=0B-YQl1gBpDIJbGpFUE9BN1hScHM" alt="">
				</div>
				<div class="item">
					<img src="http://drive.google.com/uc?export=view&id=0B-YQl1gBpDIJTlZNVkI3SFJkLVU" alt="">
				</div>
				<div class="item">
					<img src="http://drive.google.com/uc?export=view&id=0B-YQl1gBpDIJVjZRUjdJQzgxVEk" alt="">
				</div>
				
				<div class="item">
					<img src="http://drive.google.com/uc?export=view&id=0B-YQl1gBpDIJZnY2bm90NHdVRnc" alt="">
				</div>
				<div class="item">
					<img src="http://drive.google.com/uc?export=view&id=0B-YQl1gBpDIJcUlqYUZnMmlYek0" alt="">
				</div>
			</div>
			<!-- End Owl Clients v1 -->
		</div><!--/container-->
		<%@include file="/WEB-INF/jsp/footer.jsp"%>
	</div><!--/wrapper-->
	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="plugins/back-to-top.js"></script>
	<script type="text/javascript" src="plugins/smoothScroll.js"></script>
	<script type="text/javascript" src="plugins/parallax-slider/js/modernizr.js"></script>
	<script type="text/javascript" src="plugins/parallax-slider/js/jquery.cslider.js"></script>
	<script type="text/javascript" src="plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="js/app.js"></script>
	<script type="text/javascript" src="js/plugins/owl-carousel.js"></script>
	<script type="text/javascript" src="js/plugins/style-switcher.js"></script>
	<script type="text/javascript" src="js/plugins/parallax-slider.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			OwlCarousel.initOwlCarousel();
			StyleSwitcher.initStyleSwitcher();
			ParallaxSlider.initParallaxSlider();
		});
	</script>
	<!--[if lt IE 9]>
	<script src="plugins/respond.js"></script>
	<script src="plugins/html5shiv.js"></script>
	<script src="plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->
</body>
</html>
