<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/components/header/header.jsp"%>



<div class="container lower-margin">
<br />
<br />
	<div class="page-header">
		<h1>What's On the Menu</h1>
		<p class="lead">There are three types of food that we love: burgers, tacos, and sushi!</p>
	</div>

	<div class="card-deck">
		<c:forEach items="${foodList}" var="food">
			<div class="card">
				<img src="<c:url value="/resources/images/${food.foodId}.png" />"
					alt="image" style="width: 100%">
				<div class="card-body">
					<h5 class="card-title">${food.foodName}</h5>
					<p class="card-text">${food.foodCategory}</p>
				</div>
				<div class="card-footer">
					<a
						href="<spring:url value="/foodList/foodDetails/${food.foodId}" />"><i
						class="fas fa-info"></i></a> <i class="fas fa-shopping-cart icon-margin"></i>
				</div>
			</div>
		</c:forEach>
	</div>
</div>


<%@include file="/WEB-INF/views/components/footer/footer.jsp"%>