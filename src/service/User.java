package service;

public class User {
	String nume;
	String valoareAbonament;

	public String getNume() {
		return nume;
	}

	public void setNume(String nume) {
		this.nume = nume;
	}

	public String getValoareAbonament() {
		return valoareAbonament;
	}

	public void setValoareAbonament(String valoareAbonament) {
		this.valoareAbonament = valoareAbonament;
	}

	@Override
	public String toString() {
		return "User [nume=" + nume + ", valoareAbonament=" + valoareAbonament + "]";
	}

	public User(String nume, String valoareAbonament) {
		super();
		this.nume = nume;
		this.valoareAbonament = valoareAbonament;
	}

}
