<%-- 
    Document   : rent_packages
    Created on : 23 Apr, 2019, 5:51:49 PM
    Author     : dharan padhiyar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Shopping cart - Alto</title>
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
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <!-- Add your site or application content here -->
		<!-- header-area-start -->
                <c:import url="header.jsp" />
		<div class="shop-full-width page-not-found"> 
		
		<!-- shopping cart-area-start -->
		<div class="cart-main-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<form action="rent-package-database.jsp">				
						<div class="table-content table-responsive">
							<table>
								<thead>
									<tr>
<!--										<th class="product-thumbnail">Image</th>-->
										<th class="product-price">Toys at a Time</th>
										<th class="product-price">Duration(Months)</th>
										<th class="product-price">Overall Rate</th>
										<th class="product-price">Refundable Deposit</th>
										<th class="product-price">Select</th>
									</tr>
								</thead>
								<tbody>
									<tr>
<!--										<td class="product-thumbnail"><a href="#"><img src="img/product/1.jpg" alt="" /></a></td>-->
                                                                                <td class="product-price" rowspan="3">1</td>
										<td class="product-price">1</td>
										<td class="product-price">500</td>
										<td class="product-price">1000</td>
                                                                                <td class="product-price"><input type="radio" name="package" value="1_1" /></td>
									</tr>
									<tr>
										<td class="product-price">3</td>
										<td class="product-price">1000</td>
										<td class="product-price">1500</td>
                                                                                <td class="product-price"><input type="radio" name="package" value="1_3" /></td>
									</tr>
                                                                        <tr>
										<td class="product-price">6</td>
										<td class="product-price">1500</td>
										<td class="product-price">2000</td>
                                                                                <td class="product-price"><input type="radio" name="package" value="1_6" /></td>
									</tr>
                                                                        <tr>
<!--										<td class="product-thumbnail"><a href="#"><img src="img/product/1.jpg" alt="" /></a></td>-->
                                                                                <td class="product-price" rowspan="3">2</td>
										<td class="product-price">1</td>
										<td class="product-price">800</td>
										<td class="product-price">1500</td>
                                                                                <td class="product-price"><input type="radio" name="package" value="2_1" /></td>
									</tr>
									<tr>
										<td class="product-price">3</td>
										<td class="product-price">1600</td>
										<td class="product-price">2000</td>
                                                                                <td class="product-price"><input type="radio" name="package" value="2_3" /></td>
									</tr>
                                                                        <tr>
										<td class="product-price">6</td>
										<td class="product-price">3000</td>
										<td class="product-price">2500</td>
                                                                                <td class="product-price"><input type="radio" name="package" value="2_6" /></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="row">
							<div class="col-md-10 col-sm-7 col-xs-12">
								<div class="buttons-cart">
									
									<a href="index.jsp">Continue Shopping</a>
                                                                        
								</div>
                                                            
<!--								<div class="coupon">
									<h3>Coupon</h3>
									<p>Enter your coupon code if you have one.</p>
									<input type="text" placeholder="Coupon code" />
									<input type="submit" value="Apply Coupon" />
								</div>-->
							</div>
                                                    <div class="col-md-2 col-sm-4 col-xs-12">
                                                        <div class="buttons-cart">
                                                        <input type="submit" value="Confirm package" />
                                                        </div>
                                                    </div>
<!--							<div class="col-md-4 col-sm-5 col-xs-12">
								<div class="cart_totals">
									<h2>Cart Totals</h2>
									<table>
										<tbody>
											<tr class="cart-subtotal">
												<th>Subtotal</th>
												<td><span class="amount">£215.00</span></td>
											</tr>
											<tr class="shipping">
												<th>Shipping</th>
												<td>
													<ul id="shipping_method">
														<li>
															<input type="radio" /> 
															<label>
																Flat Rate: <span class="amount">£7.00</span>
															</label>
														</li>
														<li>
															<input type="radio" /> 
															<label>
																Free Shipping
															</label>
														</li>
														<li></li>
													</ul>
													<p><a class="shipping-calculator-button" href="#">Calculate Shipping</a></p>
												</td>
											</tr>
											<tr class="order-total">
												<th>Total</th>
												<td>
													<strong><span class="amount">£215.00</span></strong>
												</td>
											</tr>											
										</tbody>
									</table>
									<div class="wc-proceed-to-checkout">
										<a href="#">Proceed to Checkout</a>
									</div>
								</div>
							</div>-->
						</div>
					</form>	
				</div>
			</div>
		</div>
	</div>
		
                <!-- shopping cart-area-end -->
		</div>
                <!-- footer-area-start -->
                <c:import url="footer.jsp" />
                
		<!-- footer-area-end -->
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

