package prueba2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "persona.htm", urlPatterns = { "/persona.htm" })
public class PersonaServlet extends HttpServlet {

	private static final long serialVersionUID = 8536198144936777026L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		String codigoPersona = request.getParameter("codigoPersona");
		
		List<Curso> listaCursos = listarCursos(codigoPersona);

		request.setAttribute("listaCursos", listaCursos);
		request.getRequestDispatcher("cursos.jsp").forward(request, response);
		//response.sendRedirect("cursos.jsp"); Se pierde el request.attribute, solo sirve session

	}
	
	private List<Curso> listarCursos(String codigoPersona){
		List<Curso> listaCursos = new ArrayList<Curso>();
		Curso curso;
		
		curso= new Curso();
		curso.setCodigo("C001");
		curso.setDescripcion("LITERATURA");
		listaCursos.add(curso);
		
		curso= new Curso();
		curso.setCodigo("C002");
		curso.setDescripcion("CIENCIAS");
		listaCursos.add(curso);
		
		return listaCursos;
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
