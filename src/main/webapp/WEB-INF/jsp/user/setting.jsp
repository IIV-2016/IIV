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
					<img class="img-responsive profile-img margin-bottom-20" src="<%=request.getContextPath()%>/img/team/img32-md.jpg" alt="">

					<ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
						<li class="list-group-item">
							<a href="page_profile.html"><i class="fa fa-bar-chart-o"></i> Id</a>
						</li>
						<li class="list-group-item">
							<a href="page_profile_me.html"><i class="fa fa-user"></i> First name</a>
						</li>
						<li class="list-group-item">
							<a href="page_profile_users.html"><i class="fa fa-group"></i> Last name</a>
						</li>
						<li class="list-group-item">
							<a href="page_profile_projects.html"><i class="fa fa-cubes"></i> Email Address</a>
						</li>
						<li class="list-group-item">
							<a href="page_profile_comments.html"><i class="fa fa-comments"></i> IIV</a>
						</li>
						<li class="list-group-item">
							<a href="page_profile_history.html"><i class="fa fa-history"></i> Year</a>
						</li>
					</ul>
				</div>
				<!--End Left Sidebar-->

				<!-- Profile Content -->
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
										<dt><strong>Current Password  </strong></dt>
										<dd>
											<span id="checkCurrentPassword" class="color-red"></span>
											<input type="password" name="currentPassword" id="currentPassword" class="form-control">
										</dd>
										<hr>
										<dt><strong>New Password </strong></dt>
										<dd>
											<span id="checkNewPassword" class="color-red"></span>
											<input type="password" name="newPassword" id="newPassword" class="form-control">
										</dd>
										<hr>
										<dt><strong>Did you IIV? </strong></dt>
										<dd>
											<div id="yearValue" style="display:none">${user.year}</div>
											<input type="radio" name="level" value="ALUMNI"> Yes 
											<input type="radio" name="level" value="USER"> No							
										<hr>
									</dl>
									<div id="selectYear" style="display:none">
										<dt><strong>IIV Activity Year </strong></dt>
										<dd>
											<input type="text" name="year" id="year" class="form-control" value="${user.year}">
										</dd>
										<hr>
									</div>						
									<span id="warning"></span>
									<button type="button" class="btn-u btn-u-default">Cancel</button>
									<button type="button" class="btn-u">Save Changes</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End Profile Content -->
			</div><!--/end row-->
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
		
		$(document).ready(function(){
			var stateUsername = false;
			var stateFirstname = false;
			var stateLastname = false;
			var stateEmail = false;
			var stateCurrentPassword = false;
			var stateNewPassword = false;
			$.checkLevel();
			
			$('#username').blur(function(){
			    $.ajax({
			        url:'<%=request.getContextPath()%>/user/check',
			        type:"POST",
			        dataType : "json",
			        data: {
			        	"username" : $('#username').val()
			        },
			        success:function(data){
			        	var result = data.result;
			            if(result == 0){
			            	$('#checkUsername').html('ok');
			            	stateUsername = true;
			            }else if(result == 1){
			            	$('#checkUsername').html('<i class="fa fa-exclamation-circle"></i> already use id');
			            	stateUsername = false;
			            }
			        },
			        error:function(jqXHR, textStatus, errorThrown){
			        	$('#checkUsername').html("error");
			            self.close();
			        }
			    });	
			});
			
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
				var password = $('#currentPassword').val().length;
				if(password == 0){
            		$('#checkCurrentPassword').html('check password');	
            		statePassword = false;
				}else{
            		$('#checkCurrentPassword').html('');	
            		statePassword = true;
				}
			});
			$('#newPassword').blur(function(){
				var currentPassword = $('#currentPassword').val().length;
				var newPassword = $('#newPassword').val().length;
				if(currentPassword != newPassword){
            		$('#checkNewPassword').html('check password');	
            		stateNewPassword = false;
				}else{
            		$('#checkNewPassword').html('');	
            		stateNewPassword = true;
				}
			});
			$.checkSubmit = function(){
			    if(stateFirstname && stateLastname && stateEmail && stateCurrentPassword && stateNewPassword){
			    	document.register.submit();
			    }else{
			    	$('#warning').html('<div class="alert alert-danger fade in"><strong>warning</strong> check your information.</div>');
			    }
			}

		    $('input[name="level"]').change(function(){
		     	if($(':radio[name="level"]:checked').val() == "ALUMNI"){
		        	$('#selectYear').show();
		        }else if($(':radio[name="level"]:checked').val() == "USER"){
		        	$('#selectYear').hide();
		        }
		    });
		});
		$.checkLevel = function(){
			var year = $('#yearValue').html();
		    if(year == 0){
		    	$('input[name="level"][value="USER"]').attr('checked', true);
		    	$('input[name="level"][value="ALUMNI"]').attr('checked', false); 
		    	$('#selectYear').hide();
		    }else{
		    	$('input[name="level"][value="ALUMNI"]').attr('checked', true); 
		    	$('input[name="level"][value="USER"]').attr('checked', false); 
		    	$('#selectYear').show();
		    }
		}
	</script>
	<!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/plugins/respond.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/placeholder-IE-fixes.js"></script>
  <![endif]-->
</body>
</html>
