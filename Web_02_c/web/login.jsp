<%-- 
    Document   : login
    Created on : Jan 8, 2026, 4:17:34 PM
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
        <form action="MainController" method="post">
                <h1>Trang Dang nhap</h1>
                 UserName: <input type="text" name="UserName">
                 PassWord: <input type="password" name="PassWord">
                 <input type="submit" value="Submit">
                </form>
    </body>
</html>
