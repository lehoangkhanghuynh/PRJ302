<%-- 
    Document   : login
    Created on : Jan 12, 2026, 3:32:09 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="MainController" method="post" >
            <h1>Trang Dang nhap</h1>
            <label for=UserName">UserName: </label>
            <input type="text" name="UserName">
            <label for="PassWord">PassWord:</label> 
            <input type="password" name="PassWord">
            <input type="submit" value="Submit">
        </form>
        <%
            String message = (String) request.getAttribute("messages");
            if (message != null) {
        %>
        <span style="color: red"><%=message%> </span>
        <% }
        %>

    </body>
</html>
