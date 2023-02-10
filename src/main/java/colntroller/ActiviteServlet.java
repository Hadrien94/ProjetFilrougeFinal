package colntroller;

import java.io.IOException;

import dao.ActiviteDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Activite;

@WebServlet("/activite")
public class ActiviteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ActiviteDao activiteDao = new ActiviteDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("activites", activiteDao.findAll());
		// request.setAttribute("activite", activiteDao.findById(1));
		request.getRequestDispatcher("/WEB-INF/activite.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nom = request.getParameter("nom");
		String type = request.getParameter("type");
		String lieu = request.getParameter("lieu");
		String date = request.getParameter("date");
		String heure = request.getParameter("heure");

		Activite activite = new Activite(nom, type, lieu, date, heure);
		activiteDao.save(activite);
		response.sendRedirect("activite");
	}

}
