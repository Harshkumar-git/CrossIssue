<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<header id="topnav" class="navbar navbar-fixed-top clearfix navbar-default" role="banner">
	<div class="navbar-header">
		
			<!--<img class="img-white" src="../../assets/img/logo-white.png" alt="Tectonic">-->
			<img class="" src="../../assets/img/H N.png" alt="Tectonic" width="240px" height="50px	GT">
		</a>
	</div>

	<!-- Trigger -->
	<span id="trigger-leftbar" class="toolbar-trigger">
		<a data-toggle="tooltips" data-placement="right" title="Toggle Leftbar"><span class="icon"><i class="ion-android-arrow-back"></i></span></a>
	</span>

	<span id="trigger-infobar" class="toolbar-trigger">
		<a data-toggle="tooltips" data-placement="left" title="Toggle Infobar"><span class="icon"><i class="ion-ios-settings-strong"></i></span></a>
	</span>

	<span class="toolbar-trigger">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#tectonic-topnav-collapsible" aria-expanded="false">
			<span class="icon"><i class="ion-more"></i></span>
		</button>
	</span>

	<!-- Togglable navigation -->
	<!-- /.navbar-collapse -->
<div class="collapse navbar-collapse" id="tectonic-topnav-collapsible">
		
		<ul class="yamm nav navbar-nav navbar-right">
			<li class="toolbar-icon-bg demo-headerdrop-hidden hidden-sm hidden-xs">
				<a id="headerbardropdown" href="#"><span class="icon"><i class="ion-android-arrow-down"></i></span></a>
			</li> 
			<li class="dropdown" id="sample-dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
					<span class="icon"><i class="ion-settings"></i></span>
					<span class="text visible-xs">Settings</span>
				</a>
				<ul class="dropdown-menu without-icon">
					
					
					
					
					
					
					<li><span class="category-heading">Header Colors</span></li>
					<li class="demo-options">
						<ul id="demo-header-color" class="demo-color-list pl-md pd-md mb-sm">
							<li><span class="demo-mirage"></span></li>
							<li><span class="demo-graphite"></span></li>
							<li><span class="demo-holly"></span></li>
							<li><span class="demo-havana"></span></li>
							<li><span class="demo-haiti"></span></li>
							<li><span class="demo-bunting"></span></li>
						</ul>
					</li>
					<li role="separator" class="divider"></li>
					<li><span class="category-heading">Leftbar Colors</span></li>
					<li class="demo-options">
						<ul id="demo-sidebar-color" class="demo-color-list pl-md mb-sm">
							<li><span class="demo-mirage"></span></li>
							<li><span class="demo-graphite"></span></li>
							<li><span class="demo-holly"></span></li>
							<li><span class="demo-havana"></span></li>
							<li><span class="demo-haiti"></span></li>
							<li><span class="demo-bunting"></span></li>
						</ul>
					</li>
				</ul>
			</li>
			<li class="" id="trigger-fullscreen">
				<a href="#" class="toggle-fullscreen"><span class="icon"><i class="arrow_expand"></i></span><span class="text hidden-sm hidden-lg hidden-md">Go to Fullscreen</span></a>
			</li>

			

			<li class="dropdown dropdown-lg">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<span class="icon"><i class="ion-android-notifications"></i></span>
					<span class="text hidden-sm hidden-lg hidden-md">Notifications</span>
					<span class="badge badge-deep-purple">2</span>
					<!-- <span class="label label-deep-purple hidden-lg hidden-sm hidden-md">text</span> -->
				</a>

				<div class="dropdown-menu notifications">
					<div class="dropdown-header clearfix">
						<span class="pull-left" data-localize="top-nav-notific_two_new_notification">2 new notification(s)</span>
						<span class="mark-read pull-right"><i class="ion-android-done-all"></i></span>
					</div>
					<div class="scroll-pane">
						<ul class="media-list scroll-content">
							<li class="media new">
								<a href="#">
									<div class="media-left">
										<span class="icon success"><i class="ion-checkmark-circled"></i></span>
									</div>
									<div class="media-body">
										<span class="name">Jerrod Miller</span> is now following you.
										<span class="time">2 mins ago</span>
									</div>
								</a>
							</li>
							<li class="media new">
								<a href="#">
									<div class="media-left">
										<span class="icon purple"><i class="ion-android-sync"></i></span>
									</div>
									<div class="media-body">
										<span class="name">Ben Hepworth</span> updated project <span class="link">Marvin</span>
										<span class="time">2 mins ago</span>
									</div>
								</a>
							</li>
							<li>
								<span class="category-heading" data-localize="top_nav_notific_older">Older</span>
							</li>
							<li class="media">
								<a href="#">
									<div class="media-left">
										<span class="icon blue"><i class="ion-android-document"></i></span>
									</div>
									<div class="media-body">
										<span class="name">Ken Duren</span> added new files.
										<span class="time">2 mins ago</span>
									</div>
								</a>
							</li>
							<li class="media">
								<a href="#">
									<div class="media-left">
										<span class="icon success"><i class="ion-android-done"></i></span>
									</div>
									<div class="media-body">
										Your changes were saved.
										<span class="time">2 mins ago</span>
									</div>
								</a>
							</li>
							<li class="media">
								<a href="#">
									<div class="media-left">
										<span class="icon info"><i class="ion-android-done"></i></span>
									</div>
									<div class="media-body">
										Your changes were saved.
										<span class="time">2 mins ago</span>
									</div>
								</a>
							</li>
							<li class="media">
								<a href="#">
									<div class="media-left">
										<span class="icon teal"><i class="ion-android-done"></i></span>
									</div>
									<div class="media-body">
										Your changes were saved.
										<span class="time">2 mins ago</span>
									</div>
								</a>
							</li>
							
						</ul>
					</div>
					<div class="dropdown-footer clearfix">
						<a href="#" class="pull-left" data-localize="top_nav_see_all">See all</a>
						<a href="#" class="pull-right" data-localize="top_nav_settings">Settings</a>
					</div>
				</div>
			</li>

			<li class="dropdown username">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
					<span class="icon visible-xs"><i class="ion-android-person"></i></span>
					<span class="text hidden-sm" data-localize="topnav_person"><%=request.getSession().getAttribute("userName") %></span>
					<span class="avatar"><img class="img-responsive img-rounded" src="../../img/<%=request.getSession().getAttribute("profilepic")%> ">	</a>
				<ul class="dropdown-menu">
					<li>
						<div class="userinfo">
							<span class="avatar"><img class="img-responsive img-rounded" src="../../img/<%=request.getSession().getAttribute("profilepic")%> "></span>
							<span class="name" data-localize="topnav_jonathan_smith"><%=request.getSession().getAttribute("userName") %></span>
							<span class="email" data-localize="topnav_person"><%=request.getSession().getAttribute("Email") %></span>
							
						</div>
					</li>
					<li role="separator" class="divider"></li>
					<li><a href="#"><i class="ion-android-create"></i><span data-localize="topnav_edit_profile">Edit Profile</span></a></li>
					
					
					
					<li role="separator" class="divider"></li>
					<li><a href="<%=request.getContextPath()%>/Controller?actionCode=logout"><i class="ion-arrow-right-c"></i><span data-localize="topnav_logout" >Logout</span></a></li>
				</ul>
			</li>
		</ul>
	</div></header>
    