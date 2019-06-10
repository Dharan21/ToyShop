<%-- 
    Document   : variation-product
    Created on : 30 Mar, 2019, 10:31:26 PM
    Author     : dharan padhiyar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>samsung-duos-alto</title>
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
		<!-- header-area-end -->
                <div class="shop-full variations-product">
                    <%
                    Connection conn = null;
                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        String url = "jdbc:mysql://localhost:3306/ToyShop";
                        conn = DriverManager.getConnection(url,"root","");
                    
                    %>
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
						<!-- left-catagory-area-end -->
					</div>
                                       
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                        <%
                                            
                                            try{
                                               
                                            String productname = request.getParameter("name");
                                            String sql2 = "select name, url, price, CategorieID, discount, ratings from product where name=?";
                                            PreparedStatement pstmp = conn.prepareStatement(sql2);
                                            pstmp.setString(1,productname);
                                            ResultSet rs_product = pstmp.executeQuery();
                                            rs_product.next();
                                            String name = rs_product.getString(1);
                                            String Imgurl = rs_product.getString(2);
                                            String price = rs_product.getString(3);
                                            int CategorieID = rs_product.getInt(4);
                                            
                                        %>
						<div class="row">
							<!-- zoom-area-start -->
							<div class="zoom-area">
								<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
									<div class="zoom-img">
                                                                            <img id="zoompro" src="img/categories/<% out.print(Imgurl);%>" data-zoom-image="img/categories/<% out.print(Imgurl);%>" alt="<% out.print(name);%>" />
									</div>
								</div>
							</div>
							<!-- zoom-area-end -->
							<!-- product-details-start -->
							<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
								<div class="product-info">
									<h2><% out.print(name);%></h2>
                                                                        
									<%
                                                                            float discount = (float) rs_product.getInt(5);
                                                                        %>
                                                                        <span>from </span>
                                                                        <% 
                                                                            if(discount>0) { 
                                                                                float newprice =  Float.parseFloat(price) * (1-(discount/100));
                                                                        %>
                                                                        <span class="new-price"><% out.print(" Rs."+newprice);%></span>
                                                                        <span class="old-price"><del><% out.print(" Rs."+price);%></del></span>
                                                                        <% }
                                                                            else{
                                                                        %>
                                                                        <span class="new-price"><% out.print("Rs."+price);%></span>
                                                                        <% } %>
									
                                                                        <div class="product-content">
                                                                            <span>Ratings</span>
                                                                            <% if(rs_product.getInt(6)==1) {%><span class="fa fa-star checked"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span> <% } %>
                                                                            <% if(rs_product.getInt(6)==2) {%><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span> <% } %>
                                                                            <% if(rs_product.getInt(6)==3) {%><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star"></span><span class="fa fa-star"></span> <% } %>
                                                                            <% if(rs_product.getInt(6)==4) {%><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star"></span> <% } %>
                                                                            <% if(rs_product.getInt(6)==5) {%><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span> <% } %>
                                                                        </div>
                                                                        
                                                                        <div class="short-description mt-30">
										<p>Bacon ipsum dolor sit amet ut nostrud chuck, voluptate adipisicing veniam kielbasa fugiat ex spare ribs. Incididunt sint officia non cow, ut et. Cillum porchetta tongue occaecat laborum bacon aliquip fatback flank dolore short loin ball tip bresaola deserunt dolor. Shoulder fugiat ut in ut tail swine dolore, capicola ullamco beef occaecat meatball. Laboris turkey in et chuck deserunt ad incididunt do.</p>
									</div>
									<br/>	
                                                                        <form action="add-to-cart.jsp">
										<div class="quality-button">
											<div >
<!--                                                                                            <input class="qty" type="text" name="qtybutton" max="100" min="1" value="1" />-->
                                                                                                <input type="hidden" value="1" name="qtybutton" />                    
                                                                                                <input type="hidden" value="<% out.print(name);%>" name="product_name" />
                                                                                                <input type="hidden" value="variation-paroduct" name="pagename" />
											</div>
										</div>
										<button type="submit">Add to cart</button>
                                                                                <form action="#"><button type="submit">Add to Queue</button></form>
									</form>
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
							<!-- product-details-end -->
							<!-- products-detalis-area-start -->
							<div class="products-detalis-area ptb-50">
								<div class="col-lg-12">
									<!-- tab-menu-start -->
									<div class="tab-menu mb-30">
										<ul>
											<li class="active"><a href="#Description" data-toggle="tab">Description</a></li>
											<li><a href="#Information" data-toggle="tab">Additional Information</a></li>
<!--											<li><a href="#Reviews"  data-toggle="tab">Reviews (0)</a></li>
											<li><a href="#Tags" data-toggle="tab">Add Tags</a></li>-->
										</ul>
									</div>
									<!-- tab-menu-end -->
								</div>
								<!-- tab-area-start -->
								<div class="tab-content">
									<div class="tab-pane active" id="Description">
										<div class="col-lg-12">
											<div class="tab-description">
												<p>Bacon ipsum dolor sit amet ut nostrud chuck, voluptate adipisicing veniam kielbasa fugiat ex spare ribs. Incididunt sint officia non cow, ut et. Cillum porchetta tongue occaecat laborum bacon aliquip fatback flank dolore short loin ball tip bresaola deserunt dolor. Shoulder fugiat ut in ut tail swine dolore, capicola ullamco beef occaecat meatball. Laboris turkey in et chuck deserunt ad incididunt do.</p>
												<p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami chicken.</p>
												<p>Tail sed sausage magna quis commodo swine. Aliquip strip steak esse ex in ham hock fugiat in. Labore velit pork belly eiusmod ut shank doner capicola consectetur landjaeger fugiat excepteur short loin. Pork belly laboris mollit in leberkas qui. Pariatur swine aliqua pork chop venison veniam. Venison sed cow short loin bresaola shoulder cupidatat capicola drumstick dolore magna shankle.</p>
												<p>Sunt tail est sirloin meatloaf shank, brisket tempor duis swine fugiat dolore. Spare ribs esse jowl consectetur hamburger quis magna. Doner andouille dolore eiusmod, shank short ribs sausage adipisicing ball tip drumstick et. Ribeye in tenderloin bresaola laborum eu voluptate dolor sausage.</p>
											</div>
										</div>
									</div>
									<div class="tab-pane fade" id="Information">
										<div class="col-lg-12">
											<div class="tab-Information">
												<p><span>Color:</span>BLACK, RED</p>
											</div>
										</div>
									</div>
<!--									
								</div>
								<!-- tab-area-end -->
							</div>
							<!-- products-detalis-area-end -->
							<!-- related-products-area-start -->
							<div class="related-products-area ptb-50">
								<div class="col-lg-12">
									<div class="section-title mb-30">
										<h2>Related Products</h2>
									</div>
								</div>
                                                                <%
                                                                    String sql3 = "select name, url, price, discount, ratings from product where CategorieID=?";
                                                                    pstmp = conn.prepareStatement(sql3);
                                                                    pstmp.setInt(1, CategorieID);
                                                                    ResultSet rs_related_product = pstmp.executeQuery();
                                                                   
                                                                %>
								<div class="related-products-active">
                                                                    <%
                                                                         while(rs_related_product.next()){
                                                                        
                                                                        String related_product_name = rs_related_product.getString(1);
                                                                        String related_product_url = rs_related_product.getString(2);
                                                                        int related_product_price = rs_related_product.getInt(3);
                                                                        double related_product_discount = rs_related_product.getDouble(4);
                                                                    %>
									<div class="col-lg-12">
										<!-- single-product-start -->
										<div class="product-wrapper">
											<div class="product-img">
                                                                                            <a href="variation-product.jsp?name=<% out.print(related_product_name);%>">
                                                                                                    <img src="img/categories/<% out.print(related_product_url);%>" alt="<% out.print(related_product_name);%>" class="primary" style="height:200px;width: 200px;" />
                                                                                                    <img src="img/categories/<% out.print(related_product_url);%>" alt="<% out.print(related_product_name);%>" class="secondary" style="height:200px;width: 200px;" />
												</a>
												<div class="product-icon">
													<ul>
														<li><a href="add-to-cart.jsp" data-toggle="tooltip" data-placement="top" title="Add to cart"><i class="pe-7s-shopbag"></i></a></li>
														<!--<li><a href="#" data-toggle="modal" data-target="#mymodal" data-placement="top" title="Quick View"><i class="pe-7s-search"></i></a></li>-->
													</ul>
												</div>
											</div>
											<div class="product-content mt-20">
												<h4><a href="#"><% out.print(related_product_name);%></a></h4>
                                                                                                
                                                                                                <span>from </span>
                                                                                                <% 
                                                                                                    if(related_product_discount>0) { 
                                                                                                        double newprice = related_product_price * (1-(discount/100));
                                                                                                %>
                                                                                                <span class="new-price"><% out.print(" Rs."+newprice);%></span>
                                                                                                <span class="old-price"><del><% out.print(" Rs."+related_product_price);%></del></span>
                                                                                                <% }
                                                                                                    else{
                                                                                                %>
                                                                                                <span class="new-price"><% out.print("Rs."+related_product_price);%></span>
                                                                                                <% } %>
                                                                                        </div>
                                                                                        <div class="product-content">
                                                                                            <span>Ratings</span>
                                                                                            <% if(rs_related_product.getInt(5)==1) {%><span class="fa fa-star checked"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span> <% } %>
                                                                                            <% if(rs_related_product.getInt(5)==2) {%><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span> <% } %>
                                                                                            <% if(rs_related_product.getInt(5)==3) {%><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star"></span><span class="fa fa-star"></span> <% } %>
                                                                                            <% if(rs_related_product.getInt(5)==4) {%><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star"></span> <% } %>
                                                                                            <% if(rs_related_product.getInt(5)==5) {%><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span> <% } %>
                                                                                        </div>
										</div>
										<!-- single-product-end -->
									</div>
                                                                        <%
                                                                            }
                                                                        %>
									
								</div>
							</div>
							<!-- related-products-area-end -->
						</div>
					</div>	
                                        <%
                                            }
                                            catch(Exception e){out.print(e);}
                                        %>
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
                <%
                    }catch(Exception e){ out.print(e);}
                    finally{
                        conn.close();
                    }
                %>
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
