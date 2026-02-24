<%-- 
    Document   : search.jsp
    Created on : Feb 24, 2026, 8:15:05 PM
    Author     : HOANG KHANG PC
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${empty sessionScope.user}">
            <c:redirect url="login.jsp"/>
        </c:if>
        <jsp:include page="welcome.jsp"/>

        <form action="MainController" method="POST" accept-charset="UTF-8">
            <input type="hidden" name="action" value="search" />
            Input name: <input type="text" name="keywords" value="${keywords}" />
            <input type="submit" value="search" />
        </form>
        <hr/>
        <table border="1">
            <thead>
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
        </thead>
        <c:choose>
            <c:when test="${empty list}">
                No data matching the search criteria found!
            </c:when>
            <c:otherwise>
                <c:forEach items="${list}" var="u">
                    <tr>
                        <th>${u.id}</th>
                        <th>${u.name}</th>
                        <th>${u.shortName}</th>
                        <td>${u.city}</td>
                        <td>${u.region}</td>
                        <td>${u.type}</td>
                        <td>${u.foundedYear}</td>
                        <td>${u.totalStudents}</td>
                        <td>${u.totalFaculties}</td>
                        <th>
                            <c:if test="${u.isDraft}">
                                <input type="submit" value="Update" />
                            </c:if>
                        </th>
                    </tr>
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </table>
</body>
</html>
