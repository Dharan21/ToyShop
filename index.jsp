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
        <!-- product-area-start -->
        <div class="product-area pb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- tab-menu-start -->
                        <div class="tab-menu mb-30">
                            <ul>
                                <li class="active"><a href="#MOBILE" data-toggle="tab">MOBILE</a></li>
                                <li><a href="#TABLETS"  data-toggle="tab">TABLETS</a></li>
                                <li><a href="#LAPTOPS" data-toggle="tab">LAPTOPS</a></li>
                            </ul>
                        </div>
                        <!-- tab-menu-end -->
                    </div>
                </div>
                <!-- tab-area-start -->
                <div class="tab-content">
                    <div class="tab-pane active" id="MOBILE">
                        <div class="row">
                            <div class="tab-active">
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/mobile/1.jpg" alt="Iphone 6s" class="primary" />
                                                <img src="img/product/mobile/2.jpg" alt="Iphone 6s" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Apple Iphone 6s – 32Gb</a></h4>
                                            <span class="old-price"><del>$400.00</del></span>
                                            <span class="new-price">$300.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/mobile/3.jpg" alt="Iphone 5s" class="primary" />
                                                <img src="img/product/mobile/4.jpg" alt="Iphone 5s" class="secondary" />
                                            </a>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip"  title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Apple Iphone 5s</a></h4>
                                            <span class="new-price">$199.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/mobile/5.jpg" alt="Galaxy S7" class="primary" />
                                                <img src="img/product/mobile/6.jpg" alt="Galaxy S7" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip"  title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Samsung Galaxy S7</a></h4>
                                            <span class="old-price"><del>$499.00</del></span>
                                            <span class="new-price">$399.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/mobile/7.jpg" alt="Iphone 6" class="primary" />
                                                <img src="img/product/mobile/8.jpg" alt="Iphone 6" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip"  title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Apple Iphone 6 – 128 Gb</a></h4>
                                            <span class="old-price"><del>$299.00</del></span>
                                            <span class="new-price">$199.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/mobile/9.jpg" alt="HTC" class="primary" />
                                                <img src="img/product/mobile/10.jpg" alt="HTC" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">HTC one M</a></h4>
                                            <span class="old-price"><del>$199.00</del></span>
                                            <span class="new-price">$180.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/mobile/11.jpg" alt="Sony Xperia" class="primary" />
                                                <img src="img/product/mobile/12.jpg" alt="Sony Xperia" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Sony Xperia Z5</a></h4>
                                            <span class="old-price"><del>$210.00</del></span>
                                            <span class="new-price">$190.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/mobile/13.jpg" alt="Samsung Duos" class="primary" />
                                                <img src="img/product/mobile/14.jpg" alt="Samsung Duos" class="secondary" />
                                            </a>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Samsung Duos</a></h4>
                                            <span class="new-price">$190.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/mobile/15.jpg" alt="Galaxy S7" class="primary" />
                                                <img src="img/product/mobile/16.jpg" alt="Galaxy S7" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Samsung Galaxy S7 Edge</a></h4>
                                            <span class="old-price"><del>$299.00</del></span>
                                            <span class="new-price">$199.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="TABLETS">
                        <div class="row">
                            <div class="tab-active">
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/tablet/1.jpg" alt="Ipad Mini" class="primary" />
                                                <img src="img/product/tablet/2.jpg" alt="Ipad Mini" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" data-placement="top" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Ipad Mini 64Gb</a></h4>
                                            <span class="old-price"><del>$299.00</del></span>
                                            <span class="new-price">$199.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/tablet/3.jpg" alt="iPad Mini" class="primary" />
                                                <img src="img/product/tablet/4.jpg" alt="iPad Mini" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Apple 16Gb iPad Mini</a></h4>
                                            <span class="old-price"><del>$299.00</del></span>
                                            <span class="new-price">$199.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/tablet/5.jpg" alt="Galaxy Tab" class="primary" />
                                                <img src="img/product/tablet/6.jpg" alt="Galaxy Tab" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Samsung Galaxy Tab S2</a></h4>
                                            <span class="old-price"><del>$299.00</del></span>
                                            <span class="new-price">$189.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/tablet/7.jpg" alt="Galaxy Tab" class="primary" />
                                                <img src="img/product/tablet/8.jpg" alt="Galaxy Tab" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Samsung Galaxy Tab 4</a></h4>
                                            <span class="old-price"><del>$299.00</del></span>
                                            <span class="new-price">$189.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/tablet/9.jpg" alt="Anchoid" class="primary" />
                                                <img src="img/product/tablet/10.jpg" alt="Anchoid" class="secondary" />
                                            </a>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Anchoid 4 128Gb</a></h4>
                                            <span class="new-price">$399.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/tablet/1.jpg" alt="Ipad Mini" class="primary" />
                                                <img src="img/product/tablet/2.jpg" alt="Ipad Mini" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" data-placement="top" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Ipad Mini 64Gb</a></h4>
                                            <span class="old-price"><del>$299.00</del></span>
                                            <span class="new-price">$199.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="LAPTOPS">
                        <div class="row">
                            <div class="tab-active">
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/laptop/1.jpg" alt="HP" class="primary" />
                                                <img src="img/product/laptop/2.jpg" alt="HP" class="secondary" />
                                            </a>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" data-placement="top" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">HP Pro 450</a></h4>
                                            <span class="new-price">$620.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/laptop/3.jpg" alt="Apple" class="primary" />
                                                <img src="img/product/laptop/4.jpg" alt="Apple" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Apple iMac 2016</a></h4>
                                            <span class="old-price"><del>$999.00</del></span>
                                            <span class="new-price">$980.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/laptop/5.jpg" alt="Dell" class="primary" />
                                                <img src="img/product/laptop/6.jpg" alt="Dell" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Dell Insprion U3345</a></h4>
                                            <span class="old-price"><del>$490.00</del></span>
                                            <span class="new-price">$460.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/laptop/7.jpg" alt="Apple" class="primary" />
                                                <img src="img/product/laptop/8.jpg" alt="Apple" class="secondary" />
                                            </a>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Apple Macbook Pro 15inch</a></h4>
                                            <span class="new-price">$1,900.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/laptop/9.jpg" alt="Apple" class="primary" />
                                                <img src="img/product/laptop/10.jpg" alt="Apple" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Apple Macbook Air 11inch</a></h4>
                                            <span class="old-price"><del>$999.00</del></span>
                                            <span class="new-price">$980.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/laptop/1.jpg" alt="HP" class="primary" />
                                                <img src="img/product/laptop/2.jpg" alt="HP" class="secondary" />
                                            </a>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" data-placement="top" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">HP Pro 450</a></h4>
                                            <span class="new-price">$620.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- tab-area-end -->
            </div>
        </div>
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
        <div class="special-product-area ptb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title mb-30">
                            <h2>special product</h2>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
                        <div class="product-active">
                            <!-- single-product-start -->
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="#" title="Apple Iphone 6 - 128 Gb">
                                        <img src="img/product/slider-product/1.jpg" alt="Apple Iphone 6" class="primary" />
                                        <img src="img/product/slider-product/3.jpg" alt="Apple Iphone 6" class="secondary" />
                                    </a>
                                    <div class="product-icon">
                                        <ul>
                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                            <li><a href="#" data-toggle="modal" data-target="#mymodal" data-placement="top" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="timer">
                                    <div data-countdown="2017/12/15"></div>
                                </div>
                                <div class="product-content mt-30">
                                    <h4><a href="#" title="Apple Iphone 6 - 128 Gb">Apple Iphone 6 - 128 Gb</a></h4>
                                    <span class="old-price"><del>$299.00</del></span>
                                    <span class="new-price">$199.00</span>
                                </div>
                                <div class="button1 mt-30">
                                    <a href="#">shop now</a>
                                </div>
                            </div>
                            <!-- single-product-end -->
                            <!-- single-product-start -->
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="#" title="Apple Iphone 6 - 128 Gb">
                                        <img src="img/product/slider-product/2.jpg" alt="Apple Iphone 6" class="primary" />
                                        <img src="img/product/slider-product/3.jpg" alt="Apple Iphone 6" class="secondary" />
                                    </a>
                                    <div class="product-icon">
                                        <ul>
                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                            <li><a href="#" data-toggle="modal" data-target="#mymodal" data-placement="top" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="timer">
                                    <div data-countdown="2017/12/15"></div>
                                </div>
                                <div class="product-content mt-30">
                                    <h4><a href="#" title="Apple Iphone 6 - 128 Gb">Apple Iphone 6 - 128 Gb</a></h4>
                                    <span class="old-price"><del>$299.00</del></span>
                                    <span class="new-price">$199.00</span>
                                </div>
                                <div class="button1 mt-30">
                                    <a href="#">shop now</a>
                                </div>
                            </div>
                            <!-- single-product-end -->
                            <!-- single-product-start -->
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="#" title="Apple Iphone 6 - 128 Gb">
                                        <img src="img/product/slider-product/6.jpg" alt="Apple Iphone 6" class="primary" />
                                        <img src="img/product/slider-product/4.jpg" alt="Apple Iphone 6" class="secondary" />
                                    </a>
                                    <div class="product-icon">
                                        <ul>
                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                            <li><a href="#" data-toggle="modal" data-target="#mymodal" data-placement="top" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="timer">
                                    <div data-countdown="2017/12/15"></div>
                                </div>
                                <div class="product-content mt-30">
                                    <h4><a href="#" title="Apple Iphone 6 - 128 Gb">Apple Iphone 6 - 128 Gb</a></h4>
                                    <span class="old-price"><del>$299.00</del></span>
                                    <span class="new-price">$199.00</span>
                                </div>
                                <div class="button1 mt-30">
                                    <a href="#">shop now</a>
                                </div>
                            </div>
                            <!-- single-product-end -->
                            <!-- single-product-start -->
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="#" title="Apple Iphone 6 - 128 Gb">
                                        <img src="img/product/slider-product/7.jpg" alt="Apple Iphone 6" class="primary" />
                                        <img src="img/product/slider-product/5.jpg" alt="Apple Iphone 6" class="secondary" />
                                    </a>
                                    <div class="product-icon">
                                        <ul>
                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                            <li><a href="#" data-toggle="modal" data-target="#mymodal" data-placement="top" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="timer">
                                    <div data-countdown="2017/12/15"></div>
                                </div>
                                <div class="product-content mt-30">
                                    <h4><a href="#" title="Apple Iphone 6 - 128 Gb">Apple Iphone 6 - 128 Gb</a></h4>
                                    <span class="old-price"><del>$299.00</del></span>
                                    <span class="new-price">$199.00</span>
                                </div>
                                <div class="button1 mt-30">
                                    <a href="#">shop now</a>
                                </div>
                            </div>
                            <!-- single-product-end -->
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-7 col-sm-6 col-xs-12">
                        <div class="new-product">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper mb-30">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/mobile/1.jpg" alt="Iphone 6s" class="primary" />
                                                <img src="img/product/mobile/2.jpg" alt="Iphone 6s" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" data-placement="top" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Apple Iphone 6s – 32Gb</a></h4>
                                            <span class="old-price"><del>$400.00</del></span>
                                            <span class="new-price">$300.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper mb-30">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/mobile/3.jpg" alt="Iphone 5s" class="primary" />
                                                <img src="img/product/mobile/4.jpg" alt="Iphone 5s" class="secondary" />
                                            </a>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Apple Iphone 5s</a></h4>
                                            <span class="new-price">$199.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-4 col-md-4 hidden-sm col-xs-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper mb-30">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/mobile/5.jpg" alt="Galaxy S7" class="primary" />
                                                <img src="img/product/mobile/6.jpg" alt="Galaxy S7" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Samsung Galaxy S7</a></h4>
                                            <span class="old-price"><del>$499.00</del></span>
                                            <span class="new-price">$399.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/mobile/7.jpg" alt="Iphone 6" class="primary" />
                                                <img src="img/product/mobile/8.jpg" alt="Iphone 6" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Apple Iphone 6 – 128 Gb</a></h4>
                                            <span class="old-price"><del>$299.00</del></span>
                                            <span class="new-price">$199.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6 hidden-xs">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/mobile/9.jpg" alt="HTC" class="primary" />
                                                <img src="img/product/mobile/10.jpg" alt="HTC" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">HTC one M</a></h4>
                                            <span class="old-price"><del>$199.00</del></span>
                                            <span class="new-price">$180.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                                <div class="col-lg-4 col-md-4 hidden-sm hidden-xs">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/mobile/11.jpg" alt="Sony Xperia" class="primary" />
                                                <img src="img/product/mobile/12.jpg" alt="Sony Xperia" class="secondary" />
                                            </a>
                                            <span class="sale">sale</span>
                                            <div class="product-icon">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip"  title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content mt-20">
                                            <h4><a href="#">Sony Xperia Z5</a></h4>
                                            <span class="old-price"><del>$210.00</del></span>
                                            <span class="new-price">$190.00</span>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
        <div class="new-product-area ptb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="section-title mb-30">
                            <h2>TRENDING</h2>
                        </div>
                        <!-- single-product-start -->
                        <div class="product-wrapper mb-30">
                            <div class="product-img">
                                <a href="#" title="Apple Iphone 6s - 32...">
                                    <img src="img/new-product/1.jpg" alt="Apple Iphone" class="primary" />
                                </a>
                            </div>
                            <div class="product-content">
                                <h4><a href="#" title="Apple Iphone 6s - 32...">Apple Iphone 6s - 32...</a></h4>
                                <div class="product-rating">
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                </div>
                                <span class="old-price"><del>$400.00</del></span>
                                <span class="new-price">$300.00</span>
                                <div class="product-cart">
                                    <a href="#" data-toggle="modal" data-target="#mymodal"  title="Quick View"><i class="pe-7s-search"></i></a>
                                    <a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- single-product-end -->
                        <!-- single-product-start -->
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="#" title="Apple Iphone 5s">
                                    <img src="img/new-product/2.jpg" alt="Apple Iphone" class="primary" />
                                </a>
                            </div>
                            <div class="product-content">
                                <h4><a href="#" title="Apple Iphone 5s">Apple Iphone 5s</a></h4>
                                <div class="product-rating">
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                </div>
                                <span class="new-price">$199.00</span>
                                <div class="product-cart">
                                    <a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="pe-7s-search"></i></a>
                                    <a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- single-product-end -->
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="section-title mb-30">
                            <h2>ON SALE</h2>
                        </div>
                        <!-- single-product-start -->
                        <div class="product-wrapper mb-30">
                            <div class="product-img">
                                <a href="#" title="Ipad Mini 64Gb">
                                    <img src="img/new-product/3.jpg" alt="Ipad Mini" class="primary" />
                                </a>
                            </div>
                            <div class="product-content">
                                <h4><a href="#" title="Ipad Mini 64Gb">Ipad Mini 64Gb</a></h4>
                                <div class="product-rating">
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                </div>
                                <span class="old-price"><del>$299.00</del></span>
                                <span class="new-price">$199.00</span>
                                <div class="product-cart">
                                    <a href="#" data-toggle="modal" data-target="#mymodal"  title="Quick View"><i class="pe-7s-search"></i></a>
                                    <a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- single-product-end -->
                        <!-- single-product-start -->
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="#" title="Samsung Galaxy Tab 4">
                                    <img src="img/new-product/4.jpg" alt="Galaxy Tab" class="primary" />
                                </a>
                            </div>
                            <div class="product-content">
                                <h4><a href="#" title="Samsung Galaxy Tab 4">Samsung Galaxy Tab 4</a></h4>
                                <div class="product-rating">
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                </div>
                                <span class="old-price"><del>$199.00</del></span>
                                <span class="new-price">$189.00</span>
                                <div class="product-cart">
                                    <a href="#" data-toggle="modal" data-target="#mymodal"  title="Quick View"><i class="pe-7s-search"></i></a>
                                    <a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- single-product-end -->
                    </div>
                    <div class="col-lg-4 col-md-4 hidden-sm hidden-xs">
                        <div class="section-title mb-30">
                            <h2>TOP RATE</h2>
                        </div>
                        <!-- single-product-start -->
                        <div class="product-wrapper mb-30">
                            <div class="product-img">
                                <a href="#" title="Samsung Galaxy S7">
                                    <img src="img/new-product/5.jpg" alt="Galaxy S7" class="primary" />
                                </a>
                            </div>
                            <div class="product-content">
                                <h4><a href="#" title="Samsung Galaxy S7">Samsung Galaxy S7</a></h4>
                                <div class="product-rating">
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                </div>
                                <span class="old-price"><del>$499.00</del></span>
                                <span class="new-price">$399.00</span>
                                <div class="product-cart">
                                    <a href="#" data-toggle="modal" data-target="#mymodal"  title="Quick View"><i class="pe-7s-search"></i></a>
                                    <a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- single-product-end -->
                        <!-- single-product-start -->
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="#" title="Blackberry Z1">
                                    <img src="img/new-product/6.jpg" alt="Blackberry" class="primary" />
                                </a>
                            </div>
                            <div class="product-content">
                                <h4><a href="#" title="Blackberry Z1">Blackberry Z1</a></h4>
                                <div class="product-rating">
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                </div>
                                <span class="new-price">$180.00</span>
                                <div class="product-cart">
                                    <a href="#" data-toggle="modal" data-target="#mymodal"  title="Quick View"><i class="pe-7s-search"></i></a>
                                    <a href="#" data-toggle="tooltip"  title="Wishlist"><i class="pe-7s-like"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- single-product-end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- new-product-area-end -->
        <!-- blog-area-start -->
        <div class="blog-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title mb-30">
                            <h2>Our latest blog</h2>
                        </div>
                    </div>
                    <div class="blog-active">
                        <!-- single-blog-start -->
                        <div class="col-lg-12">
                            <div class="single-blog">
                                <div class="blog-img">
                                    <a href="#" title="Tommy Collection"><img src="img/blog/1.jpg" alt="" /></a>
                                </div>
                                <div class="blog-content">
                                    <div class="post-date">
                                        <span class="day">20</span>
                                        <span class="month">/October</span>
                                    </div>
                                    <h3><a href="#" title="Tommy Collection">Tommy Collection</a></h3>
                                    <a href="#" title="Continue">Continue<i class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- single-blog-end -->
                        <!-- single-blog-start -->
                        <div class="col-lg-12">
                            <div class="single-blog">
                                <div class="blog-img">
                                    <a href="#" title="Vintage for women"><img src="img/blog/2.jpg" alt="" /></a>
                                </div>
                                <div class="blog-content">
                                    <div class="post-date">
                                        <span class="day">18</span>
                                        <span class="month"> /June</span>
                                    </div>
                                    <h3><a href="#" title="Vintage for women">Vintage for women</a></h3>
                                    <a href="#" title="Continue">Continue<i class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- single-blog-end -->
                        <!-- single-blog-start -->
                        <div class="col-lg-12">
                            <div class="single-blog">
                                <div class="blog-img">
                                    <a href="#" title="Street style"><img src="img/blog/3.jpg" alt="" /></a>
                                </div>
                                <div class="blog-content">
                                    <div class="post-date">
                                        <span class="day">16</span>
                                        <span class="month"> /June</span>
                                    </div>
                                    <h3><a href="#" title="Street style">Street style</a></h3>
                                    <a href="#" title="Continue">Continue<i class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- single-blog-end -->
                        <!-- single-blog-start -->
                        <div class="col-lg-12">
                            <div class="single-blog">
                                <div class="blog-img">
                                    <a href="#" title="New trend style"><img src="img/blog/4.jpg" alt="" /></a>
                                </div>
                                <div class="blog-content">
                                    <div class="post-date">
                                        <span class="day">10</span>
                                        <span class="month"> /June</span>
                                    </div>
                                    <h3><a href="#" title="New trend style">New trend style</a></h3>
                                    <a href="#" title="Continue">Continue<i class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- single-blog-end -->
                        <!-- single-blog-start -->
                        <div class="col-lg-12">
                            <div class="single-blog">
                                <div class="blog-img">
                                    <a href="#" title="Fashion kids sport"><img src="img/blog/5.jpg" alt="" /></a>
                                </div>
                                <div class="blog-content">
                                    <div class="post-date">
                                        <span class="day">26</span>
                                        <span class="month"> /May</span>
                                    </div>
                                    <h3><a href="#" title="Fashion kids sport">Fashion kids sport</a></h3>
                                    <a href="#" title="Continue">Continue<i class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- single-blog-end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- blog-area-end -->
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

