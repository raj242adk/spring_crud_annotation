<%--
  Created by IntelliJ IDEA.
  User: Raj
  Date: 1/21/2024
  Time: 8:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<h1>Edit User</h1>

<div class="form-container">
    <form action="editUser/{id}" method="post">
        <div class="form-group">
            <label>ID</label>
            <input type="hidden" class="form-control" name="id" value="${user.id}" required>
        </div>
        <div class="form-group">
            <label>UserName</label>
            <input type="text" class="form-control" name="name" value="${user.name}" required>
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" class="form-control" name="email" value="${user.email}" required>
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" class="form-control" name="password" value="${user.password}" required>
        </div>
        <div class="form-group">
            <label>Address</label>
            <input type="text" class="form-control" name="address" value="${user.address}" required>
        </div>
        <div class="form-group">
            <label>Phone Number</label>
            <input type="tel" class="form-control" name="phoneNumber" value="${user.phoneNumber}" required>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<!-- Include Bootstrap JS and Popper.js scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

