package control;

import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.ThreadLocalRandom;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoImpl;
import service.PrelucrareDate;

@WebServlet("/sign-up")
public class ServletSignUp extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/signUp.jsp");

		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Aici sosesc informatiile din sign_up.jsp cu toate campurile aferente fiecaruia
		// Trebuie verificat daca sunt completate != null
		String nume = request.getParameter("nume");
		String prenume = request.getParameter("prenume");
		String email = request.getParameter("email");
		String user = request.getParameter("user");
		String parola = request.getParameter("parola");

		// o variabila locala ce contine un mesaj default
		String mesaj = "Verificati corectitudinea informatiilor introduse !";

		// Mesaj de succes
		String mesajSucces = "";

		if (nume != "" && prenume != "" && email != "" && user != "" && parola != "") {
			// Daca toate campurile contin informatii se intra aici si se
			// verifica continutul lor, daca totul este ok se va creea noul
			// utilizator, dupa confirmarea email-ului introdus

			// Verificare dupa conditii regex
			String regexNume = "[A-Za-z][A-Za-z]+";// se permit orice tip de litere mici si mari minim doua

			String regexEmail = "^[_A-Za-z0-9-+]+(\\.[_A-Za-z0-9-]+)*@" + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

			String regexUser = "[A-Za-z0-9-.!~]{6,}";// se permit litere, cifre, "-",".","!" si"~" ,USERUL trebuie sa contina minim 6 caractere !

			String regexParola = "[A-Za-z0-9-.!~?/]{6,}";// se permit litere, cifre,"/","-","?",".","!" si "~" Parola trebuie sa contina minim 6 caractere !

			if (nume.matches(regexNume) && prenume.matches(regexNume) && email.matches(regexEmail) && user.matches(regexUser) && parola.matches(regexParola)) {
				// S-au trecut de toate verificarile regex acum putem verifica
				// in continuare in Baza de Date alte informatii
				System.out.println("S-au indeplinit conditiile regex");

				// 1. Prelucram datele introduse pentru lucru cu bazele de date(Numele si Prenumele)
				nume = PrelucrareDate.prelucreazaNume(nume);
				prenume = PrelucrareDate.prelucreazaNume(prenume);

				// 2.Verificam daca in Baza de date exista un user identic

				DaoImpl dao = new DaoImpl();

				if (dao.verificaExistentaUser(user)) {
					// user duplicat intoarcem raspuns
					mesaj = "Userul este existent, va rugam introduceti alt user !";
					user = "Va rugam sa introduceti un user valid !";
				} else if (dao.verificaExistentaEmail(email)) {
					// email existent in baza de date
					mesaj = "Pentru adresa de e-mail introdusa exista deja un cont in magazin !";
					email = "Va rugam sa introduceti un e-mail diferit !";
				}
				// 3. Daca nu exista in baza de date informatiile introduse vom trimite un email la noul utilizator pentru confirmare
				else if (!dao.verificaExistentaUser(user) && !dao.verificaExistentaEmail(email)) {

					mesajSucces = "Inscriere cu succes, verificati emailul primit !";

					mesaj = "";// punem mesajul de avertizare la gol

					// Stocam datele pe sesiune intr-un hashmap cu atributele din campuri pe un id generat aleator
					HashMap<String, String> listaInformatii = new HashMap<String, String>();
					listaInformatii.put("nume", nume);
					listaInformatii.put("prenume", prenume);
					listaInformatii.put("email", email);
					listaInformatii.put("user", user);
					listaInformatii.put("parola", parola);

					boolean vId = true;
					String id = "";// id-ul care va fi asociat acestui utilizator

					HttpSession sesiune = request.getSession();
					sesiune.setMaxInactiveInterval(60 * 60 * 24 * 3);// trei zile de existenta

					while (vId) {
						// generam random un id(0-9999) si verificam sa fie unic id-ul pe sesiune
						// pot exista simultan maxim 100 000 000 de cereri pe sesiune de sign up

						id = "" + ThreadLocalRandom.current().nextInt(0, 99999999);

						if (sesiune.getAttribute(id) == null) {
							vId = false;
							sesiune.setAttribute(id, listaInformatii);
						}
					}

					String url = "Generam un url automat...va rugam sa dati click pe linkul de mai jos pentru confirmarea e-mail-ului:\n http://localhost:8080/2016-03-20ProiectFinalWeb/activareCont?id="
							+ id;
					System.out.println(listaInformatii.get("prenume"));
					PrelucrareDate.trimiteEmail(nume, prenume, user, parola,email, url);
					// s-a trimis e-mail cu informatii

				}

			} else {
				// Nu s-a trecut de verificare inseamna ca avem parametrii
				// gresit introdusi verificam care camp este gresit ! Dam raspuns userului!

				System.out.println("Nu s-au indeplinit conditiile regex");
				if (!nume.matches(regexNume)) {
					nume = "Va rugam sa introduceti un nume valid !";
				}
				if (!prenume.matches(regexNume)) {
					prenume = "Va rugam sa introduceti un prenume valid !";
				}
				if (!email.matches(regexEmail)) {
					email = "Va rugam sa introduceti un e-mail valid !";
				}
				if (!user.matches(regexUser)) {
					user = "Va rugam sa introduceti un user valid !";
				}
				if (!parola.matches(regexParola)) {
					parola = "";
				}

				mesaj = "Verificati corectitudinea informatiilor introduse !";

			}

		} else {
			// Aici se va ajunge daca exista campuri necompletate , iar cele
			// completate se vor intoarce cu informatia trimisa!

			mesaj = "Va rugam sa completati toate campurile !";

		}

		// La final se va verifica fiecare string prelucrat si se va da un raspuns utilizatorului in functie de caz

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/signUp.jsp");

		request.setAttribute("mesajInvalidare", mesaj);

		request.setAttribute("mesajSucces", mesajSucces);

		request.setAttribute("numeIntrodus", nume);

		request.setAttribute("prenumeIntrodus", prenume);

		request.setAttribute("emailIntrodus", email);

		request.setAttribute("userIntrodus", user);

		request.setAttribute("parolaIntrodus", parola);

		dispatcher.forward(request, response);

	}

}
