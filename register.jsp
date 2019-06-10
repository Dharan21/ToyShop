<%-- 
    Document   : register
    Created on : 28 Mar, 2019, 6:13:31 PM
    Author     : dharan padhiyar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            Connection conn = null;
            try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/ToyShop";
            conn = DriverManager.getConnection(url,"root","");
            if(conn!=null) {
                String sql = "insert into customer(username,email,password,state,address,mobileno) values(?,?,?,?,?,?)";
                PreparedStatement stmp  = conn.prepareStatement(sql);
                String username = request.getParameter("username");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String state = request.getParameter("state");
                String address = request.getParameter("address");
                String mobileno = request.getParameter("mobileno");
                stmp.setString(1, username);
                stmp.setString(2, email);
                stmp.setString(3, password);
                stmp.setString(4, state);
                stmp.setString(5, address);
                stmp.setString(6, mobileno);
                stmp.execute();
                session.setAttribute("username",username);
            }
            }
            catch(Exception e) {out.print(e);}
            finally{
                conn.close();
            }
        %>
        <c:redirect url="index.jsp"/>
    </body>
</html>
