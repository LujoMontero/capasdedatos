<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="assets/html/head.jsp" %>
</head>
<body>
<%@include file="assets/html/header.jsp" %>

<section class="container p-3">

    <h2 class="text-center">User Details</h2>

    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">RUT</th>
            <th scope="col">Email</th>
            <th scope="col">Address</th>
            <th scope="col">Phone</th>
            <th scope="col">Contact</th>
            <th scope="col">Phone2</th>
        </tr>
        </thead>

        <tbody>
        <tr>
            <td>${user.userId}</td>
            <td>${user.name}</td>
            <td>${user.rut}</td>
            <td>${user.email}</td>
            <td>${user.address}</td>
            <td>${user.phone}</td>
            <td>${user.contact}</td>
            <td>${user.phone2}</td>
        </tr>
        </tbody>
    </table>

    <button class="btn btn-link"><a href="user?action=list">Back to List</a></button>

</section>

<%@include file="assets/html/footer.jsp" %>
</body>
</html>

