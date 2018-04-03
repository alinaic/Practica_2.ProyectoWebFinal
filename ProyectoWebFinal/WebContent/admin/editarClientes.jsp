<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Gesti�n WEB</title>
	</head>

	<body>

		<jsp:include page="menu.jsp"></jsp:include>
		
		<form action="ServletGuardarCambioClientes" method="post">
			<div style="margin:8px">

			<b>Nombre:</b><input type="text" name="campoNombre" value="${clientesAeditar.nombre}"><br /> 
			<b>Calle:</b><input type="text" name="campoCalle" value="${clientesAeditar.calle}"><br />
			<b>N�mero de calle:</b><input type="text" name="campoNumero_calle" value="${clientesAeditar.numero_calle}"><br /> 
			<b>C�digo Postal:</b><input type="text" name="campoCodigo_postal" value="${clientesAeditar.codigo_postal}"><br /> 
			<b>Tel�fono:</b><input type="text" name="campoTelefono" value="${clientesAeditar.telefono}"><br /> 
			<b>E-mail:</b><input type="text" name="campoEmail" value="${clientesAeditar.email}"><br />
			<b>Particular:</b><input type="text" name="campoParticular" value="${clientesAeditar.particular}"><br />
			<b>Empresa:</b><input type="text" name="campoEmpresa" value="${clientesAeditar.empresa}"><br /> 
			<input type="hidden" name="campoId" value="${clientesAeditar.id}"><br />
			</div>
			<div style="margin:16px">
			<input type="submit" value="GUARDAR CAMBIOS"/>
			</div>
		</form>
	</body>
</html>