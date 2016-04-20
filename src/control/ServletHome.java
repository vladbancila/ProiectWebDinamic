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
import service.User;

@WebServlet("/home")
public class ServletHome extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession sesiune = request.getSession();// punem pe sesiune un array list de produse cos

		ArrayList<Produs> cos = (ArrayList<Produs>)sesiune.getAttribute("cos");
		
		if(cos==null){
			cos = new ArrayList<Produs>();
		}
		sesiune.setAttribute("cos", cos);// punem cosul pe sesiune

		sesiune.setAttribute("dimensiuneCos", cos.size());// numarul de produse din cos

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/home.jsp");

		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		HttpSession sesiune = request.getSession();//luam sesiunea
		
		User user = (User) sesiune.getAttribute("user");//cautam userul de pe sesiune
		
		user.setValoareAbonament(request.getParameter("valoare"));//ajustam valoarea abonamentului
		
		DaoImpl dao = new DaoImpl();
		
		dao.modificaAbonament(user,request.getParameter("valoare"));//urmeaza sa fie implementat modif in b.d. a val abonamentului
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/home.jsp");

		dispatcher.forward(request, response);//ne mutam pe pagina home
	}

}
