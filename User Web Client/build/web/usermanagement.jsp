

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Management</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>SALARY</th>
            </tr>
            <c:forEach items="${ListEmployee}" var="e">
                <tr>
                    <td><c:out value="${e.empid}"/></td>
                    <td><c:out value="${e.name}"/></td>
                    <td><c:out value="${e.salary}"/></td>
                    <td><a href="DeleteServlet?empid=<c:out value="${e.empid}"/>">Delete</a></td>
                    <td><a href="EditServlet?empid=<c:out value="${e.empid}"/>">Edit</a></td>
                </tr>
            </c:forEach>
        </table>
        <h1>Create User !</h1>
        <form action="CreateServlet">
            <table>
                <tr>
                    <td>name: </td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>salary: </td>
                    <td><input type="number" name="salary"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Create"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
