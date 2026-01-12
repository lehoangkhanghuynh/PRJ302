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
            <label name="UserName">UserName: </label>
            <input type="text" name="UserName">
            <label name="PassWord">PassWord:</label> 
            <input type="password" name="PassWord">
            <input type="submit" value="Submit">
        </form>
        <%
            String message = request.getAttribute("message")+"";
            message = (message.equals("message")?null:message);
        %>
    </body>
</html>
