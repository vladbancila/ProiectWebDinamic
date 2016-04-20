package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import service.Produs;
import service.User;

public class DaoImpl implements Dao {

	private static Connection conexiune;
	private static Statement statement;
	private static PreparedStatement preparedStatement;
	private static ResultSet resultSet;

	public void creazaConexiuneaLaDB() {
		try {
			Class driver = Class.forName("com.mysql.jdbc.Driver");

			conexiune = DriverManager.getConnection("jdbc:mysql://127.0.0.1/14userisiproduseaplicatiefinala", "root", "");

			System.out.println("S-a conectat!");
			
			// Process p = Runtime.getRuntime.exec("poza.jpg");
			

		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("Nu s-a conectat");
			e.printStackTrace();
		}

	}

	public boolean verificaExistentaEmail(String email) {
		creazaConexiuneaLaDB();

		try {

			String query = "SELECT email FROM utilizatori WHERE email = ?;";
			preparedStatement = conexiune.prepareStatement(query);
			preparedStatement.setString(1, email);
			resultSet = preparedStatement.executeQuery();
			String rezultat = "";
			while (resultSet.next()) {
				rezultat = resultSet.getString("email");
			}
			if (email.equals(rezultat)) {
				return true;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		inchideResursele();
		return false;
	}

	public boolean verificaExistentaUser(String user) {
		creazaConexiuneaLaDB();

		try {

			String query = "SELECT utilizator FROM utilizatori WHERE utilizator = ?;";
			preparedStatement = conexiune.prepareStatement(query);
			preparedStatement.setString(1, user);
			resultSet = preparedStatement.executeQuery();
			String rezultat = "";
			while (resultSet.next()) {
				rezultat = resultSet.getString("utilizator");
			}
			if (user.equals(rezultat)) {
				return true;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		inchideResursele();
		return false;

	}

	@Override
	public User verificaUserlogin(String user, String parola) {
		creazaConexiuneaLaDB();

		try {
			String query = "SELECT nume_client, valoare_abonament FROM utilizatori WHERE utilizator = ? AND parola = ?;";
			preparedStatement = conexiune.prepareStatement(query);
			preparedStatement.setString(1, user);
			preparedStatement.setString(2, parola);
			resultSet = preparedStatement.executeQuery();
			User userBaza = null;
			while (resultSet.next()) {
				String nume = resultSet.getString("nume_client");
				String abonament = resultSet.getString("valoare_abonament");
				userBaza = new User(nume, abonament);
			}
			return userBaza;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		inchideResursele();
		return null;
	}

	public void insereazaUserNou(String nume, String prenume, String email, String user, String parola) {
		creazaConexiuneaLaDB();

		try {
			String query = "INSERT INTO utilizatori(utilizator,parola,nume_client,valoare_abonament,email) VALUES(?,?,?,?,?);";
			preparedStatement = conexiune.prepareStatement(query);

			preparedStatement.setString(1, user);
			preparedStatement.setString(2, parola);
			preparedStatement.setString(3, nume + " " + prenume);
			preparedStatement.setInt(4, 0);
			preparedStatement.setString(5, email);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			inchideResursele();
		}

	}

	 public void modificaAbonament(User user, String parameter) {
		creazaConexiuneaLaDB();
		try {
			String sql = "UPDATE utilizatori SET valoare_abonament = ? WHERE nume_client = ?;";

			preparedStatement = conexiune.prepareStatement(sql);//uitam sa adaug aceasta linie eroare la rulare
			int param = Integer.parseInt(parameter);
			preparedStatement.setInt(1, param);
			preparedStatement.setString(2, user.getNume());
			preparedStatement.executeUpdate();

		} catch (SQLException ex) {
			System.out.println("Nu s-a creeat obiectul Statement sau nu s-a putut executa query-ul.");
			// ex.printStackTrace();

		} catch (NullPointerException ex2) {
			System.out.println("Nu s-a creat conexiunea la baza de date.");

		} finally {
			// inchidem conexiunile.
			inchideResursele();
		}

	}

	public void inchideResursele() {
		System.out.println("S-a inchis ");
		if (conexiune != null) {
			try {
				conexiune.close();
			} catch (SQLException e) {
				System.out.println("Am incercat sa inchid conexiunea nu a mers");
				e.printStackTrace();
			}
		}
		if (statement != null) {
			try {
				statement.close();
			} catch (SQLException e) {
				System.out.println("Am incercat sa inchid statemnt nu a mers");
				e.printStackTrace();
			}
		}
		if (preparedStatement != null) {
			try {
				preparedStatement.close();
			} catch (SQLException e) {
				System.out.println("Am incercat sa inchid peperatedStatement nu a mers");
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (resultSet != null) {
			try {
				resultSet.close();
			} catch (SQLException e) {
				System.out.println("Am incercat sa inchid ResultSet");
			}
		}

	}

	public ArrayList<Produs> getToateArticole() {
		creazaConexiuneaLaDB();

		ArrayList<Produs> telefoane = null;

		try {
			String query = "SELECT id,nume_produs,pret,pret_redus,scurta_descriere,cale_poza FROM telefoane;";

			preparedStatement = conexiune.prepareStatement(query);

			resultSet = preparedStatement.executeQuery();

			telefoane = new ArrayList<Produs>();

			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String nume = resultSet.getString("nume_produs");
				String pret = resultSet.getInt("pret") + "";
				String pret_redus = resultSet.getInt("pret_redus") + "";
				String descriere = resultSet.getString("scurta_descriere");
				String cale_poza = resultSet.getString("cale_poza");
				telefoane.add(new Produs(id, nume, pret, pret_redus, descriere, cale_poza));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			inchideResursele();
		}

		return telefoane;

	}

	public Produs intoarceAccesoriu(int id){
		creazaConexiuneaLaDB();
		Produs produs = null;
		try {
			String query = "SELECT id,nume_produs,pret,pret_redus,scurta_descriere,cale_poza FROM accesorii WHERE id=?;";

			preparedStatement = conexiune.prepareStatement(query);
			preparedStatement.setInt(1, id);
			resultSet = preparedStatement.executeQuery();
			
			while (resultSet.next()) {
				int idReturnat = resultSet.getInt("id");
				String nume = resultSet.getString("nume_produs");
				String pret = resultSet.getInt("pret") + "";
				String pret_redus = resultSet.getInt("pret_redus") + "";
				String descriere = resultSet.getString("scurta_descriere");
				String cale_poza = resultSet.getString("cale_poza");
				produs = new Produs(idReturnat, nume, pret, pret_redus, descriere, cale_poza);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			inchideResursele();
		}

		return produs;
		
		
	}
	public Produs intoarceProdus(int id) {
		creazaConexiuneaLaDB();
		Produs produs = null;
		try {
			String query = "SELECT id,nume_produs,pret,pret_redus,scurta_descriere,cale_poza FROM telefoane WHERE id=?;";

			preparedStatement = conexiune.prepareStatement(query);
			preparedStatement.setInt(1, id);
			resultSet = preparedStatement.executeQuery();
			
			while (resultSet.next()) {
				int idReturnat = resultSet.getInt("id");
				String nume = resultSet.getString("nume_produs");
				String pret = resultSet.getInt("pret") + "";
				String pret_redus = resultSet.getInt("pret_redus") + "";
				String descriere = resultSet.getString("scurta_descriere");
				String cale_poza = resultSet.getString("cale_poza");
				produs = new Produs(idReturnat, nume, pret, pret_redus, descriere, cale_poza);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			inchideResursele();
		}

		return produs;
	}

	public ArrayList<Produs> getToateAccesorile() {
		creazaConexiuneaLaDB();

		ArrayList<Produs> accesorii = null;

		try {
			String query = "SELECT id,nume_produs,pret,pret_redus,scurta_descriere,cale_poza FROM accesorii;";

			preparedStatement = conexiune.prepareStatement(query);

			resultSet = preparedStatement.executeQuery();

			accesorii = new ArrayList<Produs>();

			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String nume = resultSet.getString("nume_produs");
				String pret = resultSet.getInt("pret") + "";
				String pret_redus = resultSet.getInt("pret_redus") + "";
				String descriere = resultSet.getString("scurta_descriere");
				String cale_poza = resultSet.getString("cale_poza");
				accesorii.add(new Produs(id, nume, pret, pret_redus, descriere, cale_poza));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			inchideResursele();
		}

		return accesorii;
	}

}
