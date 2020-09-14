<%@page import="com.model.roll"%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%
    ArrayList<roll> arrayList=(ArrayList)session.getAttribute("viewroll");
    
    /*dao methode name in ""  */
    %>
   
<!DOCTYPE html>
<html lang="en" class="coming-soon">
  
<!-- Mirrored from tectonic.kaijuthemes.com/extras-login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 03 Jan 2017 09:01:35 GMT -->
<head>
    <meta charset="utf-8">
    <title>Login Form</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="description" content="">
    <meta name="author" content="KaijuThemes">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
    <!-- <link type="text/css" href="../../assets/plugins/iCheck/skins/minimal/blue.css" rel="stylesheet"> -->
    <link type="text/css" href="../../assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link type="text/css" href="../../assets/fonts/ionicons/css/ionicons.min.css" rel="stylesheet">                <!-- Ion Icons -->
    <link type="text/css" href="../../assets/css/styles.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries. Placeholdr.js enables the placeholder attribute -->
    <!--[if lt IE 9]>
    <link type="text/css" href="../../assets/css/ie8.css" rel="stylesheet">
    <script type="text/javascript" src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The following CSS are included as plugins and can be removed if unused-->
    
  </head>
  <body class="focused-form" style="background-image: url('../../assets/img/secure.jpg');" >
    
    
<div class="container" id="login-form" >
	<a href="index.html" class="login-logo"><img src="../../assets/img/H N.png" style="width: 300px; height: 100px;"></a>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="panel panel-default alt with-footer">
				<div class="panel-heading"><h2>Login Form</h2></div>
				<div class="panel-body">
					
					<form action="<%=request.getContextPath()%>/Controller" class="" id="validate-form" method="post" style="">
						<div class="form-group">
							
							<input type="hidden" name="actionCode" value="login">
							<div class="input-group">							
								<span class="input-group-addon">
									<i class="ion-android-person"></i>
								</span>
								<input type="text" class="form-control" placeholder="Email Username" name=username data-parsley-minlength="6" placeholder="At least 6 characters" required>
							</div>

						</div>


						<div class="form-group">

							<div class="input-group">
								<span class="input-group-addon">
									<i class="ion-android-unlock"></i>
								</span>
								<input type="password" class="form-control" id="exampleInputPassword1" name=password placeholder="Password">
							</div>

						</div>
						
						<div class="form-group">
							<div class="checkbox block">
								<input type="checkbox" class="tectonic" id="rememberme1" value="1" name="ham">
								<label for="rememberme1" class="pl-n"></label>
								<span>Remember me</span>
							</div>

						</div>
						

						<div class="form-group">
							<a href="extras-forgotpassword.html" class="pull-left text-small">Forgot password?</a>
						</div>
						<div class="panel-footer">
					<div class="clearfix">
						
						
						<button style="background-color: #1aff8c;" type="submit" class="btn btn-block pull-=center">Login</button>
						
					</div>
				</div>
					</form>
				</div>
				
			</div>

			
		</div>
	</div>
</div>


    <!-- Load site level scripts -->

<script type="text/javascript" src="../../assets/js/jquery-1.10.2.min.js"></script> 							<!-- Load jQuery -->
<script type="text/javascript" src="../../assets/js/jqueryui-1.9.2.min.js"></script> 							<!-- Load jQueryUI -->

<script type="text/javascript" src="../../assets/js/bootstrap.min.js"></script> 								<!-- Load Bootstrap -->

<!-- End loading site level scripts -->
    <!-- Load page level scripts-->
    

    <!-- End loading page level scripts-->
  </body>

<!-- Mirrored from tectonic.kaijuthemes.com/extras-login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 03 Jan 2017 09:01:36 GMT -->
</html>