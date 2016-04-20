package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoImpl;
import service.Produs;

@WebServlet("/remove")
public class ServletRemove extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.sendRedirect("adaugaInCos");
		//daca incearca sa acceseze direct acest servlet vom redirectiona catre servlet adauga in cos pe get
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
HttpSession sesiune = request.getSession();
		
		ArrayList<Produs> cos = (ArrayList<Produs>)sesiune.getAttribute("cos");// cos de cumparaturi
		
		int id = Integer.parseInt(request.getParameter("id"));//id - ul produsului de scos din lista 
		
				
		DaoImpl dao = new DaoImpl();		
		
		Produs produs = dao.intoarceProdus(id);// intoarcem produsul dupa id
		
		cos.remove(produs);//stergem produsul din lista cos
		
		sesiune.setAttribute("dimensiuneCos", cos.size());//actualizam dimensiunea noua a cosului
		
		response.sendRedirect("adaugaInCos");//redirectionam catre servlet adauga in cos
	}

}
