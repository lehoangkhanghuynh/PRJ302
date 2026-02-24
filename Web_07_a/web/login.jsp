<%-- 
    Document   : login
    Created on : Feb 24, 2026, 7:10:39 PM
    Author     : HOANG KHANG PC
--%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="MainController" method="POST">
            <input type="hidden" name="action" value="login" />        
            Usernamer <input type="text" name="userName" required="" />
            Password <input type="password" name="passWord" required="" />
            <input type="submit" value="Login" />
        </form>
        <c:if test="${not empty message}">
        ${message}
        </c:if>
    </body>
</html>
