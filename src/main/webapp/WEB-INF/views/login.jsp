<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('background-image.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            height: 100vh;
            overflow: hidden;
        }
        .container {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            text-align: center;
        }
        h2 {
            color: #333;
        }
        label {
            display: block;
            margin-bottom: 10px;
            color: #555;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-bottom: 2px solid #007BFF;
            background: transparent;
            outline: none;
            font-size: 16px;
        }
        input[type="text"]::placeholder, input[type="password"]::placeholder {
            color: #999;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .register-link {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
            margin-top: 20px;
            display: block;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form:form action="#" method="post" modelAttribute="loginForm">
            <form:label path="username">Username:</form:label>
            <form:input path="username" id="username" class="form-control" placeholder="Enter your username"/>
            <form:label path="password">Password:</form:label>
            <form:password path="password" id="password" class="form-control" placeholder="Enter your password"/>
            <input type="submit" value="Sign In" class="btn btn-primary"/>
        </form:form>
        <a href="#" class="register-link">Register</a>
    </div>
</body>
</html>
