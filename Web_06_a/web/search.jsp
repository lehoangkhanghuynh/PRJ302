<%-- 
    Document   : search
    Created on : Jan 22, 2026, 3:48:39 PM
    Author     : USER
--%>

<%@page import="models.UniversityDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.DTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="a.jsp" />
        <%
            if ((DTO) session.getAttribute("user") != null) {
                String keywords = request.getAttribute("keywords") + "";
                keywords = keywords.equals("null") ? "" : keywords;
                ArrayList<UniversityDTO> list = new ArrayList<UniversityDTO>();
                if (request.getAttribute("list") != null) {
                    list = (ArrayList<UniversityDTO>) request.getAttribute("list");

                }
        %>
        <form action="MainController" method="post" lang="VI">
            <input type="hidden" name="action" value="search" />
            Input name:
            <input type="text" name="keywords" value="<%=keywords%>" />
            <input type="submit" value="search" />
        </form>
        <hr/>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Short Name</th>
                    <th>City</th>
                    <th>Region</th>
                    <th>Type</th>
                    <th>Founded Year</th>
                    <th>Students</th>
                    <th>Faculties</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <%
                    if (list.size() == 0) {
                %>
                <tr>
                    <td colspan="10" style="color:red; text-align:center">
                        No data matching the search criteria found!
                    </td>
                </tr>
                <%
                } else {
                    for (UniversityDTO u : list) {
                %>
                <tr>
                    <td><%=u.getId()%></td>
                    <td><%=u.getName()%></td>
                    <td><%=u.getShortName()%></td>
                    <td><%=u.getCity()%></td>
                    <td><%=u.getRegion()%></td>
                    <td><%=u.getType()%></td>
                    <td><%=u.getFoundedYear()%></td> 
                    <td><%=u.getTotalStudents()%></td>
                    <td><%=u.getTotalFaculties()%></td>
                    <td>
                        <input type="submit" value="Update" style="display: <%=u.isIsDraft() ? "block" : "none"%>" />                                
                    </td>
                </tr>  
                <%
                        }
                    }
                %>
        </table>
        <%  } else {
                response.sendRedirect("login.jsp");
            }
        %>
    </body>
</html>
