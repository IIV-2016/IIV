<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
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
				<h1 class="pull-left">Community</h1>
				<ul class="pull-right breadcrumb">
					<li><a href="index.html">List</a></li>
					<li class="active">Post</li>
				</ul>
			</div>
		</div><!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->

		<!--=== Blog Posts ===-->
		<div class="bg-color-light">
			<div class="container content-sm">
				<!-- News v3 -->
				<div class="news-v3 bg-color-white margin-bottom-30">
					<div class="news-v3-in">
						<ul class="list-inline posted-info">
							<li>By <a href="#">${post.userId}</a></li>
							<li>${post.sector}</li>
							<li>${post.writeDate}</li>
						</ul>
						<h2>${post.title}</h2>
						<p>${post.content}</p>
						<ul class="post-shares post-shares-lg">
							<li>
								<a href="#">
									<i class="rounded-x icon-speech"></i>
									<span>${fn:length(commentList)}</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="rounded-x fa fa-eye"></i>
									<span>${post.views}</span>
								</a>
							</li>
							<li>
								<sec:authorize access="isAnonymous()">
									<i class="rounded-x icon-heart"></i>
								</sec:authorize>
								<sec:authorize access="isAuthenticated()">
								<c:choose>
							  		<c:when test="${likeHistory == 0}">
										<a href="<%=request.getContextPath()%>/activity/likes/${post.id}/${post.userId}">
											<i class="rounded-x icon-heart"></i>
											<span>${post.likes}</span>
										</a>
									</c:when>
									<c:otherwise>
										<a href="<%=request.getContextPath()%>/activity/likesremove/${post.id}/${post.userId}">
											<i class="rounded-x fa fa-heart"></i>
											<span>${post.likes}</span>
										</a>
									</c:otherwise>
								</c:choose>	
								</sec:authorize>
							</li>
							<sec:authorize access="isAuthenticated()">
								<sec:authentication property="principal.id" var="currentUserId"/>
								<c:if test="${currentUserId eq post.userId}">
									<li>
										<a href="<%=request.getContextPath()%>/activity/delete/${post.id}">
											<i class="rounded-x icon-close"></i>
										</a>
									</li>
									<li>
										<a href="<%=request.getContextPath()%>/activity/update/${post.id}">
											<i class="rounded-x icon-settings"></i>
										</a>
									</li>
								</c:if>
							</sec:authorize>
						</ul>
					</div>
				</div>
				<!-- End News v3 -->

				<!-- Blog Post Author -->
				<div class="blog-author margin-bottom-30">
					<img src="<%=request.getContextPath()%>/img/team/img1-md.jpg" alt="">
					<div class="blog-author-desc">
						<div class="overflow-h">
							<h4>${user.username}</h4>
							<ul class="list-inline">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
						<p>${user.email}</p>
					</div>
				</div>
				<!-- End Blog Post Author -->

				<hr>

				<h2 class="margin-bottom-20">Comments</h2>
				<!-- Blog Comments -->
				<c:forEach var="comment" items="${commentList}">
				<div class="row blog-comments margin-bottom-30">
					<div class="col-sm-2 sm-margin-bottom-40">
						<img src="<%=request.getContextPath()%>/img/team/img1-sm.jpg" alt="">
					</div>
					<div class="col-sm-10">
						<div class="comments-itself">
							<h4>
								${comment.username}
								<span>${comment.writeDate}</span>
							</h4>
							<p>${comment.content}</p>
						</div>
					</div>
				</div>
	            </c:forEach>
				<!-- End Blog Comments -->

				<hr>

				<h2 class="margin-bottom-20">Post a Comment</h2>
				<!-- Form -->
				<sec:authorize access="isAuthenticated()">
				<form action="<%=request.getContextPath()%>/comment/write/submit" method="post" id="sky-form3" class="sky-form comment-style">
					<input type="hidden" name="username" id="username" value="<sec:authentication property='principal.username'/>" placeholder="name" class="form-control">
					<input type="hidden" name="postId" id="postId" value="${post.id}" class="form-control">
					<input type="hidden" name="table" id="table" value="activity_comment" class="form-control">
					<fieldset>
						<div class="sky-space-30">
							<div>
								<textarea rows="8" name="content" id="content" placeholder="Write comment here ..." class="form-control"></textarea>
							</div>
						</div>

						<p><button type="submit" class="btn-u">Submit</button></p>
					</fieldset>

					<div class="message">
						<i class="rounded-x fa fa-check"></i>
						<p>Your comment was successfully posted!</p>
					</div>
				</form>
				</sec:authorize>
				<sec:authorize access="isAnonymous()">
					<p>login -> you can write comment</p>
				</sec:authorize>
				<!-- End Form -->
			</div><!--/end container-->
		</div>
		<!--=== End Blog Posts ===-->
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