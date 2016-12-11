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
   
   <link rel="stylesheet" href="<%=request.getContextPath()%>/css/pages/shortcode_timeline2.css">   

   <!-- CSS Theme -->
   <link rel="stylesheet" href="<%=request.getContextPath()%>/css/theme-colors/dark-blue.css" id="style_color">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/css/theme-skins/dark.css">

   <!-- CSS Customization -->
   <link rel="stylesheet" href="<%=request.getContextPath()%>/css/custom.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/css/pages/page_pricing.css">
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
            <h1 class="pull-left">Community Notice</h1>
            <ul class="pull-right breadcrumb">
               <li>Community</li>
               <li class="active">Notice</li>
            </ul>
         </div>
      </div><!--/breadcrumbs-->
      <!--=== End Breadcrumbs ===-->

      <!--=== Content Part ===-->
      <div class="container content">
         <div class="row">
         	<div class="col-md-12">
               <!-- Other Questions -->
               <div class="headline"><h2>Notice</h2></div>
				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<a href="<%=request.getContextPath()%>/notice/write" class="btn-u btn-u-sm margin-bottom-10" id="write">Write</a>
				</sec:authorize>
               <div class="panel-group acc-v1" id="accordion-1">
					<table id="example" class="table" cellspacing="0" width="100%">
				        <thead>
				            <tr>
				                <th>No</th>
				                <th>Title</th>
				                <th>Name</th>
				                <th>Date</th>
				                <th>Views</th>
				            </tr>
				        </thead>
				        <tbody>
				        	<c:forEach var="post" items="${postList}">
				            <tr>
				                <td>${post.id}</td>
				                <td><a href="<%=request.getContextPath()%>/notice/post/${post.id}">${post.title}</a></td>
				                <td>${post.username}</td>
				                <td>${post.writeDate}</td>
				                <td>${post.views}</td>
				            </tr>
				            </c:forEach>
				        </tbody>
				    </table>
               </div>
			</div>
            <div class="col-md-9">
               <!-- General Questions -->
               <div class="headline"><h2>FAQs</h2></div>
               <div class="panel-group acc-v1 margin-bottom-40" id="accordion">
                  <div class="panel panel-default">
                     <div class="panel-heading">
                        <h4 class="panel-title">
                           <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                              1. What is the main purpose of IIV program? 
                           </a>
                        </h4>
                     </div>
                     <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                           IIV, the International ICT Volunteer program is aiming to decrease the digital divide 
                           among the abroad, especially around the Asia-Pacific area through their ICT knowledge 
                           and kind sharing about cultural exchange. Moreover, IIV is a comprehensive platform 
                           in order to be a network between various volunteer programs in Asia-Pacific area.
                        </div>
                     </div>
                  </div>

                  <div class="panel panel-default">
                     <div class="panel-heading">
                        <h4 class="panel-title">
                           <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                              2. How can be IIVs?
                           </a>
                        </h4>
                     </div>
                     <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                           <p>Anyone who wants to contribute ICT development abroad can apply the IIV program.</p>
                           <ul class="list-unstyled">
                              <li><i class="fa fa-check color-green"></i> University students in Bachelor Degree.</li>
                              <li><i class="fa fa-check color-green"></i> Studying in Master Degree.</li>
                              <li><i class="fa fa-check color-green"></i> Professionals & retired professionals, researchers, professors, scholars.</li>
                              <li><i class="fa fa-check color-green"></i> Entrepreneurs, school teachers, anyone who has voluntary-minded.</li>
                           </ul>
                        </div>
                     </div>
                  </div>

                  <div class="panel panel-default">
                     <div class="panel-heading">
                        <h4 class="panel-title">
                           <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                              3. How to compose a team?
                           </a>
                        </h4>
                     </div>
                     <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                           <p>Each team consists of 2-4 members with various skills, roles and responsibilities</p>
                           <ul class="list-unstyled">
                              <li><i class="fa fa-check color-green"></i> Various IT skills as required by requesting organisations (hosts).</li>
                              <li><i class="fa fa-check color-green"></i> Proficient in English and knowledge of local language of the country where they are dispatched to.</li>
                              <li><i class="fa fa-check color-green"></i> Knowledge of their own culture and be capable of exchanging cultures with local communities in the country where they are dispatched to.</li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-3">
               <!-- Contacts -->
               <div class="headline"><h2>Contacts</h2></div>
               <ul class="list-unstyled who margin-bottom-30">
                  <li><a href="#">Wisit Atipayakoon</a></li>
                  <li><a href="#"><i class="fa fa-home"></i>ITU Asia Pacific regional Office</a></li>
                  <li><a href="#"><i class="fa fa-envelope"></i>wisit.atipayakoon@itu.int</a></li> 
                  <li><a href="#"><i class="fa fa-globe"></i>http://www.itu.int</a></li>
               </ul>
               <ul class="list-unstyled who margin-bottom-30">
                  <li><a href="#">Minki Byun</a></li>
                  <li><a href="#"><i class="fa fa-home"></i>NIA, National Information Society</a></li>
                  <li><a href="#"><i class="fa fa-envelope"></i>mink@nia.or.kr</a></li> 
                  <li><a href="#"><i class="fa fa-globe"></i>http://www.nia.or.kr</a></li>
               </ul>
               <!-- End Contacts --> 

               <!-- Info Block -->
               <div class="headline"><h2>Why we are?</h2></div>
               <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum.</p>
               <ul class="list-unstyled margin-bottom-30">
                  <li><i class="fa fa-check color-green"></i> Odio dignissimos ducimus</li>
                  <li><i class="fa fa-check color-green"></i> Blanditiis praesentium volup</li>
                  <li><i class="fa fa-check color-green"></i> Eos et accusamus</li>
               </ul>
               <!-- End Info Block -->

               <!-- Social -->
               <div class="magazine-sb-social margin-bottom-20">
                  <div class="headline headline-md"><h2>Facebook Page</h2></div>
                  <ul class="social-icons social-icons-color"> 
                     <li><a href="https://www.facebook.com/IIVnetwork/" data-original-title="Facebook" class="social_facebook"></a></li>  
                  </ul>
                  <div class="clearfix"></div>
               </div>
               <!-- End Social -->
            </div><!--/col-md-3-->
         </div><!--/row-->
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
   
   <!-- 1 -->
   <script type="text/javascript" src="<%=request.getContextPath()%>/plugins/jquery-appear.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/js/plugins/fancy-box.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/js/plugins/progress-bar.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/js/plugins/owl-carousel.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/js/plugins/owl-recent-works.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/webjars/datatables/1.10.12/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/table2.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/webjars/datatables/1.10.12/js/dataTables.bootstrap.min.js"></script>
   
   <script type="text/javascript">
   jQuery(document).ready(function() {
      App.init();
      FancyBox.initFancybox();
      OwlCarousel.initOwlCarousel();
      StyleSwitcher.initStyleSwitcher();
      ProgressBar.initProgressBarHorizontal();
      OwlRecentWorks.initOwlRecentWorksV2();
   });
   </script>
   <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/plugins/respond.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/placeholder-IE-fixes.js"></script>
  <![endif]-->
</body>
</html>