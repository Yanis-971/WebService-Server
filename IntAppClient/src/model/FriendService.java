/**
 * FriendService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package model;

public interface FriendService extends javax.xml.rpc.Service {
    public java.lang.String getFriendAddress();

    public model.Friend getFriend() throws javax.xml.rpc.ServiceException;

    public model.Friend getFriend(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
