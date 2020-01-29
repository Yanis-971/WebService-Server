/**
 * Friend.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package model;

public interface Friend extends java.rmi.Remote {
    public void setId(int id) throws java.rmi.RemoteException;
    public void setPrenom(java.lang.String prenom) throws java.rmi.RemoteException;
    public void setNom(java.lang.String nom) throws java.rmi.RemoteException;
    public java.lang.String getNom() throws java.rmi.RemoteException;
    public java.lang.String getPrenom() throws java.rmi.RemoteException;
    public java.lang.String getPseudo() throws java.rmi.RemoteException;
    public void setPseudo(java.lang.String pseudo) throws java.rmi.RemoteException;
    public int getId() throws java.rmi.RemoteException;
}
