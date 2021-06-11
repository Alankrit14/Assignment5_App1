<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.boot.repository.HibernateConfiguration"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employees Action</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-light bg-light justify-content-between">
      <a class="navbar-brand">Employee Listing</a>
      <h1>${msg}</h1>
      <a href="login" class="btn btn-danger">Logout</a>
    </nav>
    <div style="margin-left: 900px; margin-top: 20px">
      <a
        href="<%=request.getContextPath()%>/showNewForm"
        class="btn btn-success btn-sm mb-3"
      >
        Add Employee
      </a>
      <a
        href="<%=request.getContextPath()%>/listEmployee"
        class="btn btn-info btn-sm mb-3"
      >
        Download Employee
      </a>
    </div>
    <div class="container-xl">
      <div class="table-responsive">
        <div class="table-wrapper">
          <div class="table-title">
            <div class="row">
              <div class="col-sm-4"></div>
            </div>
          </div>
          <table class="table table-striped table-hover table-bordered">
            <thead>
              <tr>
                <th>Employee Code</th>
                <th>Employee Name</th>
                <th>Location</th>
                <th>Email</th>
                <th>Date Of Birth</th>
                <th>Actions</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="users" items="${users}">
                <tr>
                  <td>${users.employeeCode}</td>
                  <td>${users.employeeName}</td>
                  <td>${users.location}</td>
                  <td>${users.email}</td>
                  <td>${users.dateOfBirth}</td>
                  <td>
                    <a
                      href="<%=request.getContextPath()%>/showUpdateForm"
                      class="btn btn-warning"
                      >Edit
                    </a>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <footer class="page-footer font-small blue" style="margin-top: auto">
      <div class="footer-copyright text-center bg-info py-3">
        © 2021 Copyright: <a href="login"> hr.nagarro@example.com</a>
      </div>
    </footer>
</body>
</html>