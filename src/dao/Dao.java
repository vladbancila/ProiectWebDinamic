package dao;

import service.User;

public interface Dao {
	public User verificaUserlogin(String user, String parola);	
	
	public void creazaConexiuneaLaDB();
	
	public void inchideResursele();
}


