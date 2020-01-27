package controleur;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Connec {

	public void conU(String req) throws ClassNotFoundException {
		
		 
		Connection con = null;
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://mysql-jhon.alwaysdata.net:3306/jhon_bdd?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","jhon","webservice2020");
			Statement stmt = con.createStatement();
		    stmt.executeUpdate(req);
		   

		

		} 

		catch ( SQLException e ) {
			/* Gérer les éventuelles erreurs ici */
		} 

	}
	
	public  ResultSet conE(String req) throws ClassNotFoundException, SQLException {

		ResultSet rslt2 = null;
		Connection con = null;
		
		
		   
					Class.forName("com.mysql.cj.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://mysql-jhon.alwaysdata.net:3306/jhon_bdd?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","jhon","webservice2020");
		
			rslt2 = con.createStatement().executeQuery(req);
		
         
	
		
		
		return rslt2;
		 

	}
	
	
	
	
	
	
}
