<%-- 
    Document   : index
    Created on : 28 Mar, 2019, 5:52:52 PM
    Author     : dharan padhiyar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>alto-digital</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

        <!-- all css here -->
        <!-- bootstrap v3.3.6 css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- animate css -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- jquery-ui.min css -->
        <link rel="stylesheet" href="css/jquery-ui.min.css">
        <!-- meanmenu css -->
        <link rel="stylesheet" href="css/meanmenu.min.css">
        <!-- nivo-slider.css -->
        <link rel="stylesheet" href="css/nivo-slider.css">
        <!-- owl.carousel css -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <!-- font-awesome css -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- pe-icon-7-stroke.css -->
        <link rel="stylesheet" href="css/pe-icon-7-stroke.css">
        <!-- magnific-popup.css -->
        <link rel="stylesheet" href="css/magnific-popup.css">
        <!-- chosen.min.css -->
        <link rel="stylesheet" href="css/chosen.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="style.css">
        <!-- responsive css -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- modernizr css -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
     
        <!-- header-area-start -->
        <c:import url="header.jsp"></c:import>
        <!-- header-area-end -->
        <!-- section-element-area-start -->
        <div class="section-element-area pt-20">
            <div class="container">
                <div class="row">
                    <!-- left-menu-start -->

                    <!-- left-menu-end -->
                    <!-- slider-area-start -->
                    <div class="col-lg-6 col-md-6 col-sm-8 col-xs-12">
                        <div class="slider-area">
                            <div id="slider">
                                <img src="img/slider/1.jpg" alt="Apple Watch" title="#caption1" />
                                <img src="img/slider/2.jpg" alt="Smart Keyboard" title="#caption2" />
                            </div>
                            <div class="nivo-html-caption" id="caption1">
                                <h3 class="wow fadeInDownBig" data-wow-delay="0.7s">Apple Watch</h3>
                                <h4 class="wow lightSpeedIn" data-wow-delay="1s">Available online now</h4>
                                <a href="#" class="wow fadeInDownBig" data-wow-delay="0.9s">SHOP NOW</a>
                            </div>
                            <div class="nivo-html-caption" id="caption2">
                                <h3 class="wow fadeInDownBig right" data-wow-delay="0.7s">Smart Keyboard</h3>
                                <h4 class="wow lightSpeedIn right" data-wow-delay="1s">FOR IPAD PRO</h4>
                                <a href="#" class="wow fadeInDownBig right" data-wow-delay="0.9s">SHOP NOW</a>
                            </div>
                        </div>
                    </div>
                    <!-- slider-area-end -->
                    <!-- right-banner-area-start -->
                    <div class="col-lg-3 col-md-3 hidden-sm hidden-xs">
                        <div class="right-banner-area">
                            <div class="row">
                                <div class="col-lg-12">
                                    <!-- single-banner-start -->
                                    <div class="single-banner mb-30">
                                        <a href="#"><img src="img/banner/1.jpg" alt="Apple product" /></a>
                                        <div class="banner-text">
                                            <h4>Apple Products</h4>
                                            <h3>Iphone 6+</h3>
                                        </div>
                                    </div>
                                    <!-- single-banner-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-banner-start -->
                                    <div class="single-banner">
                                        <a href="#"><img src="img/banner/2.jpg" alt="Apple product" /></a>
                                        <div class="banner-text">
                                            <h3>Window Phones</h3>
                                        </div>
                                    </div>
                                    <!-- single-banner-end -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- right-banner-area-end -->
                </div>
            </div>
        </div>
        <!-- section-element-area-end -->
        <!-- service-area-start -->
        <div class="service-area ptb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 hidden-sm col-xs-12">
                        <!-- single-area-start -->
                        <div class="single-service">
                            <div class="service-icon">
                                <a href="#"><i class="pe-7s-plane"></i></a>
                            </div>
                            <div class="service-text">
                                <h3>FREE SHIPPING WORLDWIDE</h3>
                                <span>On All Orders Of USD 250,00+.</span>
                            </div>
                        </div>
                        <!-- single-area-end -->
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <!-- single-area-start -->
                        <div class="single-service">
                            <div class="service-icon">
                                <a href="#"><i class="pe-7s-headphones"></i></a>
                            </div>
                            <div class="service-text">
                                <h3>24/7 CUSTOMER SERVICE</h3>
                                <span>Get Help When You Need It.</span>
                            </div>
                        </div>
                        <!-- single-area-end -->
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <!-- single-area-start -->
                        <div class="single-service">
                            <div class="service-icon">
                                <a href="#"><i class="pe-7s-refresh-2"></i></a>
                            </div>
                            <div class="service-text">
                                <h3>100% MONEY BACK</h3>
                                <span>30 Day Money Back Guarantee.</span>
                            </div>
                        </div>
                        <!-- single-area-end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- service-area-end -->
        
        <!-- product-area-end -->
        <!-- banner-area-start -->
        <div class="banner-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <!-- single-banner-start -->
                        <div class="single-banner">
                            <a href="#"><img src="img/banner/3.jpg" alt="Apple product" /></a>
                            <div class="banner-text text-positon">
                                <h4>Apple <span>Watch</span></h4>
                                <h3>THE NEW</h3>
                            </div>
                        </div>
                        <!-- single-banner-end -->
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6  col-xs-12">
                        <!-- single-banner-start -->
                        <div class="single-banner">
                            <a href="#"><img src="img/banner/4.jpg" alt="Apple product" /></a>
                            <div class="banner-text text-positon2">
                                <h4>Sale <span>25%</span> Off</h4>
                                <h3>For This Week!</h3>
                            </div>
                        </div>
                        <!-- single-banner-end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- banner-area-end -->
        <!-- special-product-area-start -->
        
        <!-- special-product-area-end -->
        <!-- banner-area-2-start -->
        <div class="banner-area-2">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <!-- single-banner-start -->
                        <div class="single-banner">
                            <a href="#"><img src="img/banner/5.jpg" alt="Apple product" /></a>
                            <div class="banner-text text-positon">
                                <h4>Apple <span>Collection</span></h4>
                                <h3>SALE OFF <span>25%</span> NOW</h3>
                            </div>
                        </div>
                        <!-- single-banner-end -->
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <!-- single-banner-start -->
                        <div class="single-banner">
                            <a href="#"><img src="img/banner/6.jpg" alt="Apple product" /></a>
                            <div class="banner-text text-positon2 text-positon3">
                                <h4>New Apple <span>Imac</span></h4>
                                <p>RETINA. NOW IN COLOSSAL <br />AND GINORMOUS.</p>
                            </div>
                        </div>
                        <!-- single-banner-end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- banner-area-2-end -->
        <!-- new-product-area-start -->
        
        <!-- new-product-area-end -->
        <!-- brand-area-start -->
        <div class="brand-area ptb-50">
            <div class="container">
                <div class="row">
                    <div class="brand-active">
                        <!-- single-brand-start -->
                        <div class="col-lg-12">
                            <div class="single-brand">
                                <a href="#"><img src="img/brand/1.jpg" alt="brand-1" /></a>
                            </div>
                        </div>
                        <!-- single-brand-end -->
                        <!-- single-brand-start -->
                        <div class="col-lg-12">
                            <div class="single-brand">
                                <a href="#"><img src="img/brand/2.jpg" alt="brand-2" /></a>
                            </div>
                        </div>
                        <!-- single-brand-end -->
                        <!-- single-brand-start -->
                        <div class="col-lg-12">
                            <div class="single-brand">
                                <a href="#"><img src="img/brand/3.jpg" alt="brand-3" /></a>
                            </div>
                        </div>
                        <!-- single-brand-end -->
                        <!-- single-brand-start -->
                        <div class="col-lg-12">
                            <div class="single-brand">
                                <a href="#"><img src="img/brand/4.jpg" alt="brand-4" /></a>
                            </div>
                        </div>
                        <!-- single-brand-end -->
                        <!-- single-brand-start -->
                        <div class="col-lg-12">
                            <div class="single-brand">
                                <a href="#"><img src="img/brand/5.jpg" alt="brand-5" /></a>
                            </div>
                        </div>
                        <!-- single-brand-end -->
                        <!-- single-brand-start -->
                        <div class="col-lg-12">
                            <div class="single-brand">
                                <a href="#"><img src="img/brand/6.jpg" alt="brand-6" /></a>
                            </div>
                        </div>
                        <!-- single-brand-end -->
                        <!-- single-brand-start -->
                        <div class="col-lg-12">
                            <div class="single-brand">
                                <a href="#"><img src="img/brand/7.jpg" alt="brand-7" /></a>
                            </div>
                        </div>
                        <!-- single-brand-end -->
                        <!-- single-brand-start -->
                        <div class="col-lg-12">
                            <div class="single-brand">
                                <a href="#"><img src="img/brand/1.jpg" alt="brand-1" /></a>
                            </div>
                        </div>
                        <!-- single-brand-end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- brand-area-end -->
        <!-- service-area-2-start -->
        <div class="service-area-2 pb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 hidden-sm col-xs-12">
                        <!-- single-area-start -->
                        <div class="single-service">
                            <div class="service-icon">
                                <a href="#"><i class="pe-7s-plane"></i></a>
                            </div>
                            <div class="service-text">
                                <h3>FREE SHIPPING WORLDWIDE</h3>
                                <span>On All Orders Of USD 250,00+.</span>
                            </div>
                        </div>
                        <!-- single-area-end -->
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <!-- single-area-start -->
                        <div class="single-service">
                            <div class="service-icon">
                                <a href="#"><i class="pe-7s-headphones"></i></a>
                            </div>
                            <div class="service-text">
                                <h3>24/7 CUSTOMER SERVICE</h3>
                                <span>Get Help When You Need It.</span>
                            </div>
                        </div>
                        <!-- single-area-end -->
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <!-- single-area-start -->
                        <div class="single-service">
                            <div class="service-icon">
                                <a href="#"><i class="pe-7s-refresh-2"></i></a>
                            </div>
                            <div class="service-text">
                                <h3>100% MONEY BACK</h3>
                                <span>30 Day Money Back Guarantee.</span>
                            </div>
                        </div>
                        <!-- single-area-end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- service-area-2-end -->
        <!-- footer-area-start -->
        <c:import url="footer.jsp" />
        <!-- footer-area-end -->
        <!-- modal-area-start -->
        <div class="modal-area">
            <!-- single-modal-start -->
            <div class="modal fade" id="mymodal" tabindex="-1" role="dialog" aria-hidden="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-img">
                                <div class="single-img">
                                    <img src="img/product/slider-product/2.jpg" alt="mobile" class="primary" />
                                </div>
                            </div>
                            <div class="model-text">
                                <h2><a href="#">Apple Iphone 6 - 128 Gb</a> </h2>
                                <div class="product-rating">
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                </div>
                                <div class="price-rate">
                                    <span class="old-price"><del>$299.00</del></span>
                                    <span class="new-price">$199.00</span>
                                </div>
                                <div class="short-description mt-20">
                                    <p>Bacon ipsum dolor sit amet ut nostrud chuck, voluptate adipisicing veniam kielbasa fugiat ex spare ribs. Incididunt sint officia non cow, ut et. Cillum porchetta tongue occaecat laborum bacon aliquip fatback flank dolore short loin ball tip bresaola deserunt dolor. Shoulder fugiat ut in ut tail swine dolore, capicola ullamco beef occaecat meatball. Laboris turkey in et chuck deserunt ad incididunt do.</p>
                                </div>
                                <form action="#">
                                    <input type="number" value="1"/>
                                    <button type="submit">Add to cart</button>
                                </form>
                                <div class="product-meta">
                                    <span>
                                        Categories: 
                                        <a href="#">albums</a>,<a href="#">Music</a>
                                    </span>
                                    <span>
                                        Tags: 
                                        <a href="#">albums</a>,<a href="#">Music</a>
                                    </span>
                                </div>
                                <!-- social-icon-start -->
                                <div class="social-icon mt-20">
                                    <ul>
                                        <li><a href="#" data-toggle="tooltip" title="Share on Facebook"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" title="Share on Twitter"><i  class="fa fa-twitter"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" title="Email to a Friend"><i class="fa fa-envelope-o"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" title="Pin on Pinterest"><i class="fa fa-pinterest"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" title="Share on Google+"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                                <!-- social-icon-end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- single-modal-end -->
        </div>
        <!-- modal-area-end -->
        <!-- all js here -->
        <!-- jquery latest version -->
        <script src="js/vendor/jquery-1.12.0.min.js"></script>
        <!-- bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
        <!-- owl.carousel js -->
        <script src="js/owl.carousel.min.js"></script>
        <!-- meanmenu js -->
        <script src="js/jquery.meanmenu.js"></script>
        <!-- jquery-ui js -->
        <script src="js/jquery-ui.min.js"></script>
        <!-- wow js -->
        <script src="js/wow.min.js"></script>
        <!-- jquery.mixitup.min.js -->
        <script src="js/jquery.mixitup.min.js"></script>
        <!-- jquery.magnific-popup.min.js -->
        <script src="js/jquery.magnific-popup.min.js"></script>
        <!-- jquery.nivo.slider.js -->
        <script src="js/jquery.nivo.slider.js"></script>
        <!-- chosen.jquery.min.js -->
        <script src="js/chosen.jquery.min.js"></script>
        <!-- jquery.elevateZoom-3.0.8.min.js -->
        <script src="js/jquery.elevateZoom-3.0.8.min.js"></script>
        <!-- jquery.countdown.min.js -->
        <script src="js/jquery.countdown.min.js"></script>
        <!-- plugins js -->
        <script src="js/plugins.js"></script>
        <!-- main js -->
        <script src="js/main.js"></script>
    </body>
</html>

