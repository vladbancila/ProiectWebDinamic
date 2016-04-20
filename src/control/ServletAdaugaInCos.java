package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoImpl;
import service.Produs;


@WebServlet("/adaugaInCos")
public class ServletAdaugaInCos extends HttpServlet {
	
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//daca se tasteaza direct acest servlet sa va redirectiona automat catre pagina contulDvs.jsp
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/cosulDvs.jsp"); 

		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sesiune = request.getSession();//sesiunea
		
		ArrayList<Produs> cos = (ArrayList<Produs>)sesiune.getAttribute("cos");//luam produsele din cos
		
		if(cos==null){
			cos = new ArrayList<Produs>();
		}//daca nu avem lista adaugam lista pe cos
		
		//System.out.println("idul este : "+request.getParameter("id"));
		
		DaoImpl dao = new DaoImpl();//dao
		
		int i = Integer.parseInt(request.getParameter("id"));//parsam id-ul produsului
		
		cos.add(dao.intoarceProdus(i));//adaugam produs dupa id
		
		//sesiune.setAttribute("cos", cos);
		
		sesiune.setAttribute("dimensiuneCos", cos.size());//actualizam dimensiunea cosului in meniu
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/cosulDvs.jsp");

		dispatcher.forward(request, response);//redirectiona, catre contul dvs jsp
		
	}

}
