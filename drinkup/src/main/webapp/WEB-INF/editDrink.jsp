<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit this drink</title>
</head>
<body>
<div class="container p-3 col-10 mx-auto my-5 bg-secondary text-light">
	<div class="card">
		<div class="card-header bg-secondary d-flex justify-content-between align-items-center">
			<h1 class="display-4 survey text-info">Enhance your drink!</h1>
			<div>
				<a href="/dashboard" class="btn btn-info">Dashboard</a>
				<a href="/logout" class="btn btn-info">Logout</a>
			</div>
		</div>
			<div class="card-body bg-secondary text-light">

				<form:form action="/updateDrinkDB/${drink.id}" method="put" modelAttribute="drink">
				
					<p>
						<form:label path="name" class="col-sm-2 col-form-label left">Name</form:label>
						<form:input path="name" class="form-control"/>
						<form:errors class="text-danger" path="name" />
					</p>
					<p>
						<form:label path="liquor" class="col-sm-2 col-form-label left">Liquor</form:label>
						<form:input path="liquor" class="form-control"/>
						<form:errors class="text-danger" path="liquor" />
					</p>
					<p>
						<form:label path="ingredients" class="col-sm-2 col-form-label left">Ingredients</form:label>
						<form:input path="ingredients" class="form-control"/>
						<form:errors class="text-danger" path="ingredients" />
					</p>
					<p>
						<form:label path="glass" class="col-sm-2 col-form-label left">Glass</form:label>
						<form:input path="glass" class="form-control"/>
						<form:errors class="text-danger" path="glass" />
					</p>
					<p>
						<form:label path="directions" class="col-sm-2 col-form-label left">Directions</form:label>
						<form:input path="directions" class="form-control"/>
						<form:errors class="text-danger" path="directions" />
					</p>
					<form:input type="hidden" value="${loggedInUser.id}" path="user"/>
					<input type="submit" value="Edit" class="btn btn-info">

					</form:form>
					<form action="/dump/${drink.id}" method="post">
					<input type="hidden" name="_method" value="delete">
					<input type="submit" value="Delete" class="btn btn-danger">
					</form>
				
			</div>
		</div>
	</div>

</body>
</html>