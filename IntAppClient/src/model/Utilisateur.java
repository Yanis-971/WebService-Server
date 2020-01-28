/**
 * Utilisateur.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package model;

public interface Utilisateur extends java.rmi.Remote {
    public void setId(int id) throws java.rmi.RemoteException;
    public java.lang.String getPseudo() throws java.rmi.RemoteException;
    public void setPseudo(java.lang.String pseudo) throws java.rmi.RemoteException;
    public java.lang.String getNom() throws java.rmi.RemoteException;
    public java.lang.String getPrenom() throws java.rmi.RemoteException;
    public void setNom(java.lang.String nom) throws java.rmi.RemoteException;
    public void setPrenom(java.lang.String prenom) throws java.rmi.RemoteException;
    public java.lang.String getMdp() throws java.rmi.RemoteException;
    public void setMdp(java.lang.String mdp) throws java.rmi.RemoteException;
    public boolean addUtilisateurs(java.lang.String mdp, java.lang.String nom, java.lang.String prenom, java.lang.String pseudo) throws java.rmi.RemoteException;
    public void voirUser() throws java.rmi.RemoteException;
    public boolean liaisonFriends(int idfriend) throws java.rmi.RemoteException;
    public boolean connecUsers(java.lang.String pseudo, java.lang.String mdp) throws java.rmi.RemoteException;
    public boolean verifriends(int idFriends) throws java.rmi.RemoteException;
    public boolean addFriend(java.lang.String pseudo) throws java.rmi.RemoteException;
    public model.Message[] liremessage(int idFriends) throws java.rmi.RemoteException;
    public model.Friend[] getFriendList() throws java.rmi.RemoteException;
    public boolean sendmessage(java.lang.String message, int idfriends) throws java.rmi.RemoteException;
    public int getId() throws java.rmi.RemoteException;
}
