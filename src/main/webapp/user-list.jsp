<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="assets/html/head.jsp" %>
</head>
<body>
<%@include file="assets/html/header.jsp" %>

<section class="container">

    <h2>User List</h2>

    <table class="table">
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
            <c:forEach var="user" items="${listUsers}">
                <tr>
                    <td>${user.userId}</td>
                    <td>${user.name}</td>
                    <td>${user.rut}</td>
                    <td>${user.email}</td>
                    <td>${user.address}</td>
                    <td>${user.phone}</td>
                    <td>${user.contact}</td>

                    <td>
                        <a href="user?action=view&id=${user.userId}">View</a>
                        <a href="user?action=edit&id=${user.userId}">Edit</a>
                        <a href="user?action=delete&id=${user.userId}" onclick="return confirm('Are you sure?')">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="user?action=new">New User</a>

</section>

<%@include file="assets/html/footer.jsp" %>
</body>
</html>
