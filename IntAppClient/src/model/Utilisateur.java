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
    public void setNom(java.lang.String nom) throws java.rmi.RemoteException;
    public void voirUser() throws java.rmi.RemoteException;
    public java.lang.String getMdp() throws java.rmi.RemoteException;
    public void setPrenom(java.lang.String prenom) throws java.rmi.RemoteException;
    public java.lang.String getPrenom() throws java.rmi.RemoteException;
    public boolean connecUsers(java.lang.String pseudo, java.lang.String mdp) throws java.rmi.RemoteException;
    public void setMdp(java.lang.String mdp) throws java.rmi.RemoteException;
    public boolean liaisonFriends(int idu, int idfriend) throws java.rmi.RemoteException;
    public boolean addUtilisateurs(java.lang.String mdp, java.lang.String nom, java.lang.String prenom, java.lang.String pseudo) throws java.rmi.RemoteException;
    public boolean verifriends(int idu, int idFriends) throws java.rmi.RemoteException;
    public java.lang.String[] liremessage(int idu, int idFriends) throws java.rmi.RemoteException;
    public boolean addFriend(int idu, java.lang.String pseudo) throws java.rmi.RemoteException;
    public boolean sendmessage(int idu, java.lang.String message, int idfriends) throws java.rmi.RemoteException;
    public int getIdGroupByName(java.lang.String name) throws java.rmi.RemoteException;
    public boolean addAdmin(int idu, java.lang.String groupname) throws java.rmi.RemoteException;
    public boolean addgroup(int idu, java.lang.String groupname, java.lang.String description) throws java.rmi.RemoteException;
    public int idBypseudo(java.lang.String pseudo) throws java.rmi.RemoteException;
    public java.lang.String pseudoById(int id) throws java.rmi.RemoteException;
    public java.lang.String[] getFriendList(int idu) throws java.rmi.RemoteException;
    public boolean addUserToGroup(int idu, java.lang.String pseudo, int idgroup) throws java.rmi.RemoteException;
    public int getId() throws java.rmi.RemoteException;
}
