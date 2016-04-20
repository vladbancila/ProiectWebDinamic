package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoImpl;
import service.User;

@WebServlet("/login")
public class ServletLogin extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.sendRedirect("home");
		// daca userul scrie adresa direct in url intra in home automat.
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession sesiune = request.getSession();

		String user = request.getParameter("user");

		String parola = request.getParameter("parola");

		// Putem verifica ce ne vine de la utilizator
		// System.out.println("Inainte de verificare " + user + parola
		// );DAO - verifica user in baza de date
		DaoImpl dao = new DaoImpl();

		User userVerifiat = dao.verificaUserlogin(user, parola);

		// trimitem la verificat userul si pass de la url daca e ok intoarce un obiect user daca nu null

		if (userVerifiat == null) {
			// raspuns fals intoarce un mesaj in pagina de logare
			sesiune.setAttribute("raspunsLogare", "Va rugam introduceti date valide !");

			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/contulMeu.jsp");
			
			sesiune.setAttribute("logare","");//punem atributul logare pe sesiune pentru a identifica de unde vine raspunsul 
			
			response.sendRedirect("cont");// se preda controlul la servlet cont

		} else {

			// Raspuns pozitiv avem user intram in cont

			sesiune.setMaxInactiveInterval(60 * 60 * 24);// crestem perioada sesiunii la 1 zi

			sesiune.setAttribute("mesaj", "true");// schimbam atributul la true avem user

			sesiune.setAttribute("user", userVerifiat);// adaugam userul pe sesiune

			sesiune.setAttribute("virgula", ",");// adaugam virgula de la bun venit meniu

			response.sendRedirect("cont");// predam controlul servletuluiConturi
		}

	}

}
