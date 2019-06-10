<%-- 
    Document   : loginproj
    Created on : 28 Mar, 2019, 6:09:53 PM
    Author     : dharan padhiyar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
          
            <!-- header-mid-area-start -->
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
        <!-- account-area-start -->
		<div class="account-area mt-50">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="account-title mb-50">
							<h1>My Account</h1>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<!-- login-area-start -->
						<div class="login-area">
							<div class="section-title mb-20">
								<h2>Login</h2>
							</div>
							<form action="login.jsp">
								<label for="username">Username<span>*</span></label>
                                                                <input type="text" name="username"  id="username" required/>
								<label for="password">Password<span>*</span></label>
                                                                <input type="text" name="password" id="password" required/>
								<button type="submit">login</button>
                                                                <a href="#">Lost your password?</a>
							</form>
						</div>
						<!-- login-area-end -->
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<!-- register-area-start -->
						<div class="register-area">
							<div class="section-title mb-20">
								<h2>Register</h2>
							</div>
                                                        
							<form action="register.jsp" method="post">
                                                                <label for="username">Username <span>*</span></label>
                                                                <input type="text" id="username" name="username" required />
								<label for="emailaddress">Email address <span>*</span></label>
                                                                <input type="text" id="emailaddress" name="email" required/>
                                                                <label for="mobileno">Mobile No <span>*</span></label>
                                                                <input type="text" id="mobileno" name="mobileno" required/>
                                                                <label for="state">State <span>*</span></label>
                                                                <select name="state" style="border: 1px solid #ddd;display: block;padding: 10px 10px;width: 100%;margin-bottom: 20px;;">
                                                                    <option value="0">select</option>
                                                                    <option value="delhi">Delhi</option>
                                                                    <option value="gujarat">Gujarat</option>
                                                                    <option value="kerala">Kerala</option>
                                                                    <option value="rajasthan">Rajasthan</option>
                                                                </select>
                                                                <label for="address">Address <span>*</span></label>
                                                                <input type="text" id="address" name="address" maxlength="200" required/>
								<label for="password">Password<span>*</span></label>
                                                                <input type="text" id="password" name="password" required/>
                                                                <button type="submit">register</button>
							</form>
						</div>
						<!-- register-area-end -->
					</div>
				</div>
			</div>
		</div>
		<!-- account-area-end -->   
                <div class="ptb-50">
                </div>
    </body>
</html>