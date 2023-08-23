<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Page</title>
<!-- Link to Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.container {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #f9f9f9;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.error {
	color: red;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
}

.form-group {
	margin-bottom: 15px;
}

.gender {
	margin-top: 15px;
}

.text {
	margin-left: 5px;
}

.signin-link {
	display: block;
	text-align: center;
	margin-top: 20px;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Registration</h2>
		<form:form action="registerSuccess" method="post" modelAttribute="registerInfo">
			<div class="form-group">
				<form:label path="name">Name:</form:label>
				<form:input path="name" id="name" class="form-control" />
				<form:errors path="name" cssClass="error"></form:errors>
			</div>

			<div class="form-group">
				<form:label path="username">Username:</form:label>
				<form:input path="username" id="username" class="form-control" />
				<form:errors path="name" cssClass="error"></form:errors>
			</div>

			<div class="form-group">
				<form:label path="password">Password:</form:label>
				<form:password path="password" id="password" class="form-control" />
				<form:errors path="password" cssClass="error"></form:errors>
			</div>

			<div class="form-group">
				<form:label path="country">Country:</form:label>
				<form:select path="country" id="country" class="form-control">
					<form:option value="usa">USA</form:option>
					<form:option value="india">India</form:option>
				</form:select>
				<form:errors path="country" cssClass="error"></form:errors>
			</div>

			<div class="form-group">
				<form:label path="hobby">Hobby:</form:label>
				<br>
				<div class="form-check">
					<form:checkbox path="hobby" id="cricket" value="cricket"
						class="form-check-input" />
					<label class="form-check-label" for="cricket">Cricket</label>
				</div>
				<div class="form-check">
					<form:checkbox path="hobby" id="reading" value="reading"
						class="form-check-input" />
					<label class="form-check-label" for="reading">Reading</label>
				</div>
				<div class="form-check">
					<form:checkbox path="hobby" id="travel" value="travel"
						class="form-check-input" />
					<label class="form-check-label" for="travel">Travel</label>
				</div>
				<div class="form-check">
					<form:checkbox path="hobby" id="programming" value="programming"
						class="form-check-input" />
					<label class="form-check-label" for="programming">Programming</label>
				</div>
				<form:errors path="hobby" cssClass="error"></form:errors>
			</div>

			<div class="form-group">
				<div class="gender">
					<div class="head">Gender:</div>
					<div class="inputContainer">
						<form:radiobutton path="gender" id="male" value="male" />
						<label class="text" for="male">Male</label>
					</div>
					<div class="inputContainer">
						<form:radiobutton path="gender" id="female" value="female" />
						<label class="text" for="female">Female</label>
					</div>
				</div>
				<form:errors path="gender" cssClass="error"></form:errors>
			</div>
			<div class="form-group">
				<form:label path="communicationDTO.email">Email:</form:label>
				<form:input path="communicationDTO.email" id="email" class="form-control" />
				<form:errors path="communicationDTO.email" cssClass="error"></form:errors>
			</div>

			<div class="form-group">
				<form:label path="communicationDTO.phone">Phone Number:</form:label>
				<form:input path="communicationDTO.phone" id="phoneNumber" class="form-control" />
				<form:errors path="communicationDTO.phone" cssClass="error"></form:errors>
			</div> 

			<input type="submit" value="Register" class="btn btn-primary" />
		</form:form>
		<a href="#" class="signin-link">Sign In</a>
	</div>

	<!-- Link to Bootstrap JS and jQuery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
