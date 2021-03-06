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
				<h1 class="pull-left">Alumni Home</h1>
				<ul class="pull-right breadcrumb">
					<li>Alumni</li>
					<li class="active">Home</li>
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
								<p>${readAlumniUserList.get(0).introduction}</p>
								<div class="testimonial-info">
									<img class="rounded-x" src="${readAlumniUserList.get(0).img}" alt="">
									<span class="testimonial-author">
										${readAlumniUserList.get(0).username}
										<em>${readAlumniUserList.get(0).year}</em>
									</span>
								</div>
							</div>
						<c:forEach var="user" items="${readAlumniUserList}">
							<div class="item">
								<p>${user.introduction}</p>
								<div class="testimonial-info">
									<img class="rounded-x" src="${user.img}" alt="">
									<span class="testimonial-author">
										${user.username}
										<em>${user.year}</em>
									</span>
								</div>
							</div>
						</c:forEach>
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
					<c:forEach var="user" begin="0" end="5" items="${readAlumniUserList}" varStatus="status">
							<div class="col-sm-6 sm-margin-bottom-20">
								<div class="profile-blog margin-bottom-20">
									<img class="rounded-x" src="${user.img}" alt="">
									<div class="name-location">
										<strong>${user.username}</strong>
										<span><i class="fa fa-map-marker"></i><a href="#">${user.country}</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<hr>
									<ul class="list-inline share-list">
										<li><i class="fa fa-user" aria-hidden="true"></i><a href="#">${user.firstname} ${user.lastname}</a></li>
										<li><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="#">${user.email}</a></li>
									</ul>
								</div>
							</div>
					</c:forEach>											
					</div>
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
