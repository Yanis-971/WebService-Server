/**
 * UtilisateurService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package model;

public interface UtilisateurService extends javax.xml.rpc.Service {
    public java.lang.String getUtilisateurAddress();

    public model.Utilisateur getUtilisateur() throws javax.xml.rpc.ServiceException;

    public model.Utilisateur getUtilisateur(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
