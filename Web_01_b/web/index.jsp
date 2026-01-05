<%-- 
    Document   : index
    Created on : Jan 5, 2026, 4:08:47 PM
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
        <h1>HTML Forms</h1>
        <form>
            Textbox: 
            <input type="text">
            <br>
            PassWord:
            <input type="password">
            <br>
            Hidden
            <input type="hidden" value="abc123">
            <br>
            Male <input type="checkbox" checked="checked">
             <br>
            Status: 
            <input type="radio" name="status" value="Single" checked="checked"> Single
            <br>
            <input type="radio" name="status" value="Married"> Married
            <br>
            <input type="radio" name="status" value="Disvorced"> Disvorced
            <br>
            ComboBox:
            <select>
                <option>JSP and Servlet</option>
                <option>EJB</option>
            </select>
            <br>
            Multiple <select name="txtList" multiple="multiple" size="3">
                <option>JSP and Servlet</option>
                <option>EJB</option>
                <option>Core Java</option>
            </select>
            <br>
            Textarea <textarea name="txtArea" rows="4" cols="20">This is a form parameters demo!!!
            </textarea>
            <br>
            <input type="submit" value="Submit Query">
            <input type="submit" value="Register" name="action">
            <input type="reset" value="Reset">
            <input type="button" value="JavaScript">
        </form>
    </body>
</html>
