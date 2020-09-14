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
		<li>
				<a href="javascript:;">
					<span class="icon"><i class="ion-person-add"></i></span>
					<span class="text" data-localize="nav_dashboard">User Interface</span>
				</a>
				<ul class="acc-menu">
					<li><a href="department.jsp"><span class="text">Add Department</span></a></li>
					<li><a href="roll.jsp"><span class="text">Add Roll Type</span></a></li>
					<li><a href="<%=request.getContextPath() %>/Controller?actionCode=rolltype"><span class="text">Add User</span></a></li>
					<li><a href="<%=request.getContextPath() %>/Controller?actionCode=deleteuser"><span class="text" >Delete User</span></a></li>
					<li><a href="<%=request.getContextPath() %>/Controller?actionCode=approve"><span class="text" >Approve user</span></a></li>
				</ul>
		</li>
		<li>
			<a href="javascript:;">
				<span class="icon"><i class="ion-wrench"></i></span>
				<span class="text" data-localize="nav_email" >Mange User</span>
			</a>
			<ul class="acc-menu">
					
					<li><a href="<%=request.getContextPath() %>/Controller?actionCode=updateuser"><span class="text" data-localize="nav_email" >Mange User</span></a></li>
					
				</ul>
		</li>
		
		<li>
			<a href="javascript:;">
				<span class="icon"><i class="ion-wrench"></i></span>
				<span class="text" data-localize="nav_email" >Mange Issue Category</span>
			</a>
			<ul class="acc-menu">
					
					<li><a href="<%=request.getContextPath() %>/Controller?actionCode=viewdept"><span class="text">Add Issue Type</span></a></li>
					<li><a href="<%=request.getContextPath() %>/Controller?actionCode=viewissuetype"><span class="text" data-localize="nav_email" >Mange Issue Type</span></a></li>
					
				</ul>
		</li>
		
		
		
		
		
		<li class="nav-separator" data-localize="nav_separator_layouts" data-localize="nav_layouts">Function</li>
		<li><a href="<%=request.getContextPath() %>/Controller?actionCode=manageprofile&view_id=<%=request.getSession().getAttribute("view_id")%>"><span class="icon"><i class="ion-grid"></i></span><span class="text" data-localize="nav_scaffolding">Manage Profile</span></a></li>
		<li><a href="javascript:;"><span class="icon"><i class="ion-settings"></i></span><span class="text" data-localize="nav_options">Manage Issue	</span></a>
			<ul class="acc-menu">
				<li><a href="<%=request.getContextPath() %>/Controller?actionCode=issuetype"><span class="text"><span class="text" data-localize="nav_options_leftbar_mini">Post Issue </span></span></a></li> 
				

				<li><a href="<%= request.getContextPath()%>/Controller?actionCode=viewissue"><span class="text" data-localize="nav_options_rightbar_offcanvas">View Issue</span></a></li>
				
				</ul>
		</li>
		
		<li><a href="javascript:;"><span class="icon"><i class="ion-flash"></i></span><span class="text" data-localize="nav_starter_templates">Assign an Issue </span></a>
			<ul class="acc-menu">
				<li><a href="<%= request.getContextPath()%>/Controller?actionCode=allocation"><span class="text" data-localize="nav_starter_templates_leftbar_search">Allocation  Issue</span></a></li>
				<li><a href="<%= request.getContextPath()%>/Controller?actionCode=viewallocation"><span class="text" data-localize="nav_starter_templates_leftbar_userinfo">Manage Allocation</span></a></li>
				<li><a href="leftbar-sparklines.html"><span class="text" data-localize="nav_starter_templates_leftbar_sparklines">Leftbar Sparklines</span></a></li>
				

				<!-- <li>
					<a href="javascript:;"><span class="text" data-localize="nav_starter_templates_horizontal_nav">Horizontal Nav</span><span class="badge badge-info">2</span></a>
					<ul class="acc-menu">
						<li><a href="layout-horizontal-small.html"><span class="text" data-localize="nav_starter_templates_topnav_horizontal_nav_small_menu">Small Menu</span></a></li>
						<li><a href="layout-horizontal-large.html"><span class="text" data-localize="nav_starter_templates_topnav_horizontal_nav_large_menu">Large Menu</span></a></li>
					</ul>
				</li> -->

			</ul>
		</li>
		<li id="rtlli"><a id="rtl"><span class="icon"><i class="ion-arrow-right-c"></i></span><span class="text" data-localize="nav_rtl" >RTL</span><span class="badge badge-danger" style="opacity: 0">TRY</span></a></li>
		<li><a id="ltr" style="display: none;"><span class="icon"><i class="ion-arrow-left-c"></i></span><span class="text" data-localize="nav_ltr">LTR</span></a></li>
		
		<li class="nav-separator" data-localize="nav_styles">Styles</li>
		<li>
			<a href="<%= request.getContextPath()%>/Controller?actionCode=resoveissue"><span class="icon"><i class="ion-flash"></i></span><span class="text" data-localize="nav_bs_ui">Resolve an Issue </span></a>
			
		</li>
		
		<li>
			<a href="javascript:;"><span class="icon"><i class="ion-android-bar"></i></span><span class="text" data-localize="nav_icons">Track an issue </span></a>
			<ul class="acc-menu">
				<li><a href="track.jsp"><span class="text" data-localize="nav_icons_fa_icons">Track Issue</span></a></li>
				
			</ul>
		</li>
		<li class="nav-separator" data-localize="nav_plugins">Extra</li>
		<li><a href="<%= request.getContextPath()%>/Controller?actionCode=viewfeedback"><span class="icon"><i class="ion-shuffle"></i></span><span class="text" data-localize="nav_plugins_components">Feed Back</span></a>
			
		</li>
		<li><a href="javascript:;"><span class="icon"><i class="ion-map"></i></span><span class="text" data-localize="nav_plugins_maps">Post Query</span></a>
			
		</li>
		<li><a href="javascript:;"><span class="icon"><i class="ion-android-create"></i></span><span class="text" data-localize="nav_plugins_forms">FAQ Manager	</span></a>
			
		</li>
		
		
		
		
		
		
		
		
		 
	</ul>
</nav>
	</div>
</div>

                    </div>