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
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/pages/page_log_reg_v1.css">
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
				<h1 class="pull-left">Registration</h1>
				<ul class="pull-right breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li><a href="">Pages</a></li>
					<li class="active">Registration</li>
				</ul>
			</div><!--/container-->
		</div><!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->

		<!--=== Content Part ===-->
		<div class="container content">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<form name="register" class="reg-page" action="<%=request.getContextPath()%>/user/registerUser" method="post">
						<input type="hidden" id="img" name="img" value="<%=request.getContextPath()%>/img/default.jpg">
						<div class="reg-header">
							<h2>Register a new account</h2>
							<p>Already Signed Up? Click <a href="page_login.html" class="color-green">Sign In</a> to login your account.</p>
						</div>
						<label>ID <span id="checkUsername" class="color-red"></span></label>
						<input type="text" name="username" id="username" class="form-control margin-bottom-20">
						<div class="row">
							<div class="col-sm-6">
								<label>First Name <span id="checkFirstname" class="color-red"></span></label>
								<input type="text" name="firstname" id="firstname" class="form-control margin-bottom-20">
							</div>
							<div class="col-sm-6">
								<label>Last Name <span id="checkLastname" class="color-red"></span></label>
								<input type="text" name="lastname" id="lastname" class="form-control margin-bottom-20">
							</div>
						</div>
						<label>Email Address <span id="checkEmail" class="color-red"></span></label>
						<input type="email" name="email" id="email" class="form-control margin-bottom-20">

						<div class="row">
							<div class="col-sm-6">
								<label>Password <span id="checkPassword" class="color-red">*</span></label>
								<input type="password" name="password" id="password" class="form-control margin-bottom-20">
							</div>
							<div class="col-sm-6">
								<label>Confirm Password <span id="checkConfirmPassword" class="color-red">*</span></label>
								<input type="password" name="confirmPassword" id="confirmPassword" class="form-control margin-bottom-20">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<label>Did you IIV?</label> 
							</div>
							<div class="col-sm-6">
								<input type="radio" name="level" value="ALUMNI"> Yes 
								<input type="radio" name="level" value="USER" checked> No
							</div>
						</div>
						<div id="selectYear" style="display:none">
							<label>IIV Activity Year</label>
							<select class="form-control" name="year">
								<option value="0" checked>none</option>
								<option value="2016">2016</option>
								<option value="2015">2015</option>
								<option value="2014">2014</option>
								<option value="2013">2013</option>
							</select>
						</div>

						<hr>

						<div class="row">
							<span id="warning"></span>
							<div class="col-lg-6 checkbox">
								<label>
									<input type="checkbox">
									I read <a href="page_terms.html" class="color-green">Terms and Conditions</a>
								</label>
							</div>
							<div class="col-lg-6 text-right">
								<button class="btn-u" type="button" onclick="$.checkSubmit()">Register</button>
							</div>
						</div>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					</form>
				</div>
			</div>
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
			var statePassword = false;
			var stateConfirmPassword = false;
			
			$('#username').blur(function(){
			    $.ajax({
			        url:'<%=request.getContextPath()%>/user/check',
			        type:"POST",
			        dataType : "json",
			        data: {
			        	"key" : "username",
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
			$('#password').blur(function(){
				var password = $('#password').val().length;
				if(password == 0){
            		$('#checkPassword').html('check password');	
            		statePassword = false;
				}else{
            		$('#checkPassword').html('');	
            		statePassword = true;
				}
			});
			$('#confirmPassword').blur(function(){
				var password = $('#password').val().length;
				var confirmPassword = $('#confirmPassword').val().length;
				if(confirmPassword != password){
            		$('#checkConfirmPassword').html('check password');	
            		stateConfirmPassword = false;
				}else{
            		$('#checkConfirmPassword').html('');	
            		stateConfirmPassword = true;
				}
			});
			$.checkSubmit = function(){
			    if(stateUsername && stateFirstname && stateLastname && stateEmail && statePassword && stateConfirmPassword){
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
	</script>	
	<!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/plugins/respond.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/placeholder-IE-fixes.js"></script>
  <![endif]-->
</body>
</html>
