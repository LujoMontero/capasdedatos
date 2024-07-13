<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="assets/html/head.jsp" %>
</head>
<body>
<%@include file="assets/html/header.jsp" %>

<section class="container">
    <form class="row g-3 p-5 needs-validation" novalidate method="post" action="vista.jsp">>
        <div class="col-md-4">
            <label for="nombre" class="form-label">Nombre Apellido</label>
            <input type="text" class="form-control" id="nombre" name="Nombre" required>
        </div>
        <div class="col-md-4">
            <label for="rut" class="form-label">Rut</label>
            <input type="number" class="form-control" id="rut" name="rut" required>
        </div>
        <div class="col-md-4">
            <label for="email" class="form-label">Email</label>
            <div class="input-group has-validation">
                <span class="input-group-text" id="arroba">@</span>
                <input type="text" class="form-control" name="email" id="email" aria-describedby="arroba" required>
            </div>
        </div>
        <div class="col-md-4">
            <label for="telefono" class="form-label">Telefono</label>
            <div class="input-group has-validation">
                <span class="input-group-text" id="prefijo">+56</span>
                <input type="number" class="form-control" name="telefono" id="telefono" aria-describedby="prefijo" required>
            </div>
        </div>
        <div class="col-md-6">
            <label for="direccion" class="form-label">Direccion</label>
            <input type="text" class="form-control" name="direccion" id="direccion" required>
        </div>

        <div class="col-6">
            <label for="contacto" class="form-label">Contacto</label>
            <select class="form-select" id="contacto" name="contacto" required>
                <option value="1">Familiar</option>
                <option value="2">Pareja</option>
                <option value="3">hija/o</option>
                <option value="4">Vecino</option>
                <option value="5">Conocido</option>
            </select>
        </div>
        <div class="col-md-6">
            <label for="telefono2" class="form-label">Telefono de Contacto</label>
            <div class="input-group has-validation">
                <span class="input-group-text" id="prefijo2">+56</span>
                <input type="number" class="form-control" name="telefono" id="telefono2" aria-describedby="prefijo2" required>
                <div class="invalid-feedback">
                    Agregar correo.
                </div>
            </div>
        </div>
        <div class="col-12 d-md-flex justify-content-center">
            <button class="btn btn-primary" type="submit">Enviar</button>
        </div>
    </form>
</section>

<%@include file="assets/html/footer.jsp"%>
</body>
</html>