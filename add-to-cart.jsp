<%-- 
    Document   : add-to-cart
    Created on : 31 Mar, 2019, 12:10:17 PM
    Author     : dharan padhiyar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%  
    Connection conn = null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/ToyShop";
        conn = DriverManager.getConnection(url, "root", "");
    if(session.getAttribute("username")==null)
    {
        %>
        <c:redirect url="loginproj.jsp" />
<%
    }
    else{
        String username = session.getAttribute("username").toString();
        String product_name = request.getParameter("product_name"); 
         
        int product_quantity =  Integer.parseInt(request.getParameter("qtybutton"));
       
        String get_customerID = "select CustomerID from customer where username=?";
        PreparedStatement pstmp = conn.prepareStatement(get_customerID);
        pstmp.setString(1, username);
        ResultSet customerID_rs = pstmp.executeQuery();
        customerID_rs.next();
        int customerID = customerID_rs.getInt(1);
        
        String get_productID = "select ProductID, quantity from product where name=?";
        pstmp = conn.prepareStatement(get_productID);
        pstmp.setString(1, product_name);
        ResultSet productID_rs = pstmp.executeQuery();
        productID_rs.next();
        int productID = productID_rs.getInt(1);
        int product_available_quantity = productID_rs.getInt(2);
        
        if(product_available_quantity >= product_quantity)
        {
            String insert_item_into_cart = "insert into cart(CustomerID, ProductID, quantity) values(?,?,?)";
            pstmp = conn.prepareStatement(insert_item_into_cart);
            pstmp.setInt(1, customerID);
            pstmp.setInt(2, productID);
            pstmp.setInt(3, product_quantity);
            pstmp.executeUpdate();

            String update_database = "update product set quantity=? where name=?";
            pstmp = conn.prepareStatement(update_database);
            pstmp.setInt(1,(product_available_quantity - product_quantity));
            pstmp.setString(2, product_name);
            pstmp.executeUpdate();
        }
        else{
            
        }
    }
    }catch(Exception e){out.print(e);
   
    }
    finally{ conn.close();}
     
%>
<c:redirect url="shop-left-sidebar.jsp" />