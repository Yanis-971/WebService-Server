/**
 * UtilisateurServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package model;

public class UtilisateurServiceLocator extends org.apache.axis.client.Service implements model.UtilisateurService {

    public UtilisateurServiceLocator() {
    }


    public UtilisateurServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public UtilisateurServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for Utilisateur
    private java.lang.String Utilisateur_address = "http://localhost:8080/IntAppServer/services/Utilisateur";

    public java.lang.String getUtilisateurAddress() {
        return Utilisateur_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String UtilisateurWSDDServiceName = "Utilisateur";

    public java.lang.String getUtilisateurWSDDServiceName() {
        return UtilisateurWSDDServiceName;
    }

    public void setUtilisateurWSDDServiceName(java.lang.String name) {
        UtilisateurWSDDServiceName = name;
    }

    public model.Utilisateur getUtilisateur() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(Utilisateur_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getUtilisateur(endpoint);
    }

    public model.Utilisateur getUtilisateur(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            model.UtilisateurSoapBindingStub _stub = new model.UtilisateurSoapBindingStub(portAddress, this);
            _stub.setPortName(getUtilisateurWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setUtilisateurEndpointAddress(java.lang.String address) {
        Utilisateur_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (model.Utilisateur.class.isAssignableFrom(serviceEndpointInterface)) {
                model.UtilisateurSoapBindingStub _stub = new model.UtilisateurSoapBindingStub(new java.net.URL(Utilisateur_address), this);
                _stub.setPortName(getUtilisateurWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("Utilisateur".equals(inputPortName)) {
            return getUtilisateur();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://model", "UtilisateurService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://model", "Utilisateur"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("Utilisateur".equals(portName)) {
            setUtilisateurEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
