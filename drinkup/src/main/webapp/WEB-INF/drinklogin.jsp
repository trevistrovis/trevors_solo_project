<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<head>
<meta charset="ISO-8859-1">
<title>Drink Up Login/Register</title>
</head>
<body>
<div class="container d-flex text-center">
			<div class="container bg-secondary p-5">
				<div class="container col-6 bg-secondary mx-auto p-4">
					<h2 class="text-info">Register</h2>
					<form:form action="/registration" method="POST" modelAttribute="newUser">
						<input type="hidden" name="id">
						<div class="form-row text-start">
							<div class="col-15 text-white mb-2">
								<form:label path="userName">User Name:</form:label>
								<form:errors path="userName" class="text-danger" />
								<form:input path="userName" class = "form-control" />
							</div>
						</div>
						<div class="form-row text-start">
							<div class="col-15 text-white mb-2">
								<form:label path="email">Email:</form:label>
								<form:errors path="email" class="text-danger" />
								<form:input path="email" class = "form-control" />
							</div>
						</div>
						<div class="form-row text-start">
							<div class="col-15 text-white mb-2">
								<form:label path="password">Password:</form:label>
								<form:errors path="password" class="text-danger" />
								<form:password path="password" class = "form-control" />
							</div>
						</div>
						<div class="form-row text-start">
							<div class="col-15 text-white mb-2">
								<form:label path="confirm">Confirm Password:</form:label>
								<form:errors path="confirm" class="text-danger" />
								<form:password path="confirm" class = "form-control" />
							</div>
						</div>
						<div class="form-row">
							<div class="col-5 text-white">
								<input class="btn btn-info" type="submit" value="Submit">
							</div>
						</div>
					</form:form>
				</div>
			</div>
			
		</div>
		<div class="container d-flex text-center">
			<div class="container bg-info p-5">
				<div class="container col-6 bg-info mx-auto p-4">
					<h2 class="text-secondary">Login</h2>
					<form:form action="/login" method="POST" modelAttribute="newLogin">
						<div class="form-row text-start">
							<div class="col-15 text-dark mb-2">
								<form:label path="email">Email:</form:label>
								<form:errors path="email" class="text-danger" />
								<form:input path="email" class = "form-control" />
							</div>
						</div>
						<div class="form-row text-start">
							<div class="col-15 text-dark mb-2">
								<form:label path="password">Password:</form:label>
								<form:errors path="password" class="text-danger" />
								<form:password path="password" class = "form-control" />
							</div>
						</div>
						<div class="form-row">
							<div class="col-4 text-white">
								<input class="btn btn-secondary" type="submit" value="Login">
							</div>
						</div>
					

					</form:form>
				</div>
			</div>

		</div>

</body>
</html>