<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/components/header/header.jsp"%>


<div class="container">

	<div class="page-header">
		<h1>Add Food Page</h1>
		<p class="lead">Fill the form below to add a food item</p>
	</div>

	<form:form
		action="${pageContext.request.contextPath}/admin/foodMenu/addFood"
		method="post" commandName="food" enctype="multipart/form-data">
		<div class="form-group">
			<label for="name">Name</label>
			<form:errors path="foodName" cssStyle="color: red;" />
			<form:input path="foodName" id="name" class="form-control" />
			<!-- Path is the attribute of the food model -->
		</div>

		<div class="form-group">
			<div class="form-check">
				<label class="form-check-label">Sushi</label>
				<form:radiobutton path="foodCategory" id="category" value="Sushi"/>
				<label class="form-check-label">Burger</label>
				<form:radiobutton path="foodCategory" id="category" value="Burger"/>
				<label class="form-check-label">Tacos</label>
				<form:radiobutton path="foodCategory" id="category" value="Tacos"/>
			</div>
		</div>

		<div class="form-group">
			<label for="description">Description</label>
			<form:textarea path="foodDescription" id="description"
				class="form-control" />
		</div>

		<div class="form-group">
			<label for="price">Price</label>
			<form:errors path="foodPrice" cssStyle="color: red;" />
			<form:input path="foodPrice" id="price" class="form-control" />
		</div>


		<div class="form-group">
			<div class="form-check">
				<label class="form-check-label">Active</label>
				<form:radiobutton path="foodStatus" id="status" value="active"/>
				<label class="form-check-label">Inactive</label>
				<form:radiobutton path="foodStatus" id="status" value="Inactive" />
			</div>
		</div>

		<div class="form-group">
			<label for="unitInStock">Amount In Stock</label>
			<form:errors path="unitInStock" cssStyle="color: red;" />
			<form:input path="unitInStock" id="unitInStock" class="form-control" />
		</div>

		<div class="form-group">
			<label class="control-label" for="foodPic">Upload food pic</label> <br />
			<form:input id="foodPic" path="foodPic" type="file"
				class="form:input-large" />
		</div>

		<br />

		<input type="submit" value="submit" class="btn btn-default">
		<a href="<c:url value="/admin/foodMenu" />" class="btn btn-default">Cancel</a>
	</form:form>

</div>


<%@include file="/WEB-INF/views/components/footer/footer.jsp"%>