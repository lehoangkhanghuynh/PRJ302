<%-- 
    Document   : login
    Created on : Jan 19, 2026, 3:32:50 PM
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
        <h1>trang đăng nhập </h1>
        <form action="MainController" method="post">
            <input type="hidden" name="action" value="login"/>
            <label for="username">UserName</label>
            <input type="text" name="username" required="required"/>
            <label for="password">PassWord</label>
            <input type="password" name="password" required="required"/>
            <input type="submit" value="Submit" />
        </form>
        <%
            String message = (String) request.getAttribute("message");
            if (message != null) {
        %>
        <span style="color: red"><%=message%></span>
        <%
            }
        %>
    </body>
</html>
