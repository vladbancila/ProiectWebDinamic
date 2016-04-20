package service;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class PrelucrareDate {

	// Aceasta metoda prelucreaza numele astfel incat sa corespunda unui standard in baza de date
	public static String prelucreazaNume(String nume) {

		String prelucrat = nume.toLowerCase();

		prelucrat = prelucrat.replace(prelucrat.charAt(0), prelucrat.toUpperCase().charAt(0));

		return prelucrat;

	}

	// Aceasta metoda realizeaza trimiterea de email catre un nou user
	public static void trimiteEmail(String nume, String prenume, String user, String parola, String email, String url) {
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("vlad.site.test@gmail.com", "popestileordeni");
			}
		});

		try {

			Message message = new MimeMessage(session);
			// message.setFrom(new InternetAddress("from@no-spam.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			message.setSubject("Acesta este un mesaj generat automat pentru confirmare");
			message.setText("Buna ziua " + nume + " " + prenume + ",\n Detalii logare:\nUser: " + user + "\nParola: " + parola
					+ "\nVa rugam sa accesati linkul de mai jos pentru activarea contului !\n" + url);

			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}

	}

}
