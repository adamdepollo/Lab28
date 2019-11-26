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
		<div class="alert alert-primary" role="alert" id="alert"
			style="display: none">${warn}</div>
	</div>
	<script>
		if (document.getElementById('alert').innerHTML !== "") {
			document.getElementById('alert').removeAttribute("style");
		}
	</script>
</body>
</html>