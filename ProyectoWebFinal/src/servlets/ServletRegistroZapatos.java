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

@WebServlet("/admin/ServletRegistroZapatos")
public class ServletRegistroZapatos extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String categoria = request.getParameter("campoCategoria");
		String temporada = request.getParameter("campoTemporada");
		String talla = request.getParameter("campoTalla");
		String material = request.getParameter("campoMaterial");
		String tipo = request.getParameter("campoTipo");
		String color = request.getParameter("campoColor");
		String marcas = request.getParameter("campoMarcas");

		// parte de validacion de datos
		// ...
		// fin parte de validacion de datos

		Zapatos nuevoZapatos = new Zapatos(categoria, temporada, talla, material, tipo, color, marcas);
		ZapatosDAO zapatosDAO = new ZapatosDAOImpl();
		zapatosDAO.registrarZapatos(nuevoZapatos);
		
		request.getRequestDispatcher("ServletListadoZapatos").forward(request,
				response);
	}

}
