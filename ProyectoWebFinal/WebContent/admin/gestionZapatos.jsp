
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Gestión WEB</title>
	</head>

	<body>
		
		<jsp:include page="menu.jsp"></jsp:include>
	
		<table id="TablaZapatos">
			<tr>
				<th>Categoria</th>
				<th>Temporada</th>
				<th>Talla</th>
				<th>Material</th>
				<th>Tipo</th>
				<th>Color</th>
				<th>Marcas</th>
				<th>Borrar</th>
				<th>Editar</th>
			</tr>
		
			<c:forEach items="${zapatos}" var="zapatos">
				<tr>
					<td>${zapatos.categoria}</td>
					<td>${zapatos.temporada}</td>
					<td>${zapatos.talla}</td>
					<td>${zapatos.material}</td>
					<td>${zapatos.tipo}</td>
					<td>${zapatos.color}</td>
					<td>${zapatos.marcas}</td>
					<td><a href="ServletBorrarZapatos?id=${zapatos.id}">BORRAR</a></td>
					<td><a href="ServletEditarZapatos?id=${zapatos.id}">EDITAR</a></td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>