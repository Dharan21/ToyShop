<%-- 
    Document   : login
    Created on : 29 Mar, 2019, 2:49:42 PM
    Author     : dharan padhiyar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login-JSP</title>
    </head>
    <body>
          <%
            Connection conn = null;
            try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/ToyShop";
            conn = DriverManager.getConnection(url,"root","");
            String sql = "select password from customer where username=?";
            PreparedStatement stmp  = conn.prepareStatement(sql);
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            stmp.setString(1, username);
            ResultSet rs = stmp.executeQuery();
            out.print(username);
            out.print(password);
            if(rs == null){ 
          %>
                <c:redirect url="loginproj.jsp" />
          <%}
            else { 
                rs.next();
                String pwd = rs.getString(1);
                if(password.equals(pwd))
                {
                    session.setAttribute("username",username);
                    %>
                    <c:redirect url="index.jsp" />
            <% }
            }
        }catch(Exception e)
            {out.print(e.toString());}
        finally{
            conn.close();
        }
            %>
    </body>
</html>
