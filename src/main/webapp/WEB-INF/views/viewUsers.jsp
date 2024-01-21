

<%--
  Created by IntelliJ IDEA.
  User: Raj
  Date: 1/20/2024
  Time: 10:01 PM
  To change this template use File | Settings | File Templates.
--%>



<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>



<!DOCTYPE html>
<html>
<head>
    <title>User List</title>
</head>
<body>
<h1>User List</h1>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Password</th>
        <th>Address</th>
        <th>Phone Number</th>
    </tr>
    <c:forEach items="${userList}" var="user">
        <tr>

            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.password}</td>
            <td>${user.address}</td>
            <td>${user.phoneNumber}</td>
            <td><a href="edituser/${user.id}">Edit</a></td>
            <td><a href="deleteuser/${user.id}">Delete</a></td>
        </tr>
    </c:forEach>


<%--    <c:out value="${userList}" />--%>


</table>
</body>
</html>

