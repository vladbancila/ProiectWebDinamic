package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoImpl;
import service.Produs;


@WebServlet("/accesorii")
public class ServletAccesorii extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DaoImpl dao = new DaoImpl();
		
		ArrayList<Produs> accesorii = dao.getToateAccesorile();

		request.setAttribute("accesorii", accesorii);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/accesorii.jsp");
		
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
