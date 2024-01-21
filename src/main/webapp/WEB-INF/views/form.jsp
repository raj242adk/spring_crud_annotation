<%--
  Created by IntelliJ IDEA.
  User: Raj
  Date: 1/16/2024
  Time: 9:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Attractive Form</title>
    <!-- Include Bootstrap CSS link -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Add your custom styles here */
        body {
            background-color: #f8f9fa;
            padding: 20px;
        }

        .form-container {
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>

<div class="form-container">
    <form action="formprocess" method="post">


        <div class="form-group">
            <label >Id</label>
            <input type="hidden" class="form-control" name="id" required>
        </div>
        <div class="form-group">
            <label >UserName</label>
            <input type="text" class="form-control" name="name" required>
        </div>
        <div class="form-group">
            <label >Email</label>
            <input type="email" class="form-control" name="email" required>
        </div>
        <div class="form-group">
            <label >Password</label>
            <input type="password" class="form-control" name="password" required>
        </div>
        <div class="form-group">
            <label >Address</label>
            <input type="text" class="form-control" name="address" required>
        </div>
        <div class="form-group">
            <label8>Phone Number</label8>
            <input type="tel" class="form-control" name="phoneNumber" required>
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
