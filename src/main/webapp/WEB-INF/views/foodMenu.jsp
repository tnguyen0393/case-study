<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/components/header/header.jsp" %>


		<div class="container">

			<div class="page-header">
				<h1>Food Menu Items</h1>
				<p class="lead">Manage the food menu</p>
			</div>

			<table class="table table-striped table-hover">
				<thead>
					<tr class="bg-success">
						<th>Image</th>
						<th>Food Name</th>
						<th>Food Category</th>
						<th>Food Price</th>
						<th></th>
					</tr>
				</thead>
				<c:forEach items="${foodList}" var="food">
					<tr>
						<td><img src="<c:url value="/resources/images/${food.foodId}.png" />" alt="image" style="width:100%"></td>
						<td>${food.foodName}</td>
						<td>${food.foodCategory}</td>
						<td>$${food.foodPrice}</td>
						<td><a class="icon-margin" href="<spring:url value="/foodList/foodDetails/${food.foodId}" />"><i class="fas fa-info"></i></a>
							<a class="icon-margin" href="<spring:url value="/admin/foodMenu/editFood/${food.foodId}" />"><i class="far fa-edit"></i></a>
							<a class="icon-margin" href="<spring:url value="/admin/foodMenu/deleteFood/${food.foodId}" />"><i class="fas fa-times"></i></a> <!-- For deleting -->
						</td>
					</tr>
				</c:forEach>
			</table>
			
			<a class="btn btn-primary" href="<spring:url value="/admin/foodMenu/addFood" />">Add Product</a>
			<br />
</div>
<%@include file="/WEB-INF/views/components/footer/footer.jsp" %>
