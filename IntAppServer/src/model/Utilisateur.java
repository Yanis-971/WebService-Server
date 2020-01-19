package model;

import java.util.List;

public class Utilisateur {
	
	private int id;
	private String Nom;
	private String Prenom;
	private String Mail;
	private List<Integer> Relations;
	
	
	public List<Friend> getfriendList() {
		// fonction qui retourne la liste des amis de l'utilisateur 
		
		return null;
	}
	
	public boolean addFriends(int idfriend) {
		
		return false;
	}
	
	
	
	
	
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
	public List<Integer> getRelations() {
		return Relations;
	}
	public void setRelations(List<Integer> relations) {
		Relations = relations;
	}
	
	
	

}
