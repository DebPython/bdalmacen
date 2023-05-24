
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro y Edición Productos</title>
        <style>
            body {
              background-color: #f1f1f1;
              font-family: Arial, sans-serif;
            }

            .container {
              width: 400px;
              margin: 0 auto;
              padding: 20px;
              background-color: #fff;
              border: 1px solid #ccc;
              border-radius: 5px;
              box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            }

            h1 {
              text-align: center;
              color: #333;
              margin-bottom: 30px;
            }

            label {
              display: block;
              margin-bottom: 10px;
              margin-top: 10px;
              color: #333;
              font-weight: bold;
            }

            input[type="text"],
            input[type="hidden"], input[type="number"]{
              width: 95%;
              padding: 10px;
              border: 1px solid #ccc;
              border-radius: 3px;
              font-size: 14px;
              
            }

            input[type="submit"] {
              width: 100%;
              padding: 10px;
              background-color: #4CAF50;
              color: #fff;
              border: none;
              border-radius: 3px;
              cursor: pointer;
              font-size: 16px;
              margin-top: 10px;
            }
        </style>
        
    </head>
    <body>
        
                    
         <div class="container">
            <h1>
                <c:if test="${producto.id == 0}">
                    Nuevo Registro
                </c:if>
                <c:if test="${producto.id != 0}">
                    Editar Registro
                </c:if>
            </h1>
             
            <form action="Inicio" method="post">
              <input type="hidden" name="id" value="${producto.id}" >

              <label for="isbn">Descripción:</label>
              <input type ="text" name="descripcion" value="${producto.descripcion}">

              <label for="titulo">Cantidad:</label>
              <input type ="number" name="cantidad" value="${producto.cantidad}">

              <label for="categoria">Precio:</label>
              <input step="any" type="number" name="precio" value="${producto.precio}">
              
              <label for="categoria">Categoría:</label>
              <input type="text" name="categoria" value="${producto.categoria}" >
              <br>
              <input type="submit" value="Guardar">
            </form>
        </div>
              
    </body>
</html>
