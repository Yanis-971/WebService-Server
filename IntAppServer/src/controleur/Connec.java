package controleur;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Connec {

	public void conU(String req) throws ClassNotFoundException {
		//BD RITCHIE
//		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//		String urlBD = "jdbc:sqlserver://localhost;databaseName=wigaming_dataLayer_V2;integratedSecurity=true";
		 
		Connection con = null;
		try {
			// bd fredo
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://mysql-jhon.alwaysdata.net:3306/jhon_bdd?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","jhon","webservice2020");
					 //("jdbc:mysql://phpmyadmin.alwaysdata.com:3306","jhon","webservice2020");
			 //("jdbc:mysql://mysql-cwi.alwaysdata.net:3306/cwi_appli?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","cwi_admin","admincwi");
			//con = DriverManager.getConnection(urlBD); https://phpmyadmin.alwaysdata.com Port : 3306
			Statement stmt = con.createStatement();
		    stmt.executeUpdate(req);
		   

			/* Ici, nous placerons nos requêtes vers la BDD */
			/* ... */

		} 

		catch ( SQLException e ) {
			/* Gérer les éventuelles erreurs ici */
		} 

	}
	
	public  ResultSet conE(String req) throws ClassNotFoundException, SQLException {
//		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//		String urlBD = "jdbc:sqlserver://localhost;databaseName=wigaming_dataLayer_V2;integratedSecurity=true";
		ResultSet rslt2 = null;
		Connection con = null;
		
		String user = "jhon";
		   
					Class.forName("com.mysql.cj.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://mysql-jhon.alwaysdata.net:3306/jhon_bdd?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","jhon","webservice2020");
			//con = DriverManager.getConnection(urlBD);
			rslt2 = con.createStatement().executeQuery(req);
			/* Ici, nous placerons nos requêtes vers la BDD */
			/* ... */
		 
         
	
		
		
		return rslt2;
		 

	}
	
	
	
	
	
	
}
