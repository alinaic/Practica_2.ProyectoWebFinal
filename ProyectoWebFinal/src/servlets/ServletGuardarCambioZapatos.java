package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Zapatos;
import daos.ZapatosDAO;
import daosImpl.ZapatosDAOImpl;

@WebServlet("/admin/ServletGuardarCambioZapatos")
public class ServletGuardarCambioZapatos extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Recuperamos los datos indicados en el formulario
		String categoria = request.getParameter("campoCategoria");
		String temporada = request.getParameter("campoTemporada");
		String talla = request.getParameter("campoTalla");
		String material= request.getParameter("campoMaterial");
		String tipo= request.getParameter("campoTipo");
		String color= request.getParameter("campoColor");
		String marcas= request.getParameter("campoMarcas");
		String id = request.getParameter("campoId");
				
		//ahora deberiamos validar todos los datos
		//...
		// fin parte validacion
				
		Zapatos zapatos = new Zapatos(categoria, temporada, talla, material, tipo, color, marcas);
		zapatos.setId(Integer.parseInt(id));
		
		ZapatosDAO zapatosDAO = new ZapatosDAOImpl();
		zapatosDAO.guardarCambiosZapatos(zapatos);
		
		request.getRequestDispatcher("ServletListadoZapatos").forward(request, response);
		
	}

}
