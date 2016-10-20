<div class="header-v6 header-classic-white header-sticky header-fixed-shrink">
	<!-- Navbar -->
	<div class="navbar mega-menu" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="menu-container">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

				<!-- Navbar Brand -->
				<div class="navbar-brand">
					<a href="<%=request.getContextPath()%>/home">
						<img class="shrink-logo" src="<%=request.getContextPath()%>/img/iivlogo.png" alt="Logo">
					</a>
				</div>
				<!-- End Navbar Brand -->

				<!-- Header Inner Right -->
				<div class="header-inner-right">
					<ul class="menu-icons-list">
						<li class="menu-icons shopping-cart">
							<i class="menu-icons-style radius-x fa fa-user"></i>
							<div class="shopping-cart-open">
								<span class="shc-title">Login to your account</span>
								<a href="<%=request.getContextPath()%>/user/login" class="btn-u">Login</a>
								<a href="<%=request.getContextPath()%>/user/registration"><span class="shc-total">Sing up</span></a>
							</div>
						</li>
						<li class="menu-icons">
							<i class="menu-icons-style search search-close search-btn fa fa-search"></i>
							<div class="search-open">
								<input type="text" class="animated fadeIn form-control" placeholder="Start searching ...">
							</div>
						</li>
					</ul>
				</div>
				<!-- End Header Inner Right -->
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-responsive-collapse">
				<div class="menu-container">
					<ul class="nav navbar-nav">
						<!-- Home -->
						<li class="dropdown">
							<a href="<%=request.getContextPath()%>/home"> Home </a>
						</li>
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								About IIV
							</a>
							<ul class="dropdown-menu">
								<li><a href="<%=request.getContextPath()%>/about/introduce">Introduction</a></li>
								<li><a href="<%=request.getContextPath()%>/about/gallery">Gallery</a></li>
								<li><a href="<%=request.getContextPath()%>/about/dispatch">Dispatch</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								Activity
							</a>
							<ul class="dropdown-menu">
								<li><a href="<%=request.getContextPath()%>/activity/home">Home</a></li>
								<li><a href="<%=request.getContextPath()%>/activity/list">List</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								Community
							</a>
							<ul class="dropdown-menu">
								<li><a href="<%=request.getContextPath()%>/community/notice">Notice</a></li>
								<li><a href="<%=request.getContextPath()%>/community/board">Board</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								Alumni
							</a>
							<ul class="dropdown-menu">
								<li><a href="<%=request.getContextPath()%>/alumni/home">Home</a></li>
								<li><a href="<%=request.getContextPath()%>/alumni/board">Board</a></li>
								<li><a href="<%=request.getContextPath()%>/alumni/iivprofile">IIV Profile</a></li>
							</ul>
						</li>																																
					</ul>
				</div>
			</div><!--/navbar-collapse-->
		</div>
	</div>
	<!-- End Navbar -->
</div>