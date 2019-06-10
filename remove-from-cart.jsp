<%-- 
    Document   : remove-from-cart
    Created on : 31 Mar, 2019, 3:16:49 PM
    Author     : dharan padhiyar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection conn = null;
            try{
                
                Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/ToyShop";
                conn = DriverManager.getConnection(url,"root","");
                
                String username = session.getAttribute("username").toString();
                int productID = Integer.parseInt(request.getParameter("productID"));
                
                String get_customerID = "select CustomerID from customer where username=?";
                PreparedStatement pstmp = conn.prepareStatement(get_customerID);
                pstmp.setString(1, username);
                ResultSet customerID_rs = pstmp.executeQuery();
                customerID_rs.next();
                int customerID = customerID_rs.getInt(1);
                
                String get_quantity = "select quantity from cart where CustomerID=? and ProductID=?";
                pstmp = conn.prepareStatement(get_quantity);
                pstmp.setInt(1, customerID);
                pstmp.setInt(2, productID);
                ResultSet quantity_rs = pstmp.executeQuery();
                quantity_rs.next();
                int quantity = quantity_rs.getInt(1);
                
                String remove_product_from_cart = "delete from cart where CustomerID=? and ProductID=?";
                pstmp = conn.prepareStatement(remove_product_from_cart);
                pstmp.setInt(1, customerID);
                pstmp.setInt(2, productID);
                pstmp.executeUpdate();
                
                String get_old_quantity = "select quantity from product where ProductID=?";
                pstmp = conn.prepareStatement(get_old_quantity);
                pstmp.setInt(1, productID);
                ResultSet old_quantity_rs = pstmp.executeQuery();
                old_quantity_rs.next();
                int old_quantity = old_quantity_rs.getInt(1);
                
                int new_quantity = quantity + old_quantity;
                String update_database = "update product set quantity=? where ProductID=?";
                pstmp = conn.prepareStatement(update_database);
                pstmp.setInt(1,new_quantity);
                pstmp.setInt(2, productID);
                pstmp.executeUpdate();
                String pagename = request.getParameter("pagename");
                pagename = pagename+".jsp";
            }
            catch(Exception e){out.print(e);}
            finally{ conn.close();}
        %>
        <c:redirect url="shopping-cart.jsp" />
    </body>
</html>
