<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Employee Management</title>

    <!-- Include Bootstrap CSS link -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
            padding: 20px;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            text-align: center;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        h1 {
            color: #007bff;
        }

        a {
            display: block;
            color: #007bff;
            text-decoration: none;
            font-size: 18px;
            margin: 15px 0;
            transition: color 0.3s ease-in-out;
        }

        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Welcome to Employee Management</h1>
    <a href="form" class="btn btn-primary btn-lg">Add Employee</a>
    <a href="viewuser" class="btn btn-secondary btn-lg">View Employees</a>
</div>

<!-- Include Bootstrap JS and Popper.js scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
