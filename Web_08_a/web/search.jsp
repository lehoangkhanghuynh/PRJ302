<%-- 
    Document   : search.jsp
    Created on : Feb 24, 2026, 11:22:36 PM
    Author     : HOANG KHANG PC
--%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.userDto"%>
<%@page import="model.UniversityDto"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="welcome.jsp"/>
        <c:if test="${empty sessionScope.user}">
            <c:redirect url="login.jsp"/>
        </c:if>
        <form action="MainController" method="POST" accept-charset="UTF-8">
            <input type="hidden" name="action" value="search" />
            <input type="text" name="keyWords" value="${keyWords}"/>
            <input type="submit" value="Search" />
        </form>
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
            <c:choose>
                <c:when test="${empty list}">
                    No data
                </c:when>
                <c:otherwise>
                    <c:forEach items="${list}" var="u">
                        <tr>
                        <td>${u.id}</td>
                        <td>${u.name}</td>
                        <td>${u.shortName}</td>
                        <td>${u.city}</td>
                        <td>${u.region}</td>
                        <td>${u.type}</td>
                        <td>${u.foundedYear}</td>
                        <td>${u.totalStudents}</td>
                        <td>${u.totalFaculties}</td>
                        <td>
                            <c:if test="${u.isDraft}">
                                <input type="submit" value="Update" />
                            </c:if>
                        </td>
                        </tr>
                    </c:forEach>
                </c:otherwise> 
            </c:choose>
        </table>
    </body>
</html>
