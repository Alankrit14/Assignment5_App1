<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HR Login</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
</head>
<body>
	<div id="login">
		<h3 class="text-center text-white pt-5">HR Login form</h3>
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">
						<form id="login-form" class="form"
							action="<%=request.getContextPath()%>/loginProcess"
							onsubmit="return validateform()" method="post">
							<h3 class="text-center text-info">Login</h3>
							<div class="form-group">
								<label for="username" class="text-info">Username:</label><br>
								<input type="text" name="loginUsername" id="username"
									class="form-control" required>
							</div>
							<div class="form-group">
								<label for="password" class="text-info">Password:</label><br>
								<input type="password" name="loginPassword" id="password"
									class="form-control" required>
							</div>
							<span>${msg}</span>
							<button class="btn btn-success">Log In</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="page-footer font-small blue">
		<div class="footer-copyright text-center py-3">
			© 2021 Copyright: <a href="https://mdbootstrap.com/">
				hr.nagarro@example.com</a>
		</div>
	</footer>
	<script>
		function validateform() {
			var name = document.form.loginUsername.value;
			var password = document.form.loginPassword.value;

			if (name.length > 4 && name.length < 51) {
				alert("Min 5 and Max 50 character!");
				return false;
			} else if (password.length > 4 && password.length < 51) {
				alert("Min 5 and Max 50 character!");
				return false;
			}
		}
	</script>
</body>
</html>