<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View or Update Employee</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.5.0/mdb.min.css"
	rel="stylesheet" />
</head>
<body>
	<h1 style="text-align: center">View or Update Employee</h1>
	<div
		style="margin: 50px 100px 0px 100px; border: 2px solid black; padding: auto;">
		<form modelAttribute="employee"
			action="<%=request.getContextPath()%>/addEmployee" method="post">

			<div class="row mb-4">
				<div class="col">
					<div class="form-outline">
						<input type="text" id="code" name="employeeCode" class="form-control" required/>
						<label class="form-label" for="code">Employee Code</label>
					</div>
				</div>
				<div class="col">
					<div class="form-outline">
						<input type="text" id="name" name="employeeName" class="form-control" required/>
						<label class="form-label" for="name">Employee Name</label>
					</div>
				</div>
			</div>

			<div class="form-outline mb-4">
				<input type="text" id="location" name="location"
					class="form-control" required/> 
					<label class="form-label" for="location">Location</label>
			</div>

			<div class="form-outline mb-4">
				<input type="email" id="email" name="email" class="form-control" required/>
				<label class="form-label" for="email">Email</label>
			</div>

			<div class="form-outline mb-4">
				<input type="text" id="dob" name="dateOfBirth" class="form-control" required/> <label
					class="form-label" for="dob">Date of Birth</label>
			</div>
			<button type="submit" class="btn btn-primary btn-block mb-4">
				Add Employee</button>
		</form>
	</div>
	<footer class="page-footer font-small blue fixed"
		style="margin-top: 58px">
		<div class="footer-copyright text-center bg-info py-3">
			©2021 Copyright: <a href="login"> hr.nagarro@example.com</a>
		</div>
	</footer>
</body>
</html>