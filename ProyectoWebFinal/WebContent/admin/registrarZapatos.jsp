<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Gestión WEB</title>
		<script type="text/javascript" src="js/validacionRegistrarZapatos.js"></script>
	</head>

	<body>

		<jsp:include page="menu.jsp"></jsp:include>

		<br><br> <b>Registra zapatos:</b>
		<br><br>
		<form action="ServletRegistroZapatos" method="post">
			<b>Categoria:</b><input type="text" name="campoCategoria"><br /> 
			<b>Temporada:</b><input type="text" name="campoTemporada"><br />
			<b>Talla:</b><input type="text" name="campoTalla"><br /> 
			<b>Material:</b><input type="text" name="campoMaterial"><br /> 
			<b>Tipo:</b><input type="text" name="campoTipo"><br /> 
			<b>Color:</b><input type="text" name="campoColor"><br /> 
			<b>Marcas:</b><input type="text" name="campoMarcas"><br /> 
			<br /> <input type="submit" value="REGISTRAR" /><br />
		</form>
	</body>
</html>