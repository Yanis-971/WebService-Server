package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import controleur.Connec;

public class Utilisateur {
	
	private int id;
	private String Nom;
	private String Prenom;
	private String Mail;
//	private ArrayList<Integer> Relations;
	
	
	/*
	 * public List<Friend> getfriendList() { // fonction qui retourne la liste des
	 * amis de l'utilisateur
	 * 
	 * return null; }
	 * 
	 * public boolean addFriends(int idfriend) {
	 * 
	 * return false; }
	 */
		
	
	
	// getters and setters 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return Nom;
	}
	public void setNom(String nom) {
		Nom = nom;
	}
	public String getPrenom() {
		return Prenom;
	}
	public void setPrenom(String prenom) {
		Prenom = prenom;
	}
	public String getMail() {
		return Mail;
	}
	public void setMail(String mail) {
		Mail = mail;
	}
	
	
/*	public ArrayList<Integer> getRelations() {
		return Relations;
	}
	public void setRelations(ArrayList<Integer> relations) {
		Relations = relations;
	} */
	
	
	public void voirUser() throws ClassNotFoundException, SQLException {
		Connec con = new Connec ();
		String req = "select * from Users";
		ResultSet rslt =con.conE(req) ;
		if (rslt.next()) {
			System.out.println("ok id doit etre la ");
			id=rslt.getInt("id");
			Nom=rslt.getString("nom");
			System.out.println(rslt.getInt("id"));
		System.out.println(Nom);
		
		}
			
	}
	
	public boolean addUtilisateurs (String mdp , String nom , String prenom , String pseudo  ) {
		
		Connec con = new Connec();
		String req1 = "INSERT INTO Users ( mdp, nom , prenom , pseudo ) values ('"+mdp+"','"+nom+"','"+prenom+"','"+pseudo+"')";
		System.out.println(req1);
		
		
			try {
				con.conU(req1);
				System.out.println("Utilisateur ajouté");
				return true;
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
        return false;
		
		
	}
	
	public boolean connecUsers(String pseudo,String mdp) throws ClassNotFoundException, SQLException {
	       Connec con2 = new Connec();
	       
	        //select * from JOUEURS where pseudo = '' and mdp ='';
			String req2 = "select * from Users where pseudo = '" +pseudo+ "'and mdp='"+mdp+"'"  ;
			System.out.println(req2);
			
			if (con2.conE(req2).next()) {
				
				System.out.println("ok vous etes co");
				return true;
			}
			else {
				System.out.println("identifiant incorrect");
				return false;
			
			}
			
	}
	
	
	
	

}
