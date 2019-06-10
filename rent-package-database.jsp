<%-- 
    Document   : rent-package-database
    Created on : 23 Apr, 2019, 10:37:35 PM
    Author     : dharan padhiyar
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>

 
        
    </body>
</html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>page not found-alto</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- Favicon -->
		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

		<!-- all css here -->
		<!-- bootstrap v3.3.6 css -->
        <link rel="stylesheet" href="http://localhost:8080/ToyShop/css/bootstrap.min.css">
		<!-- animate css -->
        <link rel="stylesheet" href="http://localhost:8080/ToyShop/css/animate.css">
		<!-- jquery-ui.min css -->
        <link rel="stylesheet" href="http://localhost:8080/ToyShop/css/jquery-ui.min.css">
		<!-- meanmenu css -->
        <link rel="stylesheet" href="http://localhost:8080/ToyShop/css/meanmenu.min.css">
		<!-- nivo-slider.css -->
        <link rel="stylesheet" href="http://localhost:8080/ToyShop/css/nivo-slider.css">
		<!-- owl.carousel css -->
        <link rel="stylesheet" href="http://localhost:8080/ToyShop/css/owl.carousel.css">
		<!-- font-awesome css -->
        <link rel="stylesheet" href="http://localhost:8080/ToyShop/css/font-awesome.min.css">
		<!-- pe-icon-7-stroke.css -->
        <link rel="stylesheet" href="http://localhost:8080/ToyShop/css/pe-icon-7-stroke.css">
		<!-- magnific-popup.css -->
        <link rel="stylesheet" href="http://localhost:8080/ToyShop/css/magnific-popup.css">
		<!-- chosen.min.css -->
        <link rel="stylesheet" href="http://localhost:8080/ToyShop/css/chosen.min.css">
		<!-- style css -->
		<link rel="stylesheet" href="http://localhost:8080/ToyShop/style.css">
		<!-- responsive css -->
        <link rel="stylesheet" href="http://localhost:8080/ToyShop/css/responsive.css">
		<!-- modernizr css -->
        <script src="http://localhost:8080/ToyShop/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <!-- Add your site or application content here -->
		<!-- header-area-start -->
		
		<!-- breadcrumb-area-start -->
                <%--<c:import url="../header.jsp" />--%>
                
                <%
                Connection conn = null;
                boolean isPackageNew = false;
                try{
                    String rentpackage = request.getParameter("package").toString();
                    Class.forName("com.mysql.jdbc.Driver");
                    String url = "jdbc:mysql://localhost:3306/ToyShop";
                    conn = DriverManager.getConnection(url,"root","");
                    if(session.getAttribute("username")!=null){
                        String username = session.getAttribute("username").toString();
                        String getpackage = "select username, rentPackage  from customer where username=?";
                        PreparedStatement pstmp = conn.prepareStatement(getpackage);
                        pstmp.setString(1, username);
                        ResultSet rs = pstmp.executeQuery();
                        rs.next();
                        String pac = rs.getString(2);
                        if(!(pac.equals("1_1") || pac.equals("1_2") || pac.equals("1_3") || pac.equals("2_1") || pac.equals("2_2") || pac.equals("2_3")))
                            {
                                String sql = "update customer set rentPackage=? where username=?";
                                pstmp = conn.prepareStatement(sql);
                                pstmp.setString(1, rentpackage);
                                pstmp.setString(2, username);
                                pstmp.executeUpdate();
                                isPackageNew = true;
                            }
                        else{ %>
                
            <div class="header-mid-area ptb-50">
                <div class="container">
                    <div class="row">
                        <!-- header-search-start -->
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        </div>
                        <!-- header-search-end -->
                        <!-- logo-start -->
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="logo text-center">
                                <a href="index.jsp"><img src="img/logo/logo.png" alt="logo" /></a>
                            </div>
                        </div>
                        <!-- logo-end -->
                        <!-- mini-cart-total-start -->
                        <div class="col-lg-4 col-md-4 col-sm-4 hidden-xs">
                            
                        </div>
                        <!-- mini-cart-end -->
                    </div>
                </div>
            </div>
                <div class="shop-full-width page-not-found">
		
		<!-- breadcrumb-area-end -->
		<!-- section-element-area-start -->
		<div class="section-element-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="entry-header text-center mb-20">
                					<p class="mu-50">Oops! You already have a rent package.<% out.print(rs.getString(1));%></p>
                				</div>
						<div class="entry-content text-center">
							<p>you do not need to buy a new package. You owns a renting package.</p>
							<a href="index.jsp">GO TO HOME</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- section-element-area-end -->
		<!-- service-area-2-end -->
		<div class="service-area-2 ptb-50">
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
                <%--<c:import url="../footer.jsp" />--%>
		
                </div>
                 <% return; }
                        }       
                        else{
                %> 
                <c:redirect url="loginproj.jsp" />
                <%
                  
                  }
                  if(isPackageNew){ %><c:redirect url="shop-left-sidebar.jsp" /> <% }
                  }
                    catch(Exception e){out.print(e);}
                    finally{ conn.close();}
                    
                %>
                
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
