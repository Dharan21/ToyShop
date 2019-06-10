<%-- 
    Document   : shopping-cart
    Created on : 19 Apr, 2019, 6:54:09 PM
    Author     : dharan padhiyar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
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
                <c:import url="header.jsp"></c:import>
                
		
		<!-- shopping cart-area-start -->
                <div class="shop-full-width page-not-found">
                    <%
                        Connection conn = null;
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            String url = "jdbc:mysql://localhost:3306/toyshop";
                            conn = DriverManager.getConnection(url,"root","");
                    %>
		<div class="cart-main-area">
		<div class="container">
			<div class="row">
                                 <div class="account-title mb-50">
                                    <h1>&nbsp;&nbsp;Cart</h1>
                                 </div> 
				<div class="col-md-12 col-sm-12 col-xs-12">
					<form action="#">				
						<div class="table-content table-responsive">
							<table>
								<thead>
									<tr>
										<th class="product-thumbnail">Image</th>
										<th class="product-name">Product</th>
										<th class="product-price">Price</th>
										<th class="product-quantity">Quantity</th>
										<th class="product-subtotal">Total</th>
										<th class="product-remove">Remove</th>
									</tr>
								</thead>
                                                                <%
                                                                    String username = session.getAttribute("username").toString();
                                                                    String get_customerID = "select CustomerID from customer where username=?";
                                                                    PreparedStatement pstmp = conn.prepareStatement(get_customerID);
                                                                    pstmp.setString(1,username);
                                                                    ResultSet customer_rs = pstmp.executeQuery();
                                                                    customer_rs.next();
                                                                    int customer = customer_rs.getInt(1);
                                                                    String get_productID = "select ProductID, quantity from cart where CustomerID=?";
                                                                    pstmp = conn.prepareStatement(get_productID);
                                                                    pstmp.setInt(1,customer);
                                                                    ResultSet product_rs = pstmp.executeQuery();
                                                                %>
								<tbody>
                                                                    <%
                                                                        double Total_price = 0;
                                                                        while(product_rs.next()){
                                                                        int productID =  product_rs.getInt(1);
                                                                        int quantity = product_rs.getInt(2);
                                                                        String get_product_details = "select name, url, price, discount from product where ProductID=?";
                                                                        PreparedStatement pstmp2 = conn.prepareStatement(get_product_details);
                                                                        pstmp2.setInt(1,productID);
                                                                        ResultSet product_details_rs = pstmp2.executeQuery();
                                                                        product_details_rs.next();
                                                                        String name = product_details_rs.getString(1);
                                                                        String Imgurl = product_details_rs.getString(2);
                                                                        double price = (double) product_details_rs.getInt(3);
                                                                        double discount = (double) product_details_rs.getInt(4);
                                                                        price = price * (1-(discount/100));
                                                                        Total_price += (price * quantity);
                                                                    %>
									<tr>
                                                                            <td class="product-thumbnail"><img src="img/categories/<%out.print(Imgurl);%>" alt="" /></td>
										<td class="product-name"><% out.print(name);%></td>
										<td class="product-price"><span class="amount"><% out.print(price);%></span></td>
										<td class="product-quantity"><% out.print(quantity);%></td>
										<td class="product-subtotal"><% out.print(price*quantity);%></td>
										<td class="product-remove"><a href="remove-from-cart.jsp?productID=<% out.print(productID);%>&pagename=shopping-cart"><i class="fa fa-times"></i></a></td>
									</tr>
                                                                    <% } %>
									
								</tbody>
							</table>
						</div>
						<div class="row">
							<div class="col-md-8 col-sm-7 col-xs-12">
								<div class="buttons-cart">
									
									<a href="shop-left-sidebar.jsp">Continue Shopping</a>
								</div>
                                                                <%
                                                                    String coupon = "";
                                                                    double newprice = Total_price;
                                                                    double deliverycharges = 100;
                                                                    double checkoutprice = newprice + deliverycharges ;
                                                                    int temp = -1;
                                                                    if(request.getParameter("coupon")!=null){
                                                                        coupon = request.getParameter("coupon");
                                                                        String coupondetail = "select discount, freedelivery from coupon where code=?";
                                                                        pstmp = conn.prepareStatement(coupondetail);
                                                                        pstmp.setString(1, coupon);
                                                                        ResultSet coupon_details_rs =  pstmp.executeQuery();
                                                                        if(coupon_details_rs != null)
                                                                        {
                                                                            coupon_details_rs.next();
                                                                            if(coupon.equalsIgnoreCase("freedelivery")){ deliverycharges=0; temp =0;}
                                                                            if(coupon.equalsIgnoreCase("get10off")){
                                                                                newprice = Total_price * (0.9);
                                                                                temp = 1;
                                                                            }
                                                                        checkoutprice = newprice + deliverycharges ;
                                                                %>
								<div class="coupon">
                                                                    <form action="shopping-cart">
									<h3>Coupon</h3>
									<p>Enter your coupon code if you have one.</p>
                                                                        <input type="text" placeholder="Coupon code" name="coupon" value="<%out.print(coupon);%>"/>
									<input type="submit" value="Apply Coupon" />
                                                                    </form>
								</div>
                                                            </div>
                                                        
							<div class="col-md-4 col-sm-5 col-xs-12">
								<div class="cart_totals">
									<h2>Cart Totals</h2>
									<table>
										<tbody>
											<tr class="cart-subtotal">
												<th>Subtotal</th>
                                                                                                <td><span class="amount"><% out.print(newprice);%></span><span class="old-price"><del><% out.print(Total_price);%></del></span></td>
											</tr>
											<tr class="shipping">
												<th>Shipping</th>
												<td>
													<ul id="shipping_method">
														<li>    
															<label>
                                                                                                                            Rate: <span class="amount"><% out.print(deliverycharges);%></span><span class="old-price"><del>Rs.100</del></span>
															</label>
														</li>
<!--														<li>
															<input type="radio" /> 
															<label>
																Free Shipping
															</label>
														</li>
														<li></li>-->
													</ul>
<!--													<p><a class="shipping-calculator-button" href="#">Calculate Shipping</a></p>-->
												</td>
											</tr>
											<tr class="order-total">
												<th>Total</th>
												<td>
													<strong><span class="amount"><% out.print(checkoutprice); %></span></strong>
												</td>
											</tr>											
										</tbody>
									</table>
                                                                                                
									<div class="wc-proceed-to-checkout">
										<a href="#">Proceed to Checkout</a>
									</div>
								</div>
							</div>
                                                        <%  
                                                            }}
                                                            else{
                                                            %>
                                                            <div class="coupon">
                                                                    <form action="shopping-cart" method="post">
									<h3>Coupon</h3>
									<p>Enter your coupon code if you have one.</p>
                                                                        <input type="text" placeholder="Coupon code" name="coupon" value="<% out.print(coupon);%>"/> 
									<input type="submit" value="Apply Coupon" />
                                                                    </form>
								</div>
                                                            </div>
                                                        
							<div class="col-md-4 col-sm-5 col-xs-12">
								<div class="cart_totals">
									<h2>Cart Totals</h2>
									<table>
										<tbody>
											<tr class="cart-subtotal">
												<th>Subtotal</th>
                                                                                                <td><span class="amount"><% out.print(newprice);%></span></td>
											</tr>
											<tr class="shipping">
												<th>Shipping</th>
												<td>
													<ul id="shipping_method">
														<li>
															<label>
                                                                                                                            Rate: <span class="amount">Rs.100</span>
															</label>
														</li>
<!--														<li>
															<input type="radio" /> 
															<label>
																Free Shipping
															</label>
														</li>
														<li></li>-->
													</ul>
<!--													<p><a class="shipping-calculator-button" href="#">Calculate Shipping</a></p>-->
												</td>
											</tr>
											<tr class="order-total">
												<th>Total</th>
												<td>
													<strong><span class="amount"><% out.print(checkoutprice); %></span></strong>
												</td>
											</tr>
                                                                                        <tr>
                                                                                            <td class="wc-proceed-to-checkout" colspan="2">
                                                                                                <a href="#">Proceed to Checkout</a>
                                                                                            </td> 
                                                                                        </tr>
										</tbody>
									</table>
<!--									<div class="wc-proceed-to-checkout">
										<a href="#">Proceed to Checkout</a>
									</div>-->
								</div>
							</div>
                                                            
                                                            <%
                                                            }
                                                             
                                                            
                                                        %>
						</div>
					</form>	
				</div>
			</div>
		</div>
	</div>
                <% 
                    }catch(Exception e){out.print(e);}
                    finally{
                    conn.close();
                    }
                %>
        </div>
		<!-- shopping cart-area-end -->
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

