<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from www.themenesia.com/themeforest/onehost/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 02 Apr 2017 06:45:22 GMT -->
<head>
    <meta charset="utf-8">
    <title>Cross-Issue</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Responsive Minimal Bootstrap Theme">
    <meta name="keywords" content="responsive,minimal,bootstrap,theme">
    <meta name="author" content="">


    <!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<![endif]-->


    <!-- CSS Files
    ================================================== -->
    <link rel="stylesheet" href="css/main.css" type="text/css">


    <!-- Javascript Files
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/easing.js"></script>
    <script src="js/jquery.ui.totop.js"></script>
    <script src="js/ender.js"></script>
    <script src="js/jquery.flexslider-min.js"></script>
    <script src="js/jquery.scrollto.js"></script>
    <script src="js/supersized.3.2.7.min.js"></script>
    <script src="js/designesia.js"></script>
    <script src="js/validation.js"></script>
    
    <script type="text/javascript">

        jQuery(function ($) {

            $.supersized({

                // Functionality
                slide_interval: 3000,		// Length between transitions
                transition: 1, 			// 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
                transition_speed: 700,		// Speed of transition

                // Components							
                slide_links: 'blank',	// Individual links for each slide (Options: false, 'num', 'name', 'blank')
                slides: [			// Slideshow Images
                                                    { image: 'images-slider/wide1.jpg', url: '' },
                                                    { image: 'images-slider/wide2.jpg', url: '' },
													{ image: 'images-slider/wide3.jpg', url: '' },
                ]

            });
        });

    </script>

    <!-- SLIDER REVOLUTION SCRIPTS  -->
    <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
    <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
    <script src="js/rev-setting-1.html"></script>
</head>

<body id="homepage" class="dark">
    <div class="loader"></div>

    <div id="wrapper">
        <!-- header begin -->
        <header>
            <div class="container">
                <span id="menu-btn"></span>

                <div id="logo">
                    <div class="inner">
                        <a href="index.html">
                            <img src="images/logo.png" alt="logo" width="200px" height="300px"></a>
                    </div>
                </div>

                <!-- mainmenu begin -->
                <nav>
                <ul id="mainmenu">
                    <li><a href="#revolution-slider">Home</a></li>
                    <li><a href="#page-about">About Us</a></li>
                    <li><a href="#page-pricing">FeedBack</a></li>
                    <li><a href="#page-services">Query</a></li>
                    <li><a href="#page-contact">Contact</a></li>
                    
                </ul>                
				</nav>
                <!-- mainmenu close -->


            </div>
        </header>
        <!-- header close -->


        <!-- revolution slider begin -->
        <div class="fullwidthbanner-container">
            <div id="revolution-slider">
                <ul>
                    <li data-transition="fade" data-slotamount="10" data-masterspeed="200" data-thumb="images-slider/thumbs/thumb1.jpg">
                        <!--  BACKGROUND IMAGE -->
                        <img src="images/BPM1.jpg">
                        <div class="tp-caption ultra-big-white customin customout start"
                            data-x="center"
                            data-y="center"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="400"
                            data-start="400"
                            data-easing="easeInOutExpo"
                            data-endspeed="300">
                            <span class="id-color">Cross-</span>Issue
                        </div>

                        <div class="tp-caption sfr teaser"
                            data-x="center"
                            data-y="336"
                            data-speed="400"
                            data-start="800"
                            data-easing="easeInOutExpo">
                            Welcome to Cross-Issue.
                        </div>

                        <div class="tp-caption lfb text-center"
                            data-x="center"
                            data-y="390"
                            data-speed="400"
                            data-start="1200"
                            data-easing="easeInOutExpo">
                            <a href="<%=request.getContextPath() %>/Controller?actionCode=rolllogin" class="btn-slider">Log In</a>&nbsp;&nbsp;
                            <a href="<%=request.getContextPath() %>/Controller?actionCode=reg" class="btn-slider solid">Register</a>
                        </div>
                        
                       
                    </li>

                    <li data-transition="fade" data-slotamount="10" data-masterspeed="200" data-thumb="images-slider/thumbs/thumb1.jpg">
                        <!--  BACKGROUND IMAGE -->
                        <img src="images/pic-blog-2.jpg">
                        <div class="tp-caption ultra-big-white customin customout start"
                            data-x="center"
                            data-y="center"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="400"
                            data-start="400"
                            data-easing="easeInOutExpo"
                            data-endspeed="300">
                            All In <span class="id-color">One</span>
                        </div>

                        

                        <div class="tp-caption lfb text-center"
                            data-x="center"
                            data-y="390"
                            data-speed="400"
                            data-start="1200"
                            data-easing="easeInOutExpo">
                             <a href="../portal/login.jsp" class="btn-slider">Log In</a>&nbsp;&nbsp;
                            <a href="<%=request.getContextPath() %>/Controller?actionCode=reg" class="btn-slider solid">Register</a>
                        </div>
                    </li>

                    <li data-transition="fade" data-slotamount="10" data-masterspeed="200" data-thumb="images-slider/thumbs/thumb1.jpg">
                        <!--  BACKGROUND IMAGE -->
                        <img src="images/bg-blur-3.jpg">
                        <div class="tp-caption ultra-big-white customin customout start"
                            data-x="center"
                            data-y="center"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="400"
                            data-start="400"
                            data-easing="easeInOutExpo"
                            data-endspeed="300">
                            <span class="id-color">Top</span>Support
                        </div>

                        

                        <div class="tp-caption lfb text-center"
                            data-x="center"
                            data-y="390"
                            data-speed="400"
                            data-start="1200"
                            data-easing="easeInOutExpo">
                             <a href="../portal/login.jsp" class="btn-slider">Log In</a>&nbsp;&nbsp;
                            <a href="<%=request.getContextPath() %>/Controller?actionCode=reg" class="btn-slider solid">Register</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- revolution slider close -->


        <!-- content begin -->
        <div id="content" class="no-bottom no-top">

            <!-- about us section begin -->
            <section id="page-about">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <h1 class="animated" data-animation="fadeInLeft">We Are Cross-Issue
                        	<span class="small-border"></span>
                            </h1>
                            <p class="animated" data-animation="fadeIn">
                                Reduse The Man Chain and Get the Soluction In minimmum Time. We can do the fastest work done with accuracy and good quality.
                                <br>After the Compete the Work we send the Notification to the client to send mail and also send the Message on Mobile.
                            </p>
                            <div class="spacer-single"></div>
                        </div>
                        <div class="feature-box-image col-md-4 animated" data-animation="fadeInLeft">
                            <div class="inner">
                                <div class="text">
                                    <img src="images/feature-pic-1.jpg" alt="" class="img-rounded">
                                   <h3>Fast Solve Problem</h3>
                                    Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo.
                                </div>
                            </div>
                        </div>

                        <div class="feature-box-image col-md-4 animated" data-animation="fadeInUp">
                            <div class="inner">
                                <div class="text">
                                 <img src="images/feature-pic-3.jpg" alt="" class="img-rounded">
                                    
                                    <h3>Notification after work done</h3>
                                    Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo.
                                </div>
                            </div>
                        </div>

                        <div class="feature-box-image col-md-4 animated" data-animation="fadeInRight">
                            <div class="inner">
                                <div class="text">
                                    <img src="images/feature-pic-2.jpg" alt="" class="img-rounded">
                                    <h3>Accurate Work</h3>
                                    Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo.
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
            <!-- about us section close -->



            <!-- pricing section begin -->
            <section id="page-pricing" data-speed="5" data-type="background">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <h1 class="animated" data-animation="fadeInLeft">Feedback
                        	<span class="small-border"></span>
                            </h1>
                             <form action="<%=request.getContextPath()%>/Controller" id='contact_form' method="post" >
                             <input type="hidden" name="actionCode" value="feedback"> 
                                <div id='name_error' class='error'>Please enter your name.</div>
                                <div>
                                    <input type='text' name='name' id='name' class="form-control" placeholder="Your Name">
                                </div>
                                <div id='email_error' class='error'>Please enter your valid E-mail ID.</div>
                                <div>
                                    <input type='text' name='email' id='email' class="form-control" placeholder="Your Email">
                                </div>
                                 <div id='message_error' class='error'>Please enter your Rating between 1 to 5</div>
                                <div>
                                    <input type='text' name='rating' id='email' class="form-control" placeholder="Your rating (1 to 5)">
                                </div>
                                <div id='message_error' class='error'>Please enter your Comment</div>
                                <div>
                                    <textarea name='message' id='message' class="form-control" placeholder="Your Comment"></textarea>
                                </div>
                                <div id='mail_success' class='success'>Your Feedback has been sent successfully.</div>
                                <div id='mail_fail' class='error'>Sorry, error occured this time sending your message.</div>
                                <p id='submit'>
                                <button type="submit"  name="Submit" value='Submit' class="btn btn-primary">submit</button>
                                </p>
                            </form>
                        <!-- feature box close -->

                        <!-- feature box begin -->
                        
                        <!-- feature box close -->
                    </form>
                            <div class="spacer-single"></div>
                            
                        </div>

                    </div>
                </div>
            </section>
            <!-- pricing section close -->


            <!-- include section begin -->
            <section id="Query" data-speed="10" data-type="background" style="background-color: #2079ab">
                <div class="container">
                  
                </div>
            </section>
            <!-- include section close -->

            <!-- testimonial section begin -->
            
            <!-- services section begin -->
            <section id="page-services" data-speed="8" data-type="background">
                <div class="container">
                    <div class="row">
                     <form action="<%=request.getContextPath()%>/Controller" id='contact_form' method="post" >
                             <input type="hidden" name="actionCode" value="query"> 
                        <div class="col-md-12 text-center">
                            <h1 class="animated" data-animation="fadeInLeft">Any Query
                        	<span class="small-border"></span>
                            </h1>
                            <p class="animated" data-animation="fadeIn">
                                
                            </p>
                            <div class="spacer-single"></div>
                        </div>
                        <!-- feature box begin -->
                        <div class="feature-box-small-icon col-md-12 animated" data-animation="fadeInLeft">
                            <div id='name_error' class='error'>Please enter your name.</div>
                                <div>
                                    <input type='text' name='name' id='name' class="form-control" placeholder="Your Name">
                                </div>
                        </div>
                        <!-- feature box close -->

                        <!-- feature box begin -->
                        <div class="feature-box-small-icon col-md-12 animated" data-animation="fadeInRight">
                            <div id='email_error' class='error'>Please enter your valid E-mail ID.</div>
                                <div>
                                    <input type='text' name='email' id='email' class="form-control" placeholder="Your Email">
                                </div>
                        </div>
                        <!-- feature box close -->

                        <!-- feature box begin -->
                        <div class="feature-box-small-icon col-md-12 animated" data-animation="fadeInLeft">
                            <div id='subject_error' class='error'>Please enter the subject.</div>
                                <div>
                                    <input type='text' name='subject' id='subject' class="form-control" placeholder="Subject">
                                </div>
                        </div>
                        <!-- feature box close -->

                        <!-- feature box begin -->
                        <div class="feature-box-small-icon col-md-12 animated" data-animation="fadeInRight">
                            <div id='message_error' class='error'>Please enter your message.</div>
                                <div>
                                    <textarea name='message' id='message' class="form-control" placeholder="Your Message"></textarea>
                                </div>
                        </div>
                        <!-- feature box close -->

                        <!-- feature box begin -->
                        <div class="feature-box-small-icon col-md-12 animated" data-animation="fadeInLeft">
                           <center><p id='submit'>
                                <button type="submit"  name="Submit" value='Submit' class="btn btn-primary">submit</button>
                                </p></center>
                        </div>
                        <!-- feature box close -->

                        <!-- feature box begin -->
                        
                        <!-- feature box close -->
                    </form>
                    </div>
                </div>
            </section>
            <!-- services section close -->



            <!-- why-choose-us section begin -->
            
            <!-- why-choose-us section close -->




            <!-- testimonial section begin -->
            
            <!-- services section close -->


            <!-- logo carousel section begin -->
          
            <!-- logo carousel section close -->

            <!-- contact section begin -->
            <section id="page-contact">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <h1 class="animated" data-animation="fadeInLeft">Contact Us
                        	<span class="small-border"></span>
                            </h1>
                            <p class="animated" data-animation="fadeIn">
                                
                            </p>
                            <div class="spacer-single"></div>
                        </div>

                        <div class="col-md-6">

                            <form name="contactForm" id='contact_form' method="post" '>
                                <div id='name_error' class='error'>Please enter your name.</div>
                                <div>
                                    <input type='text' name='name' id='name' class="form-control" placeholder="Your Name">
                                </div>
                                <div id='email_error' class='error'>Please enter your valid E-mail ID.</div>
                                <div>
                                    <input type='text' name='email' id='email' class="form-control" placeholder="Your Email">
                                </div>
                                <div id='subject_error' class='error'>Please enter the subject.</div>
                                <div>
                                    <input type='text' name='subject' id='subject' class="form-control" placeholder="Subject">
                                </div>
                                <div id='message_error' class='error'>Please enter your message.</div>
                                <div>
                                    <textarea name='message' id='message' class="form-control" placeholder="Your Message"></textarea>
                                </div>
                                <div id='mail_success' class='success'>Your message has been sent successfully.</div>
                                <div id='mail_fail' class='error'>Sorry, error occured this time sending your message.</div>
                                <p id='submit'>
                                    <input type='submit' id='send_message' value='Submit Form' class="btn btn-primary">
                                </p>
                            </form>

                        </div>

                        <div class="col-md-6">
                            <address>
                                <span><i class="fa fa-map-marker fa-lg"></i>100 Mainstreet Center, Sydney</span>
                                <span><i class="fa fa-phone fa-lg"></i>(208) 333 9296</span>
                                <span><i class="fa fa-envelope-o fa-lg"></i><a href="mailto:contact@example.com">contact@example.com</a></span>
                                <span><i class="fa fa-globe fa-lg"></i><a href="#">support.onehost.com</a></span>
                            </address>
                        </div>
                    </div>
                </div>
            </section>
            <!-- contact section close -->




        </div>
        <!-- content close -->

        <!-- footer begin -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="social-icons">
                            <a href="#"><i class="fa fa-facebook fa-lg"></i></a>
                            <a href="#"><i class="fa fa-twitter fa-lg"></i></a>
                            <a href="#"><i class="fa fa-google-plus fa-lg"></i></a>
                            <a href="#"><i class="fa fa-skype fa-lg"></i></a>

                        </div>
                        <div class="spacer-single"></div>
                        © Copyright 2017 - Cross-Issue
                    </div>
                </div>
            </div>
        </footer>
        <!-- footer close -->
    </div>
</body>

<!-- Mirrored from www.themenesia.com/themeforest/onehost/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 02 Apr 2017 06:46:04 GMT -->
</html>
