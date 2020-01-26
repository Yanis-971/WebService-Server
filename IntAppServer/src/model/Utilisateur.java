package model;

import javax.jws.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import controleur.Connec;


public class Utilisateur {
	
	private int id=1;
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
				System.out.println("Utilisateur ajout�");
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
			int idbd;
			ResultSet rslt = con2.conE(req2);
			if (rslt.next()) {
				idbd = rslt.getInt("id");
				System.out.println("Voci l'id de l'utilisateur conect� " + idbd);
				this.id=idbd;
				System.out.println("ok vous etes co");
				return true;
			}
			else {
				System.out.println("identifiant incorrect");
				return false;
			
			}
			
	}
	
	
	public boolean liaisonFriends(int idfriend) throws ClassNotFoundException {
		Connec con4 = new Connec();
		String req = "INSERT INTO Friends (id_friend1,id_friend2) values ('"+this.id+"','"+idfriend+"')";
		System.out.println(req);
		try { 
			con4.conU(req);
			System.out.println("ami jout�");
			return true;
		}
		catch(ClassNotFoundException e) {
			System.out.println("echec ajout amis");
			e.printStackTrace();
		}
		 
		 return false;
		
	}
	
	
	public boolean verifriends(int idFriends) {
		//Fonction qui retourne faux si l'ami � d�j� �t� ajout�
		Connec con2 = new Connec();
		String req2 = "select * from Friends where id_friend1 = '" +this.id+ "'and id_friend2='" +idFriends+"'"  ;
		
		try {
			if (con2.conE(req2).next()) {
				System.out.println("Vous avez d�j� ajout� cette ami");
				return false;
			}
			else {
				System.out.println("pas encore d'ami � ce nom");
				return true;
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	
	public boolean addFriend(String pseudo) throws ClassNotFoundException, SQLException {
	    Connec con2 = new Connec();

		String req2 = "select * from Users where pseudo = '" +pseudo+"'";
		System.out.println(req2);
		ResultSet rslt =con2.conE(req2) ;
		boolean verif = false;
		if (rslt.next()) {
			System.out.println("ami trouv�");
			int idfriend = rslt.getInt("id");
			verif =verifriends(idfriend);
			System.out.println(idfriend);
			if (verif)
			liaisonFriends(idfriend);
			return true;
		}
		else {
			System.out.println("identifiant incorrect");
			return false;
		
		}
	}
	
	
     public boolean sendmessage (String message , int idfriends) {
    	 Connec con = new Connec();
    	 String req ="INSERT INTO Privatemessages (authorid , receiverid , message ,  date ) values ('"+this.id+"', '"+idfriends+"','"+message+"',NULL ) ";
    	 System.out.println(req);
    	 
    	 try {
			con.conU(req);
			System.out.println("Votre message a �t� envoy�");
			return true;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("echec envoi du message");
			e.printStackTrace();
			
		}
    	 return false;
     }


//     public ArrayList<Message> liremessage(int idFriends) throws ClassNotFoundException, SQLException {
//    	 Connec con2 = new Connec();
//    	 ArrayList<Message> lmessage= new ArrayList<Message>();
//    	 String msgtmp; int idtmp;
//    	 int i=1;
//    	 String req = "select * from Privatemessages where (authorid = '" +this.id+ "'and receiverid='" +idFriends+"') or (authorid='"+idFriends+"' and receiverid= '"+this.id+"')";
//    	 System.out.println(req);
//    	 ResultSet rslt =con2.conE(req) ;
//    	 if (rslt.next()) {
//    		 idtmp = rslt.getInt("authorid");
//    		 msgtmp = rslt.getString("message");
//    		 
//    		 Message m = new Message (idtmp,msgtmp);
//    		 
//    		 lmessage.add(m);
//    		
//    	 }
//    	 
// 
//		return lmessage;
//    	 
//     }
//	

	
	

}
