<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<title>DrinkUp Dash</title>
</head>
<body>
		<div class="container p-3 col-10 mx-auto my-5 bg-secondary text-light">
	<div class="card-body bg-secondary text-light">
		<div class="card-header bg-secondary">
			<h1 class="survey text-info">Welcome to DrinkUp, <c:out value="${loggedInUser.userName}"/></h1>
			<div class="card-body bg-secondary text-light">
			<table class="table table-info">
			<thead>
				<tr>
					<th scope="col">Drink Name</th>
					<th scope="col">Type of Liquor</th>	
					<th scope="col">Glass</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${drinks}" var="drink">
					<tr>
						<td><a href="/viewDrink/${drink.id}"><c:out value="${drink.name}"/></a></td>
						<td><c:out value="${drink.liquor}"></c:out></td>
						<td><c:out value="${drink.glass}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
				<a href="/newDrink" class="btn btn-info">Make a Drink</a>
				<a href="/logout" class="btn btn-info">Logout</a>
				
			</div>
		</div>
	</div>
	</div>
		<div class="container p-3 col-10 mx-auto my-5 bg-secondary text-light">
		<div class="card">
			<div class="card-header bg-secondary d-flex justify-content-between align-items-center">
			<h1 class="display-4 survey text-info">Popular Liquors</h1>
			</div>
			<div class="card-body bg-secondary text-light">
			<ol class="list-group list-group-numbered">
			  <li class="list-group-item d-flex justify-content-between align-items-start">
			    <div class="ms-2 me-auto">
			      <div class="fw-bold">Vodka</div>
			      Reyka ||
			      Grey Goose ||
			      Ketel One ||
			      Titos ||
			      Deep Eddys
			    </div>
			    
			  </li>
			  <li class="list-group-item d-flex justify-content-between align-items-start">
			    <div class="ms-2 me-auto">
			      <div class="fw-bold">Gin</div>
			      Bombay Saphire ||
			      Hendrix ||
			      Seagrams ||
			      Beefeater
			    </div>
			    
			  </li>
			  <li class="list-group-item d-flex justify-content-between align-items-start">
			    <div class="ms-2 me-auto">
			      <div class="fw-bold">Rum</div>
			      Bacardi ||
			      Malibu ||
			      Mt Gay ||
			      Myers Dark
			    </div>
			    
			  </li>
			  <li class="list-group-item d-flex justify-content-between align-items-start">
			    <div class="ms-2 me-auto">
			      <div class="fw-bold">Tequila</div>
			      Casamigos ||
			      Patron ||
			      Don Julio ||
			      El Jimador
			    </div>
			    
			  </li>
			  			  <li class="list-group-item d-flex justify-content-between align-items-start">
			    <div class="ms-2 me-auto">
			      <div class="fw-bold">Whiskey/Bourbon</div>
			      Woodford ||
			      Makers Mark ||
			      Jack Daniels ||
			      Bulleit ||
			      Knob Creek
			    </div>
			    
			  </li>
			</ol>
			</div>
		</div>
	</div>

</body>
</html>