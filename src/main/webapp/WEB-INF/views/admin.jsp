<%@include file="/WEB-INF/views/components/header/header.jsp"%>


<div class="container">

	<div class="page-header">
		<h1>Administration Page</h1>
		<p class="lead">Admin page</p>
	</div>
	<div class="card-deck">
		<div class="card" style="width: 18rem;">
			<img class="card-img-top"
				src="<c:url value="/resources/images/adminMenu.jpg" />"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Menu Controls</h5>
				<p class="card-text">
					Here you can <strong>Create, Update, Review, or Delete </strong>
					menu items.
				</p>
				<a href="<c:url value="/admin/foodMenu" />" class="btn btn-primary">Check
					Out Menu</a>
			</div>
		</div>

		<div class="card" style="width: 18rem;">
			<img class="card-img-top"
				src="<c:url value="/resources/images/logout.jpg" />"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Exit Admin Page</h5>
				<p class="card-text">You've been working hard. Get some rest.</p>
				<a href="<c:url value="/j_spring_security_logout" />"
					class="btn btn-primary">Logout</a>
			</div>
		</div>

	</div>

</div>


<%@include file="/WEB-INF/views/components/footer/footer.jsp"%>
