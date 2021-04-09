<%@include file="/WEB-INF/views/components/header/header.jsp"%>

<div class="jumbotron">
	
</div>

<div class="container">
	<div class="row">
		<div id="login-box" class="mx-auto">
			<h2>Enter Username and Password</h2>


			<form name="loginForm"
				action="<c:url value="/j_spring_security_check" />" method="post">
				<c:if test="${not empty error}">
					<div class="error" style="color: red;">${error}</div>
				</c:if>
				<div class="form-group">
					<label for="username">User: </label> <input type="text"
						id="username" name="username" class="form-control" />
				</div>
				<div class="form-group">
					<label for="password">Password:</label> <input type="password"
						id="password" name="password" class="form-control" />
				</div>

				<input type="submit" value="Submit" class="btn btn-default">

				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />

			</form>
		</div>
	</div>
</div>

<%@include file="/WEB-INF/views/components/footer/footer.jsp"%>