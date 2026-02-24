<%-- 
    Document   : welcome
    Created on : Feb 24, 2026, 10:56:54 PM
    Author     : HOANG KHANG PC
--%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${not empty user}">
        <h1> welcome ${user.fullName}</h1>
        <a href="MainController?action=logout">Logout</a>
        <a href="search.jsp">search</a>
            </c:when>
            <c:otherwise>
                <c:redirect url="login.jsp"></c:redirect>
            </c:otherwise>
        </c:choose>

    </body>
</html>
