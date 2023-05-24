
<%@page import="java.util.List"%>
<%@page import="com.emergentes.Modelo.Producto"%>
<%
    List<Producto> productos = (List<Producto>)request.getAttribute("productos");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
        <style>
            .styled-table { border-collapse: collapse; margin: 25px 0; 
                           font-size: 1em; font-family: 
                           sans-serif; min-width: 450px; 
                           box-shadow: 0 0 20px rgba(0, 0, 0, 0.15); }
            .styled-table thead tr { background-color: #980081; 
                                    color: #ffffff; 
                                    text-align: middle; 
            }
            .styled-table th, .styled-table td { padding: 12px 15px; }
            
            .styled-table tbody tr { border-bottom: 1px solid #dddddd; } 
            .styled-table tbody tr:nth-of-type(even) { background-color: #f3f3f3; } 
            .styled-table tbody tr:last-of-type { border-bottom: 2px solid #009879; }
            
            .btn-link {
                background-color: #199319;
                color: white;
            }
            
            .btn-link {
                background-color: #199319;
                color: white;
                padding: 15px 25px;
              }
              .btn-link {
                background-color: #199319;
                color: white;
                padding: 15px 25px;
                text-decoration: none;
              }
              .btn-link:hover {
                background-color: #223094;
              }
        </style>
        
    </head>
    <body>
        <div class="nombres">
            <h3>SEGUNDO PARCIAL TEM-742</h3>
            <h3>Nombre : Julio Cesar Gutierrez Colque</h3>
            <h3>Carnet : 12926186 LP</h3>
        </div>
         <h1>Gestión de Productos</h1>
        <a href="Inicio?action=add" class="btn-link">Nuevo</a>
        <table border="1" class ="styled-table">
            <thead>
            <tr>
                <th>Id</th>
                <th>Descripción</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            </thead>
            
            <c:forEach var="item" items="${productos}">
            <tbody>
            <tr>
                <td>${item.id}</td>
                <td>${item.descripcion}</td>
                <td>${item.cantidad}</td>
                <td>${item.precio}</td>
                <td>${item.categoria}</td>
                <td><a href="Inicio?action=edit&id=${item.id}">Editar</a></td>
                <td><a href="Inicio?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro de eliminar?'))">Delete</a></td>
            </tr>
            </tbody>
            </c:forEach>
        </table>
        
        
    </body>
</html>
