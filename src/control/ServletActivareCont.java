package control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoImpl;

@WebServlet("/activareCont")
public class ServletActivareCont extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Primim requestul de confirmare login.

		HttpSession sesiune = request.getSession();

		String id = request.getParameter("id");

		// Verificam ca id-ul nu este null, adica parametrul exista pe request si daca  atributul id este pe sesiune
		if (id != null && sesiune.getAttribute(id) != null) {

			HashMap<String, String> listaInformatii = (HashMap<String, String>) sesiune.getAttribute(id);

			DaoImpl dao = new DaoImpl();

			// Trimitem la baza de date informatiile nume, prenume, email, user, parola
			dao.insereazaUserNou(listaInformatii.get("nume"), listaInformatii.get("prenume"), listaInformatii.get("email"), listaInformatii.get("user"),
					listaInformatii.get("parola"));

			// stergem atributul id de pe sesiune

			sesiune.removeAttribute(id);

			// System.out.println(sesiune.getAttribute(id));

			sesiune.setAttribute("mesajSuccesSignUp", "Activarea contului s-a realizat cu succes !");

			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/activare.jsp");

			dispatcher.forward(request, response);
			
		} else {
			
			response.sendRedirect("home");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
