<%-- 
    Document   : header
    Created on : 30 Mar, 2019, 1:31:41 PM
    Author     : dharan padhiyar
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<header>
            <!-- fixed-header-area-start -->
            <div class="fixed-header-area" id="sticky-header">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2 col-md-2">
                            <!-- logo-start -->
                            <div class="logo">
                                <a href="index.jsp"><img src="img/logo/logo.png" alt="logo" /></a>
                            </div>
                            <!-- logo-end -->
                        </div>
                        <div class="col-lg-8 col-md-7">
                            <!-- mean-menu-area-start -->
                            <div class="mean-menu-area">
                                <div class="mean-menu text-center">
                                    <nav>
                                        <ul>
                                            <li><a href="index.jsp">Home</a></li>
                                            <li><a href="shop-left-sidebar.jsp">Shop</a></li>
                                            <li><a href="rent-packages.jsp">Rent</a></li>
                                            <li><a href="#">Contact</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <!-- mean-menu-area-end -->
                        </div>
                        <div class="col-lg-2 col-md-3">
                            <!-- mini-cart-total-start -->
                            <div class="cart-total text-right">
                                <ul class="cart-menu">
                                    <% 
                                       Connection conn = null;
                                       try{
                                           try{
                                            Class.forName("com.mysql.jdbc.Driver");
                                            String url = "jdbc:mysql://localhost:3306/ToyShop";
                                            conn = DriverManager.getConnection(url, "root", "");
                                       
                                           if(session.getAttribute("username")==null){
                                           
                                    %>
                                    
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-shopping-cart"></i>
                                        </a>
                                    </li>
                                    
                                    <%
                                        }else{

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
                                    <li>
                                        <a href="shopping-cart.jsp">
                                            <i class="fa fa-shopping-cart"></i>
                                        </a>
                                        
                                        <div class="shopping-cart">
                                            <%
                                                int Total_price = 0;
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
                                            <div class="cart-list">
                                                <div class="cart-img">
                                                    <a href="#" title=""><img src="img/categories/<% out.print(Imgurl);%>" alt="<% out.print(name);%>" /></a>
                                                </div>
                                                <div class="cart-info">
                                                    <h4><a href="#"><% out.print(name);%></a></h4>
                                                    <div class="cart-price">
                                                        <span><%out.print(quantity);%> x<span class="price"><% out.print("Rs."+price);%></span> </span>
                                                    </div>
                                                </div>
<!--                                                <div class="pro-del">
                                                    <a href="remove-from-cart.jsp?productID=<% out.print(productID);%>"><i class=" pe-7s-close-circle"></i></a>
                                                </div>-->
                                            </div>
                                            <%
                                                }
                                            %>
                                           
                                            <div class="mini-cart-total">
                                                <span>Subtotal</span>
                                                <span class="total-price"><% out.print(Total_price);%></span>
                                            </div>
                                            <div class="cart-button">
                                                <a href="shopping-cart.jsp" title="Cart">View Cart</a>
                                                <a href="#" title="Checkout" class="right">Checkout</a>
                                            </div>
                                        </div>
                                    </li>
                                    <%
                                        } }catch(Exception e){out.print(e);}
                                    %>
                                </ul>
                            </div>
                            <!-- mini-cart-end -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- fixed-header-area-end -->
            <!-- header-top-area-start -->
            <div class="header-top-area ptb-15">
                <div class="container">
                    <div class="row">
                        <!-- header-top-left-start -->
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <!-- social-icon-start -->
                            <div class="social-icon">
                                <ul>
                                    <li><a href="#" data-toggle="tooltip" data-placement="bottom" title="Share on Facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="bottom" title="Share on Twitter"><i  class="fa fa-twitter"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="bottom" title="Email to a Friend"><i class="fa fa-envelope-o"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="bottom" title="Pin on Pinterest"><i class="fa fa-pinterest"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="bottom" title="Share on Google+"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                            <!-- social-icon-end -->
                        </div>
                        <!-- header-top-left-end -->
                        <!-- header-top-right-start -->
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="header-account text-right">
                                <ul>

                                    <%
                                        try{
                                            if (session.getAttribute("username") != null) {
                                                String username = session.getAttribute("username").toString();
                                                String sql = "select username from customer where username=?";
                                                PreparedStatement stmp = conn.prepareStatement(sql);
                                                stmp.setString(1, username);
                                                ResultSet rs = stmp.executeQuery();
                                                rs.next();
                                                username = rs.getString(1);

                                    %>
                                    <li><a href="my-account.jsp" title="Login"><i class="pe-7s-lock"></i><% out.print(username);%></a></li>
                                            <%
                                                                                    } else {%>

                                    <li><a href="loginproj.jsp" title="Login"><i class="pe-7s-lock"></i>Sign in / Register</a></li>
                                        <%  } }catch(Exception e){out.print(e);}
                                        %>
                 
                                </ul>
                            </div>
                        </div>
                        <!-- header-top-right-end -->
                    </div>
                </div>
            </div>
            <!-- header-top-area-end -->
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
                            <div class="cart-total text-right">
                                <ul class="cart-menu">
                                    <%
                                        try{
                                           if(session.getAttribute("username")==null){
                                           
                                    %>
                                    
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-shopping-cart"></i>
                                        </a>
                                    </li>
                                    
                                    <%
                                        }else{

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
                                    <li>
                                        <a href="shopping-cart.jsp">
                                            <i class="fa fa-shopping-cart"></i>
                                        </a>
                                        
                                        <div class="shopping-cart">
                                            <%
                                                int Total_price = 0;
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
                                            <div class="cart-list">
                                                <div class="cart-img">
                                                    <a href="#" title="Apple Iphone 5s"><img src="img/categories/<% out.print(Imgurl);%>" alt="<% out.print(name);%>" /></a>
                                                </div>
                                                <div class="cart-info">
                                                    <h4><a href="#"><% out.print(name);%></a></h4>
                                                    <div class="cart-price">
                                                        <span><%out.print(quantity);%> x<span class="price"><% out.print("Rs."+price);%></span> </span>
                                                    </div>
                                                </div>
<!--                                                <div class="pro-del">
                                                    <a href="remove-from-cart.jsp?productID=<% out.print(productID);%>"><i class=" pe-7s-close-circle"></i></a>
                                                </div>-->
                                            </div>
                                            <%
                                                }
                                            %>
                                           
                                            <div class="mini-cart-total">
                                                <span>Subtotal</span>
                                                <span class="total-price"><% out.print("Rs."+Total_price);%></span>
                                            </div>
                                            <div class="cart-button">
                                                <a href="shopping-cart.jsp" title="Cart">View Cart</a>
                                                <a href="#" title="Checkout" class="right">Checkout</a>
                                            </div>
                                        </div>
                                    </li>
                                    <%
                                        }
                                        }catch(Exception e){out.print(e);}
                                    %>
                                </ul>
                            </div>
                        </div>
                        <!-- mini-cart-end -->
                    </div>
                </div>
            </div>
            <!-- header-mid-area-end -->
            <!-- mean-menu-area-start -->
            <div class="mean-menu-area hidden-sm hidden-xs">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="mean-menu text-center">
                                <nav>
                                    <ul>
                                        <li><a href="index.jsp">Home</a></li>
                                        <li><a href="shop-left-sidebar.jsp">Shop</a></li>
                                        <li><a href="rent-packages.jsp">Rent</a></li>
                                        <li><a href="#">Contact</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- mean-menu-area-end -->
            <!-- mobile-menu-area-start -->
            <div class="mobile-menu-area hidden-md hidden-lg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="mobile-menu">
                                <nav id="mobile-menu-active">
                                    <ul id="nav">
                                        <li><a href="index.jsp">Home</a> 
                                        </li>
                                        <li><a href="shop-left-sidebar.jsp">Shop</a></li>
                                        <li><a href="#">Contact</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- mobile-menu-area-end -->
            <%
                }
                catch(Exception e){out.print(e);}
                finally{
                    conn.close();
                }
               %>
        </header>