<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Gestión WEB</title>
	</head>
	
	<body>
	
		<jsp:include page="menu.jsp"></jsp:include>
		
		<form action="ServletGuardarCambioZapatos" method="post">
			<div style="margin:18px">
			
			<b>Categoria:</b><input type="text" name="campoCategoria" value="${zapatosAeditar.categoria}"><br /> 
			<b>Temporada:</b><input type="text" name="campoTemporada" value="${zapatosAeditar.temporada}"><br />
			<b>Talla:</b><input type="text" name="campoTalla" value="${zapatosAeditar.talla}"><br /> 
			<b>Material:</b><input type="text" name="campoMaterial" value="${zapatosAeditar.material}"><br /> 
			<b>Tipo:</b><input type="text" name="campoTipo" value="${zapatosAeditar.tipo}"><br /> 
			<b>Color:</b><input type="text" name="campoColor" value="${zapatosAeditar.color}"><br /> 
			<b>Marcas:</b><input type="text" name="campoMarcas" value="${zapatosAeditar.marcas}"><br /> 
			<input type="hidden" name="campoId" value="${zapatosAeditar.id}" />
			</div>
			<div style="margin:16px">
			<br /> <input type="submit" value="GUARDAR CAMBIOS" />
			</div>
		</form>	
	</body>
</html>