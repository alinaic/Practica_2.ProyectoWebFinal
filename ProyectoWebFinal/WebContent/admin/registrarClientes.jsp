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

		<br><br> <b>Registra clientes:</b>
		<br><br>
		<form action="ServletRegistroCliente" method="post">
			<b>Nombre:</b><input type="text" name="campoNombre"><br /> 
			<b>Calle:</b><input type="text" name="campoCalle"><br />
			<b>N�mero de calle:</b><input type="text" name="campoNumero_calle"><br /> 
			<b>C�digo Postal:</b><input type="text" name="campoCodigo_postal"><br /> 
			<b>Tel�fono:</b><input type="text" name="campoTelefono"><br /> 
			<b>E-mail:</b><input type="text" name="campoEmail"><br />
			<b>Particular:</b><input type="text" name="campoParticular"><br /> 
			<b>Empresa:</b><input type="text" name="campoEmpresa"><br /> 
			<br /><input type="submit" value="REGISTRAR" />
		</form>
	</body>
</html>