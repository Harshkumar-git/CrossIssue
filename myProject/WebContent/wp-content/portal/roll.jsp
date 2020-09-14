<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);

String userName=(String)session.getAttribute("userName");
if(userName==null){
	response.sendRedirect(request.getContextPath()+"/wp-content/portal/login.jsp");
}

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
        
        
			<!--Hader start  -->
			<%@include file="hader.jsp" %>
			<!--Hader End  -->
			
        <div id="wrapper">
            <div id="layout-static">
                <div class="static-leftbar-wrapper leftbar-bunting">
                    <div class="static-leftbar">
                      <!--Left Bar Start  --> 
                      <%@include file="leftbar.jsp" %>          <!--Left BAR End  -->
                </div>
                <div class="static-content-wrapper">
                    <div class="static-content">
                        <div class="page-content">
                            <div class="page-heading mb-n">
                                <h1>Roll type</h1>
                        <div class="options">
        			</div>
                    </div>
                    <!--main Container  -->
                    <div class="row">
    <div class="col-md-12">

    	
    	<div class="panel panel-info">
    		<div class="panel-heading">
    			
    		</div>
    		<div class="panel-body p-n stepy-info">
    			<form action="<%=request.getContextPath()%>/Controller" id="wizard" class="form-horizontal row-border p-md" method="post">
    			<input type="hidden" name="actionCode" value="rolltype">
                    <div class="form-group">
    						<label for="fieldname" class="col-md-3 control-label">Roll Type</label>
    						<div class="col-md-6">
    							<input id="f_name" class="form-control" name="r_type" type="text" required placeholder="Enter the Roll type">
    						</div>
    					</div>
    					
    					<div class="form-group">
    						<label for="fieldname" class="col-md-3 control-label">Roll Id</label>
    						<div class="col-md-6">
    							<input id="f_name" class="form-control" name="r_id"  type="text" required placeholder="Enter the Roll Id">
    						</div>
    					</div>
                    <input type="submit" class="finish pull-right btn-success btn" value="Submit" />
                  	
                    </form>
                    </div>
                    </div>
                    </div>
                    </div>
                    
                       
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
    
<script type="text/javascript" src="../../assets/plugins/switchery/switchery.js"></script>                             <!-- Switchery -->

<script type="text/javascript" src="../../assets/plugins/wijets/wijets.js"></script>                                   <!-- Wijet -->
<script type="text/javascript" src="../../assets/plugins/charts-chartistjs/chartist.min.js"></script>                  <!-- Chartist -->
<script type="text/javascript" src="../../assets/plugins/charts-chartistjs/chartist-plugin-tooltip.js"></script>       <!-- Chartist -->

<script type="text/javascript" src="../../assets/plugins/easypiechart/jquery.easypiechart.min.js"></script>            <!-- EasyPieChart-->

<script type="text/javascript" src="../../assets/plugins/switchery/switchery.js"></script>                             <!-- Switchery -->
<script type="text/javascript" src="../../assets/plugins/easypiechart/jquery.easypiechart.min.js"></script>            <!-- EasyPieChart-->
<script type="text/javascript" src="../../assets/plugins/jQuery-Mapael/js/raphael/raphael-min.js"></script>            <!-- Load Raphael as Dependency -->
<script type="text/javascript" src="../../assets/plugins/jquery-mousewheel/jquery.mousewheel.min.js"></script>         <!-- MouseWheel Support -->
<script type="text/javascript" src="../../assets/plugins/jQuery-Mapael/js/jquery.mapael.js"></script>                  <!-- jQuery Mapael -->
<script type="text/javascript" src="../../assets/plugins/jQuery-Mapael/js/maps/world_countries.js"></script>           <!-- Vector Data of World Countries -->

<script type="text/javascript" src="../../assets/plugins/knob/jquery.knob.min.js"></script>

<script type="text/javascript" src="../../assets/demo/demo-index.js"></script>                                         <!-- demo -->
<script type="text/javascript" src="../../assets/demo/demo-index-map.js"></script>
<script type="text/javascript" src="../../assets/js/echarts.js"></script>

<script type="text/javascript" src="../../assets/plugins/charts-flot/jquery.flot.min.js"></script>
<script type="text/javascript" src="../../assets/plugins/charts-flot/jquery.flot.stack.min.js"></script>
<script type="text/javascript" src="../../assets/plugins/charts-flot/jquery.flot.pie.min.js"></script>
<script type="text/javascript" src="../../assets/plugins/charts-flot/jquery.flot.orderBars.min.js"></script>
<script type="text/javascript" src="../../assets/plugins/charts-flot/jquery.flot.resize.js"></script>

<script type="text/javascript" src="../../assets/plugins/charts-flot/jquery.flot.tooltip.min.js"></script>

<script type="text/javascript" src="../../assets/plugins/charts-chartjs/Chart.min.js"></script>

<script type="text/javascript" src="../../assets/plugins/form-daterangepicker/moment.min.js"></script>                         <!-- Moment.js for Date Range Picker -->
<script type="text/javascript" src="../../assets/plugins/form-daterangepicker/daterangepicker.js"></script> 

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