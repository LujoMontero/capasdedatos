<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="assets/html/head.jsp" %>
</head>
<body>
<%@include file="assets/html/header.jsp" %>
<h2>User Details</h2>
<p>ID: ${user.userId}</p>
<p>Name: ${user.name}</p>
<p>RUT: ${user.rut}</p>
<p>Email: ${user.email}</p>
<p>Address: ${user.address}</p>
<p>Phone: ${user.phone}</p>
<p>Contact: ${user.contact}</p>
<p>Phone2: ${user.phone2}</p>
<a href="user?action=list">Back to List</a>
<%@include file="assets/html/footer.jsp" %>
</body>
</html>