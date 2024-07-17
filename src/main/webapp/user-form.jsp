<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<head>
    <%@include file="assets/html/head.jsp" %>
</head>
<body>

<%@include file="assets/html/header.jsp" %>

<section class="container p-3">
    <h2 class="text-center">${user != null ? "Edit User" : "New User"}</h2>

    <form class="row g-3 needs-validation" action="user?action=${user == null ? 'insert' : 'update'}" method="post">

        <input type="hidden" name="id" value="${user.userId}"/>

        <div class="col-md-4">
            <label for="name">Name:</label>
            <input class="form-control" type="text" id="name" name="name" value="${user.name}" required><br>
        </div>

        <div class="col-md-4">
            <label for="rut">RUT:</label>
            <input class="form-control" type="text" id="rut" name="rut" value="${user.rut}" required><br>
        </div>

        <div class="col-md-4">
            <label for="email">Email:</label>
        <input class="form-control" type="email" id="email" name="email" value="${user.email}" required><br>
        </div>

        <div class="col-md-6">
        <label for="address">Address:</label>
        <input class="form-control" type="text" id="address" name="address" value="${user.address}" required><br>
        </div>

        <div class="col-md-3">
        <label for="phone">Phone:</label>
        <input class="form-control" type="text" id="phone" name="phone" value="${user.phone}" required><br>
        </div>

        <div class="col-md-6">
        <label for="contact">Contact:</label>
        <input class="form-control" type="text" id="contact" name="contact" value="${user.contact}" required><br>
        </div>

        <div class="col-md-6">
        <label for="phone2">Phone2:</label>
        <input class="form-control" type="text" id="phone2" name="phone2" value="${user.phone2}" required><br>
        </div>

        <div class="col-12">
            <input class="btn btn-primary" type="submit" value="Save">
            <button class="btn btn-link"><a href="user?action=list">Cancel</a></button>
        </div>


    </form>
</section>

<%@include file="assets/html/footer.jsp" %>
</body>
</html>