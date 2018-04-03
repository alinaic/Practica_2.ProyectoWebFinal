package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.ClientesDAO;
import daosImpl.ClientesDAOImpl;
import modelo.Clientes;

@WebServlet("/admin/ServletGuardarCambioClientes")
public class ServletGuardarCambioClientes extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
// Recuperamos los datos indicados en el formulario
		String nombre = request.getParameter("campoNombre");
		String calle = request.getParameter("campoCalle");
		String numero_calle = request.getParameter("campoNumero_calle");
		String codigo_postal= request.getParameter("campoCodigo_postal");
		String telefono= request.getParameter("campoTelefono");
		String email= request.getParameter("campoEmail");
		String particular= request.getParameter("campoParticular");
		String empresa= request.getParameter("campoEmpresa");
		String id = request.getParameter("campoId");
		
		//ahora deberiamos validar todos los datos
		//...
		// fin parte validacion
		
		
		Clientes clientes = new Clientes(nombre, calle, numero_calle, codigo_postal, telefono, email, particular, empresa);
		clientes.setId(Integer.parseInt(id));
		
		ClientesDAO clientesDAO = new ClientesDAOImpl();
		clientesDAO.guardarCambiosClientes(clientes);
		
		request.getRequestDispatcher("ServletListadoClientes").forward(request, response);

	}
}
