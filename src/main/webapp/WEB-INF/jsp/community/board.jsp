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

	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
	
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
					<li class="active">Board</li>
				</ul>
			</div>
		</div><!--/breadcrumbs-->
		<!--=== Blog Posts ===-->
		<div class="container content-md">
			<div class="row">
				<!-- Blog All Posts -->
				<div class="col-md-9">
					<a href="<%=request.getContextPath()%>/community/write" class="btn-u btn-u-sm" id="write">Write</a>
					<table id="example" class="table" cellspacing="0" width="100%">
				        <thead>
				            <tr>
				                <th>No</th>
				                <th>Title</th>
				                <th>Name</th>
				                <th>Date</th>
				                <th>Views</th>
				                <th>Likes</th>
				            </tr>
				        </thead>
				        <tbody>
				        	<c:forEach var="post" items="${postList}">
				            <tr>
				                <td>${post.id}</td>
				                <td><a href="<%=request.getContextPath()%>/community/post/${post.id}">${post.title}</a></td>
				                <td>${post.username}</td>
				                <td>${post.writeDate}</td>
				                <td>${post.views}</td>
				                <td>${post.likes}</td>
				            </tr>
				            </c:forEach>
				        </tbody>
				    </table>
				</div>
				<!-- End Blog All Posts -->

				<!-- Blog Sidebar -->
				<div class="col-md-3">
					<div class="headline-v2 bg-color-light"><h2>Likes</h2></div>
					<!-- Trending -->
					<ul class="list-unstyled blog-latest-posts margin-bottom-50">
						<c:forEach var="post" begin="0" end="3" varStatus="status" items="${likesList}">
							<li>
								<h3><a href="<%=request.getContextPath()%>/community/post/${post.id}">${post.title}</a></h3>
								<small>${post.userId} / ${post.writeDate} / ${post.likes}</small>
							</li>
			            </c:forEach>
					</ul>
					<!-- End Trending -->

					<div class="headline-v2 bg-color-light"><h2>Views</h2></div>
					<!-- Latest Links -->
					<ul class="list-unstyled blog-latest-posts margin-bottom-50">
						<c:forEach var="post" begin="0" end="3" varStatus="status" items="${viewsList}">
							<li>
								<h3><a href="<%=request.getContextPath()%>/community/post/${post.id}">${post.title}</a></h3>
								<small>${post.userId} / ${post.writeDate} / ${post.views}</small>
							</li>
			            </c:forEach>
					</ul>
					<!-- End Latest Links -->
				</div>
				<!-- End Blog Sidebar -->
			</div>
		</div>		
		<!--=== End Breadcrumbs ===-->
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
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/sky-forms-pro/skyforms/js/jquery.form.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>

	<!-- JS Customization -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/app.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/plugins/style-switcher.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/forms/login.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/forms/contact.js"></script>
	<script type="text/javascript" src="/webjars/datatables/1.10.12/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/table.js"></script>
	<script type="text/javascript" src="/webjars/datatables/1.10.12/js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			LoginForm.initLoginForm();
			ContactForm.initContactForm();
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
