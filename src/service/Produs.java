package service;

public class Produs {
	
	int id;
	String nume_prod;
	String pret;
	String pret_redus;
	String descriere;
	String cale_poza;
		
	
	public String getPret() {
		return pret;
	}
	public void setPret(String pret) {
		this.pret = pret;
	}
	public String getPret_redus() {
		return pret_redus;
	}
	public void setPret_redus(String pret_redus) {
		this.pret_redus = pret_redus;
	}
	public String getDescriere() {
		return descriere;
	}
	public void setDescriere(String descriere) {
		this.descriere = descriere;
	}
	public String getCale_poza() {
		return cale_poza;
	}
	public void setCale_poza(String cale_poza) {
		this.cale_poza = cale_poza;
	}
	public Produs(int id,String nume, String pret, String pret_redus, String descriere, String cale_poza) {
		super();
		this.id = id;
		this.nume_prod = nume;
		this.pret = pret;
		this.pret_redus = pret_redus;
		this.descriere = descriere;
		this.cale_poza = cale_poza;
	}
	public String getNume_prod() {
		return nume_prod;
	}
	
	public void setNume_prod(String nume_prod) {
		this.nume_prod = nume_prod;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cale_poza == null) ? 0 : cale_poza.hashCode());
		result = prime * result + ((descriere == null) ? 0 : descriere.hashCode());
		result = prime * result + id;
		result = prime * result + ((nume_prod == null) ? 0 : nume_prod.hashCode());
		result = prime * result + ((pret == null) ? 0 : pret.hashCode());
		result = prime * result + ((pret_redus == null) ? 0 : pret_redus.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof Produs))
			return false;
		Produs other = (Produs) obj;
		if (cale_poza == null) {
			if (other.cale_poza != null)
				return false;
		} else if (!cale_poza.equals(other.cale_poza))
			return false;
		if (descriere == null) {
			if (other.descriere != null)
				return false;
		} else if (!descriere.equals(other.descriere))
			return false;
		if (id != other.id)
			return false;
		if (nume_prod == null) {
			if (other.nume_prod != null)
				return false;
		} else if (!nume_prod.equals(other.nume_prod))
			return false;
		if (pret == null) {
			if (other.pret != null)
				return false;
		} else if (!pret.equals(other.pret))
			return false;
		if (pret_redus == null) {
			if (other.pret_redus != null)
				return false;
		} else if (!pret_redus.equals(other.pret_redus))
			return false;
		return true;
	}
	

}
