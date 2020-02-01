package model;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import controleur.Connec;


public class Utilisateur {
	
	public int id;
	public String Nom;
	public String Prenom;
	public String pseudo;
	public String mdp;
//	private ArrayList<Integer> Relations;
	
	private Connec con2 = new Connec();
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
	
	
	

	
	
	public Utilisateur(int id, String nom, String prenom, String pseudo, String mdp) {
		super();
		this.id = id;
		Nom = nom;
		Prenom = prenom;
		this.pseudo = pseudo;
		this.mdp = mdp;
	}


	public Utilisateur() {
		super();
		// TODO Auto-generated constructor stub
	}


	// getters and setters 
	
	public int getId() {
		return id;
	}
	
	public String getPseudo() {
		return pseudo;
	}


	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
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
	
	public String getMdp() {
		return mdp;
	}


	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	
/*	public ArrayList<Integer> getRelations() {
		return Relations;
	}
	public void setRelations(ArrayList<Integer> relations) {
		Relations = relations;
	} */
	
	
	
	///// Méthodes
	
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
			int idbd;
			ResultSet rslt = con2.conE(req2);
			if (rslt.next()) {
				idbd = rslt.getInt("id");
				System.out.println("Voci l'id de l'utilisateur conecté " + idbd);
				this.id=idbd;
				System.out.println("ok vous etes co");
				return true;
			}
			else {
				System.out.println("identifiant incorrect");
				return false;
			
			}
			
	}
	
	
	public boolean liaisonFriends(int idu,int idfriend) throws ClassNotFoundException {
		Connec con4 = new Connec();
		String req = "INSERT INTO Friends (id_friend1,id_friend2) values ('"+idu+"','"+idfriend+"')";
		System.out.println(req);
		try { 
			con4.conU(req);
			System.out.println("ami jouté");
			
		}
		catch(ClassNotFoundException e) {
			System.out.println("echec ajout amis");
			e.printStackTrace();
		}
		 
		 return false;
		
	}
	
	
	public boolean verifriends(int idu,int idFriends) {
		//Fonction qui retourne faux si l'ami à déjà été ajouté
		Connec con2 = new Connec();
		String req2 = "select * from Friends where id_friend1 = '" +idu+ "'and id_friend2='" +idFriends+"'"  ;
		
		try {
			if (con2.conE(req2).next()) {
				System.out.println("Vous avez déjà ajouté cette ami");
				return false;
			}
			else {
				System.out.println("pas encore d'ami à ce nom");
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
	
	
	public boolean addFriend(int idu ,String pseudo) throws ClassNotFoundException, SQLException {
	    Connec con2 = new Connec();

		String req2 = "select * from Users where pseudo = '" +pseudo+"'";
		System.out.println(req2);
		ResultSet rslt =con2.conE(req2) ;
		boolean verif = false;
		if (rslt.next()) {
			System.out.println("ami trouvé");
			int idfriend = rslt.getInt("id");
			verif =verifriends(idu, idfriend);
			System.out.println(idfriend);
			if (verif)
			liaisonFriends(idu, idfriend);
			return true;
		}
		else {
			System.out.println("identifiant incorrect");
			return false;
		
		}
	}
	
	
     public boolean sendmessage ( int idu ,String message , int idfriends) {
    	 Connec con = new Connec();
    	 String req ="INSERT INTO Privatemessages (authorid , receiverid , message ,  date ) values ('"+idu+"', '"+idfriends+"','"+message+"',NULL ) ";
    	 System.out.println(req);
    	 
    	 try {
			con.conU(req);
			System.out.println("Votre message a été envoyé");
			return true;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("echec envoi du message");
			e.printStackTrace();
			
		}
    	 return false;
     }


     public String[] liremessage(int idu ,int idFriends) throws ClassNotFoundException, SQLException {
    	 String [] buff = new String[10] ;
    	 
    	 Connec con2 = new Connec();
    	
    	 String msgtmp; int idtmp;
    	 
    	 int i = 0;
    	 
    	 String req = "select * from Privatemessages where (authorid = '" +idu+ "'and receiverid='" +idFriends+"') or (authorid='"+idFriends+"' and receiverid= '"+idu+"')";
    	 System.out.println(req);
    	 ResultSet rslt =con2.conE(req) ;
    	 while (rslt.next()) {
    		 idtmp = rslt.getInt("authorid");
    		 msgtmp = rslt.getString("message");
    		 buff[i] = new String(msgtmp);
    		 i++;
    	 }
    	 
//    	 for (int j = 0; j < buff.length; j++) {
//			System.out.println(buff[j].contenu);
//		}
		return buff; 
     }
	

	public String [] getFriendList(int idu) throws ClassNotFoundException, SQLException{
   	 	Connec con2 = new Connec();
   	   String [] friend = new String[5];
		String req2 = "select * from Friends join Users on Friends.id_friend2 = Users.id where Friends.id_friend1 = '" +idu+"'";
   	 	System.out.println(req2);
   	 	ResultSet rslt =con2.conE(req2) ;
   	 	int i =0;
	   	 while (rslt.next()) {
			friend[i]=new String(rslt.getString("pseudo"));
			i++;
		 }
	   	 
//	   	 for (int j = 0; j < friend.length; j++) {
//			System.out.println(friend[j]);
//		}
		
		return friend;
		
	}
	
	
	public String [] getGrouplist(int idu) throws SQLException, ClassNotFoundException {
		Connec con2 = new Connec();
		String [] buff = new String[50];
		String req2 = "SELECT * FROM `Groupe` JOIN GroupUserList ON GroupUserList.id_groupe = Groupe.id where id_user=  '" +idu+"'";
   	 	System.out.println(req2);
   	 	ResultSet rslt =con2.conE(req2) ;
   	 	String nom;
   	 	String descri;
   	 	int idgr;
   	 	
   	 int i =0;
   	 while (rslt.next()) {
   		 
   		 idgr = rslt.getInt("id");
   		 nom = rslt.getString("name");
		 descri = rslt.getString("description");
		 buff[i] = nom;
		 i++;
	 }
   	 
//   	 for (int j = 0; j < buff.length; j++) {
//		System.out.println(buff[j]);
//	}
   	 		
		return buff;

	}
	
	public int getIdGroupByName(String name) throws ClassNotFoundException, SQLException {
		
		String req2 = "Select * from `Group` where name = "+name;
		ResultSet rslt = con2.conE(req2) ;
		if(rslt.next()) {
			return rslt.getInt("id");
		}
		return -1;
	}
	
	
	public boolean addAdmin(int idu,String groupname) throws ClassNotFoundException, SQLException {
		Connec con = new Connec();
		String req2 = "insert into GroupUserList (  id_groupe	, id_user  ) values ('"+getIdGroupByName(groupname)+"','"+idu+"')";
		System.out.println(req2);
		con.conU(req2) ;
		return false;
	}
	
	public boolean addgroup(int idu,String groupname,String description) throws SQLException, InterruptedException {
		
		String req2 = "INSERT into `Group`( name , description ) values ('"+groupname+"','"+description+"')";
   	 	System.out.println(req2);
   	 	
			try {
				con2.conU(req2) ;
				addAdmin(idu,groupname);
				System.out.println("ajout du groupe");
				return true;
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				System.out.println("pas d'ajout du groupe");
				e.printStackTrace();
			}
		
		return false;
		
	}
	
	public int idBypseudo(String pseudo) throws ClassNotFoundException, SQLException {
		String req2 = "select * from Users where pseudo = '" +pseudo+ "'";
		System.out.println(req2);
		ResultSet rslt = con2.conE(req2) ;
		if(rslt.next()) {
			return rslt.getInt("id");
		}
		return -1;
	}
	
	public String pseudoById(int id) throws ClassNotFoundException, SQLException {
		String req2 = "select * from Users where id = '" +id+ "'";
		System.out.println(req2);
		String ps="users";
		ResultSet rslt = con2.conE(req2) ;
		if(rslt.next()) {
			ps= rslt.getString("pseudo");
			
			return ps;
				
		}
		return ps;
	}
	
	
	
	public boolean addUserToGroup(int idu,String pseudo,int idgroup) {
		String req2 = "select * from GroupUserList where id_groupe ='"+idgroup+"'and id_user ='"+idu+"' and isAdmin = True" ;
   	 	System.out.println(req2);
   	 try {
		ResultSet rslt =con2.conE(req2) ;
		if(rslt.next()) {
			if(idBypseudo(pseudo)!=-1) {
				System.out.println("coucou");
				req2 = "insert into GroupUserList (  id_groupe	, id_user  ) values ('"+idgroup+"','"+idBypseudo(pseudo)+"')";
		   	 	System.out.println(req2);
				con2.conU(req2);
			}
			 
		}
		return true;
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return false;

	}
}
