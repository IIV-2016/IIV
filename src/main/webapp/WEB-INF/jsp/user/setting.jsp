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
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/pages/page_log_reg_v1.css">
	<!-- CSS Theme -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/theme-colors/dark-blue.css" id="style_color">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/theme-skins/dark.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/pages/profile.css">

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
				<h1 class="pull-left">Setting</h1>
				<ul class="pull-right breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li class="active">Setting</li>
				</ul>
			</div>
		</div>

		<div class="container content profile">
			<div class="row">
				<!--Left Sidebar-->
				<div class="col-md-3 md-margin-bottom-40">
					<img id="userimg" class="img-responsive profile-img margin-bottom-20" src="${user.img}" alt="user_photo">
					<input id="inp" type='file'>
					<br>
					<ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
						<li class="list-group-item">
							<a href=""><i class="fa fa-check" aria-hidden="true"></i> Activity (${activityPostCount})</a>
						</li>
						<li class="list-group-item">
							<a href=""><i class="fa fa-check" aria-hidden="true"></i> Community (${communityPostCount})</a>
						</li>
						<li class="list-group-item">
							<a href=""><i class="fa fa-check" aria-hidden="true"></i> Alumni (${alumniPostCount})</a>
						</li>
					</ul>
				</div>
				<!--End Left Sidebar-->

				<!-- Profile Content -->
				<form action="<%=request.getContextPath()%>/user/update" method="post" name="update">
					<input type="hidden" id="img" name="img" value="${user.img}">
					<div class="col-md-9">
						<div class="profile-body margin-bottom-20">
							<div class="tab-v1">
								<div class="tab-content">
									<div id="profile" class="profile-edit tab-pane fade in active">
										<h2 class="heading-md">User Information</h2>
										<p>you can update information</p>
										<br>
										<dl class="dl-horizontal">
											<dt><strong>Id </strong></dt>
											<dd>
											<input type="hidden" name="username" id="username" value="${user.username}">
											${user.username}
											</dd>
											<hr>
											<dt><strong>First name </strong></dt>
											<dd>
												<span id="checkFirstname" class="color-red"></span>
												<input type="text" name="firstname" id="firstname" class="form-control" value="${user.firstname}">
											</dd>
											<hr>
											<dt><strong>Last name </strong></dt>
											<dd>
												<span id="checkLastname" class="color-red"></span>
												<input type="text" name="lastname" id="lastname" class="form-control" value="${user.lastname}">
											</dd>
											<hr>
											<dt><strong>Email Address </strong></dt>
											<dd>
												<span id="checkEmail" class="color-red"></span>
												<input type="email" name="email" id="email" class="form-control" value="${user.email}">
											</dd>
											<hr>
											<dt><strong>Password </strong></dt>
											<dd>
												<input type="button" class="btn-u" data-toggle="modal" data-target="#responsive" value="Chage Password">
											</dd>
											<hr>
											<dt><strong>Introduce </strong></dt>
											<dd>
												<input type="text" name="introduction" id="introduction" class="form-control" value="">
											</dd>
											<hr>
											<dt><strong>Did you IIV? </strong></dt>
											<dd>
												<div id="yearValue" style="display:none">${user.year}</div>
												<input type="radio" name="level" value="ROLE_ALUMNI"> Yes 
												<input type="radio" name="level" value="ROLE_USER"> No							
											<hr>
										</dl>
										<div id="selectYear" style="display:none">
											<dt><strong>IIV Activity Year </strong></dt>
											<dd>
												<input type="text" name="year" id="year" class="form-control">
											</dd>
											<hr>
											<dt><strong>Country </strong></dt>
											<dd>
												<input type="text" name="country" id="country" class="form-control" value="">
											</dd>
											<hr>
										</div>
															
										<span id="warning"></span>
										<button type="button" class="btn-u btn-u-default">Cancel</button>
										<button type="submit" class="btn-u">Save Changes</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
				<!-- End Profile Content -->
			</div><!--/end row-->
		</div>
		<form action="<%=request.getContextPath()%>/user/update/password" method="post">
			<input type="hidden" name="username" value="${user.username}"/>
			<div class="modal fade" id="responsive" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel4">Change Password</h4>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-md-12">
									<h5>New Password <span id="checkNewPassword" class="color-red"></span></h5>
									<p><input class="form-control" type="password" name="password" id="password"/></p>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn-u btn-u-default" data-dismiss="modal">Close</button>
							<button type="submit" class="btn-u btn-u-primary">Save changes</button>
						</div>
					</div>
				</div>
			</div>
		</form>
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
		
		$(document).ready(function(){
			var stateUsername = false;
			var stateFirstname = false;
			var stateLastname = false;
			var stateEmail = false;
			var stateCurrentPassword = false;
			var stateNewPassword = false;
			$.checkLevel();
			
			$('#firstname').blur(function(){
				var firstname = $('#firstname').val().length;
				if(firstname == 0){
            		$('#checkFirstname').html('check firstname');
            		stateFirstname = false;
				}else{
					stateFirstname = true;
            		$('#checkFirstname').html('');	
				}
			});
			$('#lastname').blur(function(){
				var lastname = $('#lastname').val().length;
				if(lastname == 0){
            		$('#checkLastname').html('check lastname');	
            		stateLastname = false;
				}else{
            		$('#checkLastname').html('');	
            		stateLastname = true;
				}
			});
			$('#email').blur(function(){
				var email = $('#email').val().length;
				if(email == 0){
            		$('#checkEmail').html('check email');	
            		stateEmail = false;
				}else{
            		$('#checkEmail').html('');	
            		stateEmail = true;
				}
			});
			$('#currentPassword').blur(function(){
				var currentPassword = $('#currentPassword').val().length;
				if(currentPassword == 0){
            		$('#checkCurrentPassword').html('check password');	
            		stateCurrentPassword = false;
				}else{
            		$('#checkCurrentPassword').html('');	
            		stateCurrentPassword = true;
				}
			});
			$('#newPassword').blur(function(){
				var newPassword = $('#newPassword').val().length;
				if(newPassword == 0){
            		$('#checkNewPassword').html('check new password');	
            		stateNewPassword = false;
				}else{
            		$('#checkNewPassword').html('');	
            		stateNewPassword = true;
				}
			});
			$.checkSubmit = function(){
			    if(stateFirstname && stateLastname && stateEmail){
			    	document.update.submit();
			    }else{
			    	$('#warning').html('<div class="alert alert-danger fade in"><strong>warning</strong> check your information.</div>');
			    }
			}
			$.updateSubmit = function(){
			    if(stateCurrentPassword && stateNewPassword){
			    	document.passwordForm.submit();
			    }else{
			    	$('#warning').html('<div class="alert alert-danger fade in"><strong>warning</strong> check your information.</div>');
			    }
			}

		    $('input[name="level"]').change(function(){
		     	if($(':radio[name="level"]:checked').val() == "ROLE_ALUMNI"){
		        	$('#selectYear').show();
		        }else if($(':radio[name="level"]:checked').val() == "ROLE_USER"){
		        	$('#selectYear').hide();
		        }
		    });
		});
		$.checkLevel = function(){
			var year = $('#yearValue').html();
		    if(year == 0){
		    	$('input[name="level"][value="ROLE_USER"]').attr('checked', true);
		    	$('input[name="level"][value="ROLE_ALUMNI"]').attr('checked', false); 
		    	$('#selectYear').hide();
		    }else{
		    	$('input[name="level"][value="ROLE_ALUMNI"]').attr('checked', true); 
		    	$('input[name="level"][value="ROLE_USER"]').attr('checked', false);
		    	$('#year').val(year);
		    	$('#selectYear').show();
		    }
		}
		function readFile() {
			  if (this.files && this.files[0]) {
			    var FR= new FileReader();
			    FR.onload = function(e) {
			      document.getElementById("userimg").src       = e.target.result;
			      document.getElementById("img").value = e.target.result;
			    };       
			    FR.readAsDataURL( this.files[0] );
			  }
			}
			document.getElementById("inp").addEventListener("change", readFile, false);
	</script>
	<!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/plugins/respond.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/placeholder-IE-fixes.js"></script>
  <![endif]-->
</body>
</html>
