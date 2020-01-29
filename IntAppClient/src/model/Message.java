/**
 * Message.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package model;

public interface Message extends java.rmi.Remote {
    public int getId() throws java.rmi.RemoteException;
    public void setDate(java.lang.String date) throws java.rmi.RemoteException;
    public java.lang.String getDate() throws java.rmi.RemoteException;
    public void setId(int id) throws java.rmi.RemoteException;
    public java.lang.String getContenu() throws java.rmi.RemoteException;
    public void setContenu(java.lang.String contenu) throws java.rmi.RemoteException;
}
