package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/cont")
public class ServletContulMeu extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/contulMeu.jsp");

		HttpSession sesiune = request.getSession();

		// punem mesajul gol atunci cand intra in pagina de logare din oricare alta pagina, cu exceptie ServletLogin
		if (sesiune.getAttribute("logare") == null) {
			// Daca NU exista pe sesiune atributul logare inseamna ca vine de pe alt servlet si punem mesajul de eroare la nimic
			sesiune.setAttribute("raspunsLogare", "");

		} else {
			// Daca exista atributul logare inseamna ca vine de la servletLogin lasam mesajul de eroare, stergem atributul "logare"
			sesiune.removeAttribute("logare");

		}

		// Se verifica daca exista user pe sesiune ex:
		// sesiune.setAttribute("user", "user");

		if (sesiune.getAttribute("user") != null) {
			// Avem user pe sesiune si ne logam
			sesiune.setAttribute("mesaj", "true");

			sesiune.setAttribute("raspunsLogare", "");

		} else {
			// trmitem fals si afisam doar login
			sesiune.setAttribute("mesaj", "false");

		}

		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
