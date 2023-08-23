<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relationship Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        .container {
            background-color: #fff;
            border-radius: 10px;
            padding: 50px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            margin: 50px auto;
        }
        h1 {
            color: #333;
        }
        .error {
        	color: red;
        }
        input[type="text"], input[type="checkbox"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="checkbox"] {
            width: auto;
            margin-right: 5px;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Relationship Calculator</h1>
        <form:form action="result" method="post" modelAttribute="userInfo">
            <form:label path="yourName">Your Name:</form:label>
            <form:input path="yourName" cssClass="form-control"/>
            <form:errors cssClass="error" path="yourName"/>
            <br>
            <form:label path="crushName">Crush's Name:</form:label>
            <form:input path="crushName" cssClass="form-control"/>
            <form:errors cssClass="error" path="crushName"/>
            <br>
            <form:checkbox path="agree"/>I agree
            <form:errors cssClass="error" path="agree"></form:errors>
            <input type="submit" value="Calculate">
        </form:form>
        <p id="result"></p>
    </div>
</body>
</html>

