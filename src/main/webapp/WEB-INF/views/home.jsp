<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	

<!DOCTYPE html>
<html>
<head>
<style>
.food-adjustment {
	margin-bottom: 2000px;
}

.food-adjustment-burger {
	margin-bottom: 3000px;
}

.carousel {
	height: 350px;
	margin-bottom: 60px
}

.carousel-item {
	height: 350px;
}

.carousel-inner {
	height: 350px;
	min-width: 100%
}

.feature-pic {
	width: 20%;
	height: auto;
}
</style>


<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="icon" href="../../favicon.ico" />
<link rel="canonical"
	href="https://getbootstrap.com/docs/3.4/examples/carousel/" />

<title>Food Go!</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
	

<script src="https://kit.fontawesome.com/c46692c538.js"
	crossorigin="anonymous"></script>
</head>


<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand" href="#">Food Go!</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/" />">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/foodList" />">Menu</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/admin" />">Admin</a></li>
				</ul>
			</div>
		</div>
	</nav>


	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100 food-adjustment"
					src="https://images.unsplash.com/photo-1512838243191-e81e8f66f1fd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"
					alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100 food-adjustment"
					src="https://images.unsplash.com/photo-1611143669185-af224c5e3252?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1490&q=80"
					alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100 food-adjustment-burger"
					src="https://images.unsplash.com/photo-1428660386617-8d277e7deaf2?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1267&q=80"
					alt="Third slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<div class="container">
		<h1>Featured Food Items!</h1>
		<br />
		<c:forEach items="${foodList}" var="food" begin="0" end="3">
			<div class="media">
				<img class="mr-3 feature-pic"
					src="<c:url value="/resources/images/${food.foodId}.png" />"
					alt="image">
				<div class="media-body">
					<h5 class="mt-0">${food.foodName}</h5>
					${food.foodDescription}
				</div>
			</div>
		</c:forEach>

	</div>

	<br />
	<br />

	<footer class="bg-light text-center text-lg-start">
		<div class="container p-4">
			<div class="row">
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
				<h5 class="text-uppercase">Social Media</h5>
					<a href="https://www.facebook.com/" class="text-dark"><i class="fab fa-facebook-square"></i></a>
					<a href="https://www.instagram.com/" class="text-dark"><i class="fab fa-instagram"></i></a>
					<a href="https://twitter.com/" class="text-dark"><i class="fab fa-twitter"></i></a>
					<a href="https://www.youtube.com/" class="text-dark"><i class="fab fa-youtube"></i></a>
				</div>
			</div>
		</div>


		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.2);">
			© 2021 Copyright: <a class="text-dark"
				href="https://mdbootstrap.com/">Food Go!</a>
		</div>
	</footer>



	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>