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
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/fancybox/source/jquery.fancybox.css">
	
	<!-- CSS Theme -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/theme-colors/dark-blue.css" id="style_color">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/theme-skins/dark.css">
	<link rel="stylesheet" href="/webjars/datatables/1.10.12/css/dataTables.bootstrap.min.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/custom.css">
	<style>
	table.dataTable thead .sorting:after {
	    content : none;
	}
	table.dataTable thead .sorting_asc:after {
		content : none;
	}
	table.dataTable thead .sorting_desc:after {
    content: none;
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
				<h1 class="pull-left">Community</h1>
				<ul class="pull-right breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li class="active">Community</li>
				</ul>
			</div>
		</div><!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->

		<!--=== Blog Posts ===-->
		<div class="container content-md">
			<div class="row">
				<!-- Blog All Posts -->
				<div class="col-md-9">
					<table id="example" cellspacing="0" width="100%">
					<thead>
					<th></th>
		        	</thead>
					<tbody>
					<!-- News v3 -->
					<c:forEach var="post" items="${postList}">
					<tr>
					<td>
					<div class="row margin-bottom-20">
						<div class="col-sm-4 sm-margin-bottom-20">
							<img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img12.jpg" alt="">
						</div>
						<div class="col-sm-7 news-v3">
							<div class="news-v3-in-sm no-padding">
								<ul class="list-inline posted-info">
									<li>${post.sector}</li>
									<li>By ${post.userId}</li>
									<li>${post.writeDate}</li>
								</ul>
								<h2><a href="<%=request.getContextPath()%>/activity/post/${post.id}">${post.title}</a></h2>
								<p>${post.content}</p>
								<ul class="post-shares">
									<li>
										<a href="#">
											<i class="rounded-x icon-speech"></i>
											<span></span>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="rounded-x icon-share"></i>
											<span>${post.views}</span>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="rounded-x icon-heart"></i>
											<span>${post.likes}</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div><!--/end row-->
					<!-- End News v3 -->
					<div class="clearfix margin-bottom-20"><hr></div>
					</td>
					</tr>
					</c:forEach>
					</tbody>
					</table>

					<!-- Pager v3 -->
					<!--
					<div class="text-center">
						<ul class="pagination">
							<li><a href="#">«</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li class="active"><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">6</a></li>
							<li><a href="#">7</a></li>
							<li><a href="#">8</a></li>
							<li><a href="#">»</a></li>
						</ul>
					</div>	
					-->				
					<!-- End Pager v3 -->
				</div>
				<!-- End Blog All Posts -->

				<!-- Blog Sidebar -->
				<div class="col-md-3">
					<div class="headline-v2 bg-color-light"><h2>Trending</h2></div>
					<!-- Trending -->
					<ul class="list-unstyled blog-trending margin-bottom-50">
						<li>
							<h3><a href="#">Proin dapibus ornare magna.</a></h3>
							<small>19 Jan, 2015 / <a href="#">Hi-Tech,</a> <a href="#">Technology</a></small>
						</li>
						<li>
							<h3><a href="#">Fusce at diam ante.</a></h3>
							<small>17 Jan, 2015 / <a href="#">Artificial Intelligence</a></small>
						</li>
						<li>
							<h3><a href="#">Donec quis consequat magna...</a></h3>
							<small>5 Jan, 2015 / <a href="#">Web,</a> <a href="#">Webdesign</a></small>
						</li>
					</ul>
					<!-- End Trending -->

					<div class="headline-v2 bg-color-light"><h2>Latest Posts</h2></div>
					<!-- Latest Links -->
					<ul class="list-unstyled blog-latest-posts margin-bottom-50">
						<li>
							<h3><a href="#">The point of using Lorem Ipsum</a></h3>
							<small>19 Jan, 2015 / <a href="#">Hi-Tech,</a> <a href="#">Technology</a></small>
							<p>Phasellus ullamcorper pellentesque ex. Cras venenatis elit orci, vitae dictum elit egestas a. Nunc nec auctor mauris, semper scelerisque nibh.</p>
						</li>
						<li>
							<h3><a href="#">Many desktop publishing packages...</a></h3>
							<small>23 Jan, 2015 / <a href="#">Art,</a> <a href="#">Lifestyles</a></small>
							<p>Integer vehicula sed justo ac dapibus. In sodales nunc non varius accumsan.</p>
						</li>
					</ul>
					<!-- End Latest Links -->

					<div class="headline-v2 bg-color-light"><h2>Tags</h2></div>
					<!-- Tags v2 -->
					<ul class="list-inline tags-v2 margin-bottom-50">
						<li><a href="#">Web Design</a></li>
						<li><a href="#">Economy</a></li>
						<li><a href="#">Sport</a></li>
						<li><a href="#">Marketing</a></li>
						<li><a href="#">Books</a></li>
						<li><a href="#">Elections</a></li>
						<li><a href="#">Flickr</a></li>
						<li><a href="#">Politics</a></li>
					</ul>
					<!-- End Tags v2 -->

					<div class="headline-v2 bg-color-light"><h2>Photostream</h2></div>
					<!-- Photostream -->
					<ul class="list-inline blog-photostream margin-bottom-50">
						<li>
							<a href="<%=request.getContextPath()%>/img/main/img22.jpg" rel="gallery" class="fancybox img-hover-v2" title="Image 1">
								<span><img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img22.jpg" alt=""></span>
							</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/img/main/img23.jpg" rel="gallery" class="fancybox img-hover-v2" title="Image 2">
								<span><img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img23.jpg" alt=""></span>
							</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/img/main/img4.jpg" rel="gallery" class="fancybox img-hover-v2" title="Image 3">
								<span><img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img4.jpg" alt=""></span>
							</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/img/main/img9.jpg" rel="gallery" class="fancybox img-hover-v2" title="Image 4">
								<span><img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img9.jpg" alt=""></span>
							</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/img/main/img25.jpg" rel="gallery" class="fancybox img-hover-v2" title="Image 5">
								<span><img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img25.jpg" alt=""></span>
							</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/img/main/img6.jpg" rel="gallery" class="fancybox img-hover-v2" title="Image 6">
								<span><img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img6.jpg" alt=""></span>
							</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/img/main/img20.jpg" rel="gallery" class="fancybox img-hover-v2" title="Image 7">
								<span><img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img20.jpg" alt=""></span>
							</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/img/main/img3.jpg" rel="gallery" class="fancybox img-hover-v2" title="Image 8">
								<span><img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img3.jpg" alt=""></span>
							</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/img/main/img7.jpg" rel="gallery" class="fancybox img-hover-v2" title="Image 9">
								<span><img class="img-responsive" src="<%=request.getContextPath()%>/img/main/img7.jpg" alt=""></span>
							</a>
						</li>
					</ul>
					<!-- End Photostream -->
				</div>
				<!-- End Blog Sidebar -->
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
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/jquery.parallax.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/plugins/fancy-box.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/app.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/plugins/style-switcher.js"></script>
	<script type="text/javascript" src="/webjars/datatables/1.10.12/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/table1.js"></script>
	<script type="text/javascript" src="/webjars/datatables/1.10.12/js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			FancyBox.initFancybox();
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
