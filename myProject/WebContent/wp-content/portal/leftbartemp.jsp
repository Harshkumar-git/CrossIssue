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
					
				</a>
				
		</li>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		 
	</ul>
</nav>
	</div>
</div>

                    </div>