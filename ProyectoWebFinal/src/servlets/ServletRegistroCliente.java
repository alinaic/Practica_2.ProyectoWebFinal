package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Clientes;
import daos.ClientesDAO;
import daosImpl.ClientesDAOImpl;

@WebServlet("/admin/ServletRegistroCliente")
public class ServletRegistroCliente extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String nombre = request.getParameter("campoNombre");
		String calle = request.getParameter("campoCalle");
		String numero_calle = request.getParameter("campoNumero_calle");
		String codigo_postal = request.getParameter("campoCodigo_postal");
		String telefono = request.getParameter("campoTelefono");
		String email = request.getParameter("campoEmail");
		String particular = request.getParameter("campoParticular");
		String empresa = request.getParameter("campoEmpresa");

		// parte de validacion de datos
		// ...
		// fin parte de validacion de datos

		Clientes nuevoClientes = new Clientes (nombre, calle, numero_calle, codigo_postal, telefono, email, particular, empresa);
		
		ClientesDAO clientesDAO = new ClientesDAOImpl();
		boolean resultado = clientesDAO.registrarClientes(nuevoClientes);
		request.getRequestDispatcher("ServletListadoClientes").forward(request,
				response);
	}

}
