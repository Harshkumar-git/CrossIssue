<%@page import="com.model.roll"%>
<%@page import="com.model.department" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%
    ArrayList<roll> arrayList=(ArrayList)session.getAttribute("viewroll");
    ArrayList<department>arrayList2=(ArrayList)session.getAttribute("viewdept");
    /*dao methode name in ""  */
    %>
    
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from tectonic.kaijuthemes.com/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 03 Jan 2017 08:50:36 GMT -->
<head>
    <meta charset="utf-8">
    <title>Tectonic Admin Theme</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="description" content="Tectonic Admin Theme">
    <meta name="author" content="KaijuThemes">

    <link href='http://fonts.googleapis.com/css?family=Asap:300,400,400italic,600,600italic,700' rel='stylesheet' type='text/css'>

    <!--[if lt IE 10]>
        <script type="text/javascript" src="../../assets/js/media.match.min.js"></script>
        <script type="text/javascript" src="../../assets/js/placeholder.min.js"></script>
    <![endif]-->

    <link type="text/css" href="../../assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">         <!-- Font Awesome -->
    <link type="text/css" href="../../assets/fonts/ionicons/css/ionicons.css" rel="stylesheet">              <!-- Themify Icons -->
    <link type="text/css" href="../../assets/fonts/elegant-icons/css/style.css" rel="stylesheet">              <!-- Ion Icons -->
    <link type="text/css" href="../../assets/css/styles.css" rel="stylesheet">                                     <!-- Core CSS with all styles -->

    <!--<link type="text/css" href="../../assets/plugins/jstree/dist/themes/tectonic/style.min.css" rel="stylesheet"> -->   <!-- jsTree -->
    <link type="text/css" href="../../assets/plugins/codeprettifier/prettify.css" rel="stylesheet">                <!-- Code Prettifier -->
    <link type="text/css" href="../../assets/plugins/iCheck/skins/minimal/blue.css" rel="stylesheet">              <!-- iCheck -->
    <link type="text/css" href="../../assets/plugins/wijets/wijets.css" rel="stylesheet">              <!-- Wijets -->
    <!--<link type="text/css" href="../../assets/plugins/localisation/css/localisation.css" rel="stylesheet"> -->
    <link type="text/css" href="../../assets/js/jqueryui.css" rel="stylesheet"> <!-- jqueryui -->  

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries. Placeholdr.js enables the placeholder attribute -->
    <!--[if lt IE 9]>
        <link type="text/css" href="../../assets/css/ie8.css" rel="stylesheet">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.1.0/respond.min.js"></script>
        <script type="text/javascript" src="../../assets/plugins/charts-flot/excanvas.min.js"></script>
        <script type="text/javascript" src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The following CSS are included as plugins and can be removed if unused-->
    
<link type="text/css" href="../../assets/plugins/charts-chartistjs/chartist.min.css" rel="stylesheet">              <!-- Chartist -->

<link type="text/css" href="../../assets/plugins/form-daterangepicker/daterangepicker-bs3.css" rel="stylesheet">                   <!-- DateRangePicker -->
<link type="text/css" href="../../assets/css/echartsHome.css" rel="stylesheet">
<link type="text/css" href="../../assets/plugins/switchery/switchery.css" rel="stylesheet">                        <!-- Switchery -->


    </head>

    <body class="infobar-offcanvas">
        
        
			
			
        <div id="wrapper">
            <div id="layout-static">
                <div class="static-leftbar-wrapper leftbar-bunting">
                     <div class="static-leftbar">
                      <!--Left Bar Start  --> 
                      
                     <%@include file="leftbar.jsp" %>
                      <!--Left BAR End  -->
                </div> 
                <div class="static-content-wrapper">
                    <div class="static-content">
                        <div class="page-content">
                            <div class="page-heading mb-n">
                                <h1>Add user</h1>
                      
                    </div>
                    <!--main Container  -->
                       <!--form start  -->
                       <div class="row"  style="padding:   " >
    <div class="col-md-12">

    	
    	<div class="panel panel-info">
    		
    		<div class="panel-body p-n stepy-info">
    		<form action="<%=request.getContextPath()%>/Controller" id="wizard" class="form-horizontal row-border p-md" method="post" enctype="multipart/form-data"
    			>
    			<input type="hidden" name="actionCode" value="register">
    					
    				
    					<legend>Registration</legend>
    									
    					
    					
    					<div class="form-group">
				<label class="col-md-3 control-label">Roll Type</label>
				<div class="col-md-6">
					<select class="form-control" id="r_type" name="r_type" required  >
						<optgroup >
							<option></option>
							<%
                       		Iterator iterator=arrayList.iterator();
										while(iterator.hasNext())
										{
											
								
									roll roll=(roll)iterator.next();
										
									
										
										%>
								<option><%=roll.getRolltype() %></option>
                       		
                       		
                       		
                       		<%}%>
							
						</optgroup>
						
						
						
					</select>
				</div>
			</div>
    				
    				<div class="form-group">
				<label class="col-md-3 control-label">Department Name</label>
				<div class="col-md-6">
					<select class="form-control" id="d_name" name="d_name" required  >
						<optgroup >
							<option></option>
							<%
                       		Iterator iterator2=arrayList2.iterator();
							while(iterator2.hasNext())
							{
								department dept=(department)iterator2.next();
										%>
								<option><%=dept.getDeaprtment_Name() %></option>
                       		
                       		
                       		
                       		<%}%>
							
						</optgroup>
						
							
						
					</select>
				</div>
			</div>	
    				
    				
    				
    					<legend>Personal Data</legend>
    					    					   					
    					<div class="form-group">
    						<label for="fieldname" class="col-md-3 control-label">First Name</label>
    						<div class="col-md-6">
    							<input id="f_name" class="form-control" name="f_name" type="text" required placeholder="Enter the First Name">
    						</div>
    					</div>
    					
    					<div class="form-group">
    						<label for="fieldname" class="col-md-3 control-label">Last Name</label>
    						<div class="col-md-6">
    							<input id="l_name" class="form-control" name="l_name"  type="text" required placeholder="Enter the Last Name">
    						</div>
    					</div>
    					
    					<div class="form-group">
    						<label for="fieldname" class="col-md-3 control-label">Date Of Birth</label>
    						<div class="col-md-6">
    						<div class="input-group date" id="datepicker-startview">
    						<span class="input-group-addon"><i class="ion-calendar"></i></span>
    						<input type="text" class="form-control"  required name="dob">
    					   </div> 
    					</div>
    					</div>
    					
    					<div class="form-group" >
							<label class="col-md-3 control-label">Gender</label>
							<div class="col-md-6">
								<span class="radio inline">
									<input type="radio" class="tectonic form-control" id="male" value="male" name="gender"  >
									<label for="male" class="" required></label>
									<span>Male</span>
								</span>
								<span class="radio inline">
									<input type="radio" class="tectonic" id="female" value="female" name="gender">
									<label for="female"></label>
									<span>Female</span>
								</span>
								
							</div>
						    </div>
						    
						    <div class="form-group">
    						<label for="fieldname" class="col-md-3 control-label">City</label>
    						<div class="col-md-6">
    							<input id="city" class="form-control" name="city"  type="text" required placeholder="Enter the City">
    						</div>
    					</div>
    					
    					<div class="form-group">
    						<label for="fieldname" class="col-md-3 control-label">State</label>
    						<div class="col-md-6">
    							<input id="state" class="form-control" name="state"  type="text" required placeholder="Enter the State">
    						</div>
    					</div>
    					
       					
    					<div class="form-group" >
    						<label for="fieldabout" class="col-md-3 control-label">Address</label>
    						<div class="col-md-6"><input type="text" class="form-control" name="add" required placeholder="Enter the Adddress"></div>
    						
    					</div>
    					
    				
    				
    				
    				<legend>Verification</legend>
    				<div class="form-group">
                        <label class="col-md-3 control-label">Mobile No.</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control mask" minilength="10" name="mobile" >
                        </div>
                        <div class="col-sm-3"><p class="help-block">+33 999 999 999</p></div>
                    </div>
                    
    				<div class="form-group">
    						<label for="fieldemail" class="col-md-3 control-label">Email</label>
    						<div class="col-md-6"><input id="fieldemail" class="form-control" type="email" name="email" required></div>
    					</div>
    					
    					<div class="form-group">
    						<label class="col-md-3 control-label">Password</label>
    						<div class="col-md-6">
    							<input type="password" class="form-control" name="password" required minlength="8">
    						</div>
    					</div>
    					
    					<div class="form-group">
    						<label class="col-md-3 control-label">Confirm Password</label>
    						<div class="col-md-6">
    							<input type="password" class="form-control" required minlength="8" name="conpassword">
    						</div>
    					</div>
    					
    					<div class="form-group">
							<label class="col-sm-2 control-label">Profile Pic</label>
						<div class="col-sm-5">
							<div class="fileinput fileinput-new" style="width: 100%;" data-provides="fileinput"><input type="hidden" value="" name="...">
								<div class="fileinput-preview thumbnail mb20" data-trigger="fileinput" style="width: 100%; height: 150px; line-height: 150px;"></div>
								<div>
									<a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
									<span class="btn btn-default btn-file"><span class="fileinput-new">Select image</span><span class="fileinput-exists">Change</span><input type="file" name="profilepic"></span>
									
								</div>
							</div>
						</div>
						
				</div>
    					
    					
    					
    				
    				<input type="submit" class="finish pull-right btn-success btn" value="Submit" />
    			</form>
    		</div>
    	</div>
    </div>
</div>
</center>
                       
                       
                       <!--form end  -->
                       
                       
               <!-- .container-fluid -->
                    </div> <!-- #page-content -->
                    </div>
     			<!--footer start  -->
     			<%@include file="footer.jsp" %>
				<!--footer end  -->
                </div>
	            </div>
	        	</div>
				</div>

        


    <!-- Switcher -->

<!-- /Switcher -->
    <!-- Load site level scripts -->
    <script type="text/javascript">
   
</script>
<script type="text/javascript" src="../../assets/js/jquery-1.10.2.min.js"></script> 							<!-- Load jQuery -->
<script type="text/javascript" src="../../assets/js/jqueryui-1.9.2.min.js"></script> 							<!-- Load jQueryUI -->

<script type="text/javascript" src="../../assets/js/bootstrap.min.js"></script> 								<!-- Load Bootstrap -->

<script type="text/javascript" src="../../assets/plugins/easypiechart/jquery.easypiechart.js"></script> 		<!-- EasyPieChart-->
<script type="text/javascript" src="../../assets/plugins/sparklines/jquery.sparklines.min.js"></script>  		<!-- Sparkline -->
<script type="text/javascript" src="../../assets/plugins/jstree/dist/jstree.min.js"></script>  				<!-- jsTree -->

<script type="text/javascript" src="../../assets/plugins/codeprettifier/prettify.js"></script> 				<!-- Code Prettifier  -->
<script type="text/javascript" src="../../assets/plugins/bootstrap-switch/bootstrap-switch.js"></script> 		<!-- Swith/Toggle Button -->

<script type="text/javascript" src="../../assets/plugins/bootstrap-tabdrop/js/bootstrap-tabdrop.js"></script>  <!-- Bootstrap Tabdrop -->

<script type="text/javascript" src="../../assets/plugins/iCheck/icheck.min.js"></script>     					<!-- iCheck -->

<script type="text/javascript" src="../../assets/js/enquire.min.js"></script> 									<!-- Enquire for Responsiveness -->

<script type="text/javascript" src="../../assets/plugins/bootbox/bootbox.js"></script>							<!-- Bootbox -->

<script type="text/javascript" src="../../assets/plugins/nanoScroller/js/jquery.nanoscroller.min.js"></script> <!-- nano scroller -->

<script type="text/javascript" src="../../assets/plugins/jquery-mousewheel/jquery.mousewheel.min.js"></script> 	<!-- Mousewheel support needed for jScrollPane -->

<script type="text/javascript" src="../../assets/js/application.js"></script>
 <script type="text/javascript" src="../../assets/demo/demo.js"></script>
<script type="text/javascript" src="../../assets/demo/demo-switcher.js"></script>

<script type="text/javascript" src="../../assets/plugins/pulsate/jQuery.pulsate.min.js"></script>
<script type="text/javascript" src="../../assets/plugins/localisation/js/jquery.localize.min.js"></script>
<script type="text/javascript" src="../../assets/plugins/localisation/js/demo-localisation.js"></script>
<script type="text/javascript" src="../../assets/demo/demo-jqueryui.js"></script>

<!-- End loading site level scripts -->
    
    <!-- Load page level scripts-->
<script type="text/javascript" src="../../assets/plugins/form-validation/jquery.validate.min.js"></script>  					<!-- Validate Plugin -->
<script type="text/javascript" src="../../assets/plugins/form-stepy/jquery.stepy.js"></script>  								<!-- Stepy Plugin -->
<script type="text/javascript" src="../../assets/demo/demo-formwizard.js"></script>
<script type="text/javascript" src="../../assets/plugins/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script> <!-- Color Picker -->

<script type="text/javascript" src="../../assets/plugins/bootstrap-datepicker/bootstrap-datepicker.js"></script>      <!--			 Datepicker -->
<script type="text/javascript" src="../../assets/plugins/form-daterangepicker/moment.min.js"></script>              			<!-- Moment.js for Date Range Picker -->
<script type="text/javascript" src="../../assets/plugins/form-daterangepicker/daterangepicker.js"></script>     				<!-- Date Range Picker -->

<script type="text/javascript" src="../../assets/demo/demo-pickers.js"></script>    
<script type="text/javascript" src="../../assets/plugins/form-jasnyupload/fileinput.min.js"></script> 
<script>
    // Step:3 conifg ECharts's path, link to echarts.js from current page.
    // Step:3 ????????echarts????????????echarts.js?????????

    $('#reset').click(function () {
       bootbox.confirm("Are you sure you want to clear Local Storage? This will clear ALL globally set settings", function() {
           localStorage.clear();
       }); 
    });

    setTimeout(function() {
        require.config({
           paths: {
               echarts: '../../assets/www/js'
           }
        });
        require(
        [
            'echarts',
            'echarts/chart/radar',
            'echarts/chart/pie'
        ],
        function (ec) {
            var myChart = ec.init(document.getElementById('main'));
            myChart.setTheme('macarons');
            myChart.setOption({
                tooltip : {
                    trigger: 'axis'
                },
                legend: {
                    orient : 'vertical',
                    x : 'right',
                    y : 'top',
                    data:['A','B'],
                    padding: 1
                },
                toolbox: {
                    show : false,
                    feature : {
                        mark : {show: false},
                        dataView : {show: true, readOnly: false},
                        restore : {show: false},
                        saveAsImage : {show: false}
                    }
                },
                polar : [
                   {
                       indicator : [
                           { text: '', max: 6000},
                           { text: '', max: 16000},
                           { text: '', max: 30000},
                           { text: '', max: 38000},
                           { text: '', max: 52000},
                           { text: '', max: 25000}
                        ],
                        radius:'100%'
                    }
                ],
                calculable : true,
                series : [
                    {
                        name: 'A vs B',
                        type: 'radar',
                        data : [
                            {
                                value : [4300, 10000, 28000, 35000, 50000, 19000],
                                name : 'A'
                            },
                             {
                                value : [5000, 14000, 28000, 31000, 42000, 21000],
                                name : 'B'
                            }
                        ]
                    }
                ]
            });

            $(window).resize(function () {
                myChart.resize();
            });
        }

        );
    }, 100);
</script>

    <!-- End loading page level scripts-->

    </body>

<!-- Mirrored from tectonic.kaijuthemes.com/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 03 Jan 2017 08:52:25 GMT -->
</html>