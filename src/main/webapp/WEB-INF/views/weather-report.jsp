<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab28</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<form action="get-forecast">
			<div class="form-group">
				<label for="latitude">Latitude:</label><input id="latitude"
					class="form-control" type="text" name="lat">
			</div>
			<div class="form-group">
				<label for="longitude">Longitude:</label><input id="longitude"
					class="form-control" type="text" name="lon">
			</div>
			<input type="Submit" class="btn btn-dark"> <input
				type="Reset" class="btn btn-dark">
		</form>
		<br>
		<table class="table">
			<thead>
				<tr>
					<th>Day</th>
					<th>Forecast</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="w" items="${weather}" varStatus="i">
					<tr>
						<td>${i.count}</td>
						<td>${w}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>