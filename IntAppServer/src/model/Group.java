package model;

public class Group {
	int id;
	String nom;
	Utilisateur[] userlist = new Utilisateur[50];
	
	
	public Group(int id, String nom, Utilisateur[] userlist) {
		super();
		this.id = id;
		this.nom = nom;
		this.userlist = userlist;
	}
	
}
