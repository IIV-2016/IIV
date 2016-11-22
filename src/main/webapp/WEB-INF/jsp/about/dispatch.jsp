<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<style>
.embed-container {
   position: relative;
   padding-bottom: 67%;
   height: 0;
   max-width: 100%;
}

.embed-container iframe, .embed-container object, .embed-container iframe
   {
   position: absolute;
   top: 0;
   left: 0;
   width: 60%;
   height: 60%;
}

small {
   position: absolute;
   z-index: 40;
   bottom: 0;
   margin-bottom: -15px;
}
</style>
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Web Fonts -->
<link rel="stylesheet"
   href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/headers/header-v6.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/footers/footer-v1.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/plugins/font-awesome/css/font-awesome.min.css">

<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/pages/shortcode_timeline2.css">

<!-- CSS Theme -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/theme-colors/dark-blue.css"
   id="style_color">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/theme-skins/dark.css">

<!-- CSS Customization -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/custom.css">
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
            <h1 class="pull-left">Dispatch</h1>
            <ul class="pull-right breadcrumb">
               <li><a href="index.html">Home</a></li>
               <li class="active">dispatch</li>
            </ul>
         </div>
      </div>
      <div class="content-sm container text-center">

         <div class="headline-center">
            <h2>IIV 2016 Host Organizations and Countries</h2>
         </div>


         <div class="headline-center col-md-12">
            <div class="text-center">
               <iframe width="800" height="400" frameborder="0" scrolling="no"
                  marginheight="0" marginwidth="0" title="IIV"
                  src="//www.arcgis.com/apps/Embed/index.html?webmap=1f8f674e264c428ba51eca0ff2cb0912&amp;extent=31.2223,-19.9933,180,58.4366&amp;zoom=false&amp;scale=false&amp;disable_scroll=true&amp;theme=light"></iframe>
            </div>
         </div>
 

         <div align="center" class="container content">
            <img width="800px" class="img-responsive"
               src="<%=request.getContextPath()%>/img/2016dis.jpg">
         </div>
         <!--/end row-->
      </div>
      <!--=== End Container Part ===-->
      <%@include file="/WEB-INF/jsp/footer.jsp"%>
      <!--=== End Header v6 ===-->
   </div>
   <!--/wrapper-->
   <!-- JS Global Compulsory -->
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/plugins/jquery/jquery.min.js"></script>
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/plugins/jquery/jquery-migrate.min.js"></script>
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/plugins/bootstrap/js/bootstrap.min.js"></script>
   <!-- JS Implementing Plugins -->
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/plugins/back-to-top.js"></script>
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/plugins/smoothScroll.js"></script>
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/plugins/jquery.parallax.js"></script>
   <!-- JS Customization -->
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/js/custom.js"></script>
   <!-- JS Page Level -->
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/js/app.js"></script>
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/js/plugins/style-switcher.js"></script>

   <!-- 1 -->
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/plugins/jquery-appear.js"></script>
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/js/plugins/fancy-box.js"></script>
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/js/plugins/progress-bar.js"></script>
   <script type="text/javascript"
      src="<%=request.getContextPath()%>/js/plugins/owl-carousel.js"></script>

   <script type="text/javascript">
      jQuery(document).ready(function() {
         App.init();
         FancyBox.initFancybox();
         OwlCarousel.initOwlCarousel();
         StyleSwitcher.initStyleSwitcher();
         ProgressBar.initProgressBarHorizontal();
      });
   </script>
   <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/plugins/respond.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/placeholder-IE-fixes.js"></script>
  <![endif]-->
</body>
</html>