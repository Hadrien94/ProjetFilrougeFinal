package colntroller;

import java.io.IOException;

import dao.ActiviteDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Activite;
import model.Personne;


@WebServlet("/modifierActivite")
public class EditActiviteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ActiviteDao activiteDao = new ActiviteDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
        Activite activite = activiteDao.findById(num);
        request.setAttribute("activite", activite);
        request.getRequestDispatcher("/WEB-INF/editActivite.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		String nom = request.getParameter("nom");
		String type = request.getParameter("type");
		String lieu = request.getParameter("lieu");
		String date = request.getParameter("date");
		String heure = request.getParameter("heure");
		Activite activite = new Activite (num, nom, type, lieu, date, heure);
		activiteDao.update(activite);
		response.sendRedirect("activite");
	}

}
