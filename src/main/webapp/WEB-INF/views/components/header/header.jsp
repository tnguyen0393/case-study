<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="icon" href="../../favicon.ico" />
<link rel="canonical"
	href="https://getbootstrap.com/docs/3.4/examples/carousel/" />

<title>Food Go!</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />

<!-- Custom StyleSheet -->
<link href="<c:url value="/resources/css/styles.css" />" rel="stylesheet">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<!-- Font Awesome -->
<script src="https://kit.fontawesome.com/c46692c538.js"
	crossorigin="anonymous"></script>
</head>



<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container" >
		<a class="navbar-brand" href="<c:url value="/" />">Food Go!</a>
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
				<li class="nav-item"><a class="nav-link" href="<c:url value="/admin" />" >Admin</a>
				</li>
			</ul>
		</div>
		</div>
	</nav>