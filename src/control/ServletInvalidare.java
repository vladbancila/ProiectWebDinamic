package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/invalidare")
public class ServletInvalidare extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// se intra aici de pe post din contul meu atunci cand se actioneaza
		// butonul de delogare
		HttpSession sesiune = request.getSession();

		sesiune.removeAttribute("virgula");//scoatem virgula de la nume "Bine ati venit !"

		sesiune.invalidate();// Sterge obiectul sesiune

		response.sendRedirect("home");// predam controlul servletului home
		
		 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
