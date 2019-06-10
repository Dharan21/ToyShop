<%-- 
    Document   : shop-left-sidebar
    Created on : 30 Mar, 2019, 1:37:45 PM
    Author     : dharan padhiyar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>products-alto</title>
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
        <style>
            .checked{
                color:orange;
            }
        </style>
    </head>
    <body>
        
        <!-- Add your site or application content here -->
		<!-- header-area-start -->
                <c:import url="header.jsp"></c:import>
		<div class="shop-full-width shop-left-sidebar">
                    <%
                    Connection conn = null;
                    try{ 
                    Class.forName("com.mysql.jdbc.Driver");
                    String url = "jdbc:mysql://localhost:3306/ToyShop";
                    conn = DriverManager.getConnection(url,"root","");
                    
                    %>
		<!-- header-area-end -->
		
		<!-- product-area-start -->
		<div class="product-area ptb-50">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<!-- left-catagory-area-start -->
						<div class="single-catagory mb-30">
							<!-- Product-Categories-start -->
							<h2 class="title">Product Categories</h2>
							<div class="catagory-menu" id="cate-toggle">
								<ul>
                                                                    
                                                                    <%
                                                                        try{
                                                                        
                                                                        String sql = "select name, CategorieID from categorie";
                                                                        Statement stmp = conn.createStatement();
                                                                        ResultSet rs = stmp.executeQuery(sql);
                                                                        while(rs.next())
                                                                        {
                                                                            %>
                                                                            <li><a href="categorie_shop.jsp?CategorieID=<% out.print(rs.getInt(2));%>">
                                                                                <%
                                                                                    out.print(rs.getString(1));
                                                                                %>
                                                                                </a></li>
                                                                            <%
                                                                        }
                                                                        }catch(Exception e){out.print(e);}
                                                                    %>
                          					</ul>
							</div>
							<!-- Product-Categories-end -->
						</div>
<!--						<div class="single-catagory mb-30">
							 price-slider-start 
							<h2 class="title">Filter by price</h2>
							<div id="slider-range"></div>
							<input type="text" name="text" id="amount" />
							 price-slider-end 
						</div>-->
<!--						<div class="single-catagory mb-30">
							 brand-Categories-start 
							<h2 class="title">Filter by brand</h2>
							<div class="catagory-menu">
								<ul>
									<li><a href="#">D&G <span>(0)</span></a></li>
									<li><a href="#">Lacoste <span>(0)</span></a></li>
								</ul>
							</div>
							 brand-Categories-end 
						</div>-->
<!--						<div class="single-catagory mb-30">
							 Color-Categories-start 
							<h2 class="title">Filter by Color</h2>
							<div class="color-menu">
								<ul>
									<li><a href="#" class="black">BLACK <span>(0)</span></a></li>
									<li><a href="#" class="blue">BLUE <span>(0)</span></a></li>
									<li><a href="#" class="gray">GRAY <span>(0)</span></a></li>
									<li><a href="#" class="pink">PINK <span>(0)</span></a></li>
									<li><a href="#" class="red">RED <span>(0)</span></a></li>
									<li><a href="#" class="yellow">YELLOW <span>(0)</span></a></li>
								</ul>
							</div>
							 Color-Categories-start 
						</div>-->
<!--						<div class="single-catagory">
							 Color-Categories-start 
							<h2 class="title">Product Tags</h2>
							<div class="Tags-menu">
								<ul>
									<li><a href="#" title="8 topics">Accessories</a></li>
									<li><a href="#" title="2 topics">Computer</a></li>
									<li><a href="#" title="3 topics">Cosmetics</a></li>
									<li><a href="#" title="4 topics">Digital</a></li>
									<li><a href="#" title="5 topics">Fashion</a></li>
									<li><a href="#" title="6 topics">Flower</a></li>
									<li><a href="#" title="7 topics">Furniture</a></li>
									<li><a href="#" title="2 topics">Jewellery</a></li>
									<li><a href="#" title="3 topics">Kids</a></li>
									<li><a href="#" title="4 topics">Laptop</a></li>
									<li><a href="#" title="5 topics">Mobile</a></li>
									<li><a href="#" title="6 topics">Old products</a></li>
									<li><a href="#" title="2 topics">Pet</a></li>
									<li><a href="#" title="1 topics">Tablets</a></li>
								</ul>
							</div>
							 Color-Categories-start 
						</div>-->
						<!-- left-catagory-area-end -->
					</div>
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
						<!-- tab-area-start -->
						<div class="tab-content">
							<div class="tab-pane active" id="th">
                                                           
								<div class="row">
                                                                    <%
                                                                        try{
                                                                            
                                                                            String sql2="select name, url, price, discount, ratings from product";
                                                                            Statement stmp = conn.createStatement();
                                                                            ResultSet rs = stmp.executeQuery(sql2);
                                                                            while(rs.next())
                                                                            {
                                                                    %>
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
										<!-- single-product-start -->
                                                                               
										<div class="product-wrapper mb-30">
											<div class="product-img">
                                                                                            <a href="variation-product.jsp?name=<% out.print(rs.getString(1));%>">
                                                                                                    <img src="img/categories/<% out.print(rs.getString(2));%>" alt="khotu aayu" class="primary" style="height:200px;width: 200px;" />
                                                                                                    <img src="img/categories/<% out.print(rs.getString(2));%>" alt="khotu aayu" class="secondary" style="height:200px;width: 200px;"/>
												</a>
												<div class="product-icon">
                                                                                                    <ul>
                                                                                                        <li><a href="add-to-cart.jsp?qtybutton=1&product_name=<% out.print(rs.getString(1));%>" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
													<!--<li><a href="#" data-toggle="modal" data-target="#mymodal" data-placement="top" title="Quick View"><i class="pe-7s-search"></i></a></li>-->
												</ul>
												</div>
											</div>
											<div class="product-content mt-20">
												<h4><a href="#"><% out.print(rs.getString(1));%></a></h4>
                                                                                                <%
                                                                                                    float discount = (float) rs.getInt(4);
                                                                                                %>
                                                                                                <span>from </span>
                                                                                                <% if(discount>0) { 
                                                                                                    float newprice = (float) rs.getInt(3)*(1-(discount/100));
                                                                                                %>
                                                                                                <span class="new-price"><% out.print(" Rs."+newprice);%></span>
                                                                                                <span class="old-price"><del><% out.print(" Rs."+rs.getInt(3));%></del></span>
                                                                                                <% }
                                                                                                    else{
                                                                                                %>
                                                                                                <span class="new-price"><% out.print("Rs."+rs.getInt(3));%>
                                                                                                <% } %>
											</div>
                                                                                        <div class="product-content">
                                                                                            <span>Ratings</span>
                                                                                            <% if(rs.getInt(5)==1) {%><span class="fa fa-star checked"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span> <% } %>
                                                                                            <% if(rs.getInt(5)==2) {%><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span> <% } %>
                                                                                            <% if(rs.getInt(5)==3) {%><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star"></span><span class="fa fa-star"></span> <% } %>
                                                                                            <% if(rs.getInt(5)==4) {%><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star"></span> <% } %>
                                                                                            <% if(rs.getInt(5)==5) {%><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span> <% } %>
                                                                                        </div>
										</div>
                                                                               
										<!-- single-product-end -->
									</div>
                                                                      
                                                                        <% 
                                                                            
                                                                            }
                                                                            }catch(Exception e){out.print(e);}
                                                                        %>
								</div>
							</div>

						</div>
						<!-- tab-area-end -->
						
					</div>	
				</div>		
			</div>
		</div>
		<!-- product-area-end -->
		<!-- service-area-2-start -->
		<div class="service-area-2 pb-50">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
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
					<div class="col-lg-4 col-md-4 hidden-sm col-xs-12">
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
                    <%
                        }catch(Exception e){out.print(e);}
                        finally{
                            conn.close();
                        }
                    %>
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
