<%-- 
    Document   : a
    Created on : Jan 19, 2026, 3:43:21 PM
    Author     : USER
--%>

<%@page import="models.DTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            DTO user = (DTO) session.getAttribute("user");
            if (user != null) {
        %>
        <>
        Welcome <%=user.getFullName()%>,<br/>
        <a href="MainController?action=logout">logout</a>
        <% 
            } else {
                response.sendRedirect("login.jsp");
            }
        %>
        <a href="search">Search</a>
    </body>
</html>
