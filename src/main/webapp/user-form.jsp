<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
    <%@include file="assets/html/head.jsp" %>
</head>
<body>
<%@include file="assets/html/header.jsp" %>

<h2>${user != null ? "Edit User" : "New User"}</h2>
<form action="user?action=${user == null ? 'insert' : 'update'}" method="post">
    <input type="hidden" name="id" value="${user.userId}"/>
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${user.name}" required><br>
    <label for="rut">RUT:</label>
    <input type="text" id="rut" name="rut" value="${user.rut}" required><br>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="${user.email}" required><br>
    <label for="address">Address:</label>
    <input type="text" id="address" name="address" value="${user.address}" required><br>
    <label for="phone">Phone:</label>
    <input type="text" id="phone" name="phone" value="${user.phone}" required><br>
    <label for="contact">Contact:</label>
    <input type="text" id="contact" name="contact" value="${user.contact}" required><br>
    <label for="phone2">Phone2:</label>
    <input type="text" id="phone2" name="phone2" value="${user.phone2}" required><br>
    <input type="submit" value="Save">
    <a href="user?action=list">Cancel</a>
</form>
<%@include file="assets/html/footer.jsp" %>
</body>
</html>