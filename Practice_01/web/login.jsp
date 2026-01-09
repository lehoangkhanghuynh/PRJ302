<%-- 
    Document   : login
    Created on : Jan 9, 2026, 12:05:59 PM
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
        
        </form>
        <%
            String error = (String) request.getAttribute("error");
            if (error != null) {
        %>
        <script>
            alert("<%= error%>");
        </script>
        <%
            }
        %>
    </body>
</html>
