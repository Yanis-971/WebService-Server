package model;



public class Message {
	int id;
	String contenu;
	String date;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContenu() {
		return contenu;
	}
	public void setContenu(String contenu) {
		this.contenu = contenu;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
	public Message() {
		super();
	}
	public Message(int id, String contenu, String date) {
		super();
		this.id = id;
		this.contenu = contenu;
		this.date = date;
	}
	
	public Message(int id, String contenu) {
		super();
		this.id = id;
		this.contenu = contenu;
	}
	

}
