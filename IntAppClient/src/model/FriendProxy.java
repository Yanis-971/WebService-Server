package model;

public class FriendProxy implements model.Friend {
  private String _endpoint = null;
  private model.Friend friend = null;
  
  public FriendProxy() {
    _initFriendProxy();
  }
  
  public FriendProxy(String endpoint) {
    _endpoint = endpoint;
    _initFriendProxy();
  }
  
  private void _initFriendProxy() {
    try {
      friend = (new model.FriendServiceLocator()).getFriend();
      if (friend != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)friend)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)friend)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (friend != null)
      ((javax.xml.rpc.Stub)friend)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public model.Friend getFriend() {
    if (friend == null)
      _initFriendProxy();
    return friend;
  }
  
  public void setId(int id) throws java.rmi.RemoteException{
    if (friend == null)
      _initFriendProxy();
    friend.setId(id);
  }
  
  public void setPrenom(java.lang.String prenom) throws java.rmi.RemoteException{
    if (friend == null)
      _initFriendProxy();
    friend.setPrenom(prenom);
  }
  
  public void setNom(java.lang.String nom) throws java.rmi.RemoteException{
    if (friend == null)
      _initFriendProxy();
    friend.setNom(nom);
  }
  
  public java.lang.String getNom() throws java.rmi.RemoteException{
    if (friend == null)
      _initFriendProxy();
    return friend.getNom();
  }
  
  public java.lang.String getPrenom() throws java.rmi.RemoteException{
    if (friend == null)
      _initFriendProxy();
    return friend.getPrenom();
  }
  
  public java.lang.String getPseudo() throws java.rmi.RemoteException{
    if (friend == null)
      _initFriendProxy();
    return friend.getPseudo();
  }
  
  public void setPseudo(java.lang.String pseudo) throws java.rmi.RemoteException{
    if (friend == null)
      _initFriendProxy();
    friend.setPseudo(pseudo);
  }
  
  public int getId() throws java.rmi.RemoteException{
    if (friend == null)
      _initFriendProxy();
    return friend.getId();
  }
  
  
}