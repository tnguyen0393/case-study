<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/components/header/header.jsp"%>


<div class="container">

	<div class="page-header">
		<h1>Food Details</h1>
		<p class="lead">Get to know your food</p>
	</div>
	<hr />

	<div class="container">

		<div class="row">
			<div class="col-md-6">
				<img src="<c:url value="/resources/images/${food.foodId}.png" />"
					alt="image" style="width: 100%">
			</div>

			<div class="col-md-5">
				<h3>${food.foodName}</h3>
				<p>${food.foodDescription}</p>
				<p><strong>Food Type: </strong>${food.foodCategory}</p>
				<p><strong>Price: </strong> $${food.foodPrice}</p>
			</div>
		</div>

	</div>
</div>

<%@include file="/WEB-INF/views/components/footer/footer.jsp"%>
