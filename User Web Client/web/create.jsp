

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Management</title>
    </head>
    <body>
        <h1>Edit User !</h1>
        <form action="EditServlet">
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
                        <input type="reset" value="Reset"/>
                        <input type="submit" value="Submit"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
