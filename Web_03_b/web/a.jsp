<%-- 
    Document   : a
    Created on : Jan 12, 2026, 6:14:46 PM
    Author     : USER
--%>

<%@page import="models.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .container {
            }

            .data-link {
                display: flex;
                gap: 30px;
                justify-content: center;
            }

            .data-link a{
                text-decoration: none;
                color: inherit;
            }

            .header h1{
                text-align: center;
            }
            .header {
                width: 100%;
                padding: 10px auto;
                border-bottom: 1px solid #ddd;

            }
            .body{
                margin: 0;
                padding: 0;
                height: 100%;
                width: 100%;
            }
        </style>

    </head>
    <body>
        <%
            UserDTO user = (UserDTO) request.getAttribute("user");
        %>
        <p class="welcome">welcome <%=user.getFullName()%></p>
        <div class="header">
            <h1>Bang Dieu khien</h1>
        </div>
        <div class="container">
            <nav class="data-link">
                <a href="url" target="target">Tinh nang 1</a>
                <a href="url" target="target">Tinh nang 2</a>
                <a href="url" target="target">Tinh nang 3</a>
            </nav>
        </div>
    </body>
</html>
