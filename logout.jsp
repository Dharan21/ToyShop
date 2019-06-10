<%-- 
    Document   : logout
    Created on : 19 Apr, 2019, 10:24:53 AM
    Author     : dharan padhiyar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    session.removeAttribute("username");
%>
    <c:redirect url="index.jsp" />
