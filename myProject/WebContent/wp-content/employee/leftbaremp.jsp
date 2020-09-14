<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <div class="leftbar">
	<div class="widget hide-on-horizontal hide-on-small">
		<div class="widget-body">
			<div class="userinfo clearfix">
				<div class="avatar">
					<img class="img-responsive img-circle" src="../../img/<%=request.getSession().getAttribute("profilepic")%>">
					<!-- <span class="status online"></span> -->
				</div>
				<div class="info">
					<span class="name"><%=request.getSession().getAttribute("userName") %></span>
					<span class="email"><%=request.getSession().getAttribute("Email") %></span>
				</div>
			</div>
		</div>
	</div>
	
	<div class="widget stay-on-collapse" id="widget-leftbar">
		<nav role="navigation" class="widget-body">
	<ul class="acc-menu">
		<li class="nav-separator" data-localize="nav_overview">Overview</li>
		<li>
				<a href="Dashboard.jsp">
					<span class="icon"><i class="ion-android-home"></i></span>
					<span class="text" data-localize="nav_dashboard">Dashboard</span>
				</a>
				
		</li>
		
		
		
		
		
		
		
		
		
		
		<li class="nav-separator" data-localize="nav_separator_layouts" data-localize="nav_layouts">Function</li>
		<li><a href="layout-grids.html"><span class="icon"><i class="ion-grid"></i></span><span class="text" data-localize="nav_scaffolding">Manage Profile</span></a></li>
		
		
		
		<li id="rtlli"><a id="rtl"><span class="icon"><i class="ion-arrow-right-c"></i></span><span class="text" data-localize="nav_rtl" >RTL</span><span class="badge badge-danger" style="opacity: 0">TRY</span></a></li>
		<li><a id="ltr" style="display: none;"><span class="icon"><i class="ion-arrow-left-c"></i></span><span class="text" data-localize="nav_ltr">LTR</span></a></li>
		
		<ul class="acc-menu">
				<li><a href="<%=request.getContextPath() %>/Controller?actionCode=issuetype"><span class="text"><span class="text" data-localize="nav_options_leftbar_mini">Post Issue </span></span></a></li> 
				

				<li><a href="<%= request.getContextPath()%>/Controller?actionCode=viewissue"><span class="text" data-localize="nav_options_rightbar_offcanvas">View Issue</span></a></li>
				
				</ul>
				
		<li class="nav-separator" data-localize="nav_styles">Styles</li>
		
		
		<li>
			<a href="javascript:;"><span class="icon"><i class="ion-android-bar"></i></span><span class="text" data-localize="nav_icons">Track an issue </span></a>
			<ul class="acc-menu">
				<li><a href="ui-fa-icons.html"><span class="text" data-localize="nav_icons_fa_icons">FA Icons</span></a></li>
				<li><a href="ui-ion-icons.html"><span class="text" data-localize="nav_icons_ion_icons">Ion Icons</span></a></li>
			</ul>
		</li>
		
		
		
		
		
		
		
		
		
		
		
		
		 
	</ul>
</nav>
	</div>
</div>

                    </div>