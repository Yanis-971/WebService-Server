package model;

public class UtilisateurProxy implements model.Utilisateur {
  private String _endpoint = null;
  private model.Utilisateur utilisateur = null;
public UtilisateurProxy() {
    _initUtilisateurProxy();
  }
  
  public UtilisateurProxy(String endpoint) {
    _endpoint = endpoint;
    _initUtilisateurProxy();
  }
  
  private void _initUtilisateurProxy() {
    try {
      utilisateur = (new model.UtilisateurServiceLocator()).getUtilisateur();
      if (utilisateur != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)utilisateur)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)utilisateur)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (utilisateur != null)
      ((javax.xml.rpc.Stub)utilisateur)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public model.Utilisateur getUtilisateur() {
    if (utilisateur == null)
      _initUtilisateurProxy();
    return utilisateur;
  }
  
  public void setId(int id) throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    utilisateur.setId(id);
  }
  
  public void setPrenom(java.lang.String prenom) throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    utilisateur.setPrenom(prenom);
  }
  
  public java.lang.String getMdp() throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    return utilisateur.getMdp();
  }
  
  public void setMdp(java.lang.String mdp) throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    utilisateur.setMdp(mdp);
  }
  
  public void voirUser() throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    utilisateur.voirUser();
  }
  
  public boolean connecUsers(java.lang.String pseudo, java.lang.String mdp) throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    return utilisateur.connecUsers(pseudo, mdp);
  }
  
  public boolean addUtilisateurs(java.lang.String mdp, java.lang.String nom, java.lang.String prenom, java.lang.String pseudo) throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    return utilisateur.addUtilisateurs(mdp, nom, prenom, pseudo);
  }
  
  public boolean liaisonFriends(int idfriend) throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    return utilisateur.liaisonFriends(idfriend);
  }
  
  public boolean verifriends(int idFriends) throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    return utilisateur.verifriends(idFriends);
  }
  
  public boolean addFriend(java.lang.String pseudo) throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    return utilisateur.addFriend(pseudo);
  }
  
  public boolean sendmessage(java.lang.String message, int idfriends) throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    return utilisateur.sendmessage(message, idfriends);
  }
  
  public model.Message[] liremessage(int idFriends) throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    return utilisateur.liremessage(idFriends);
  }
  
  public model.Friend[] getFriendList() throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    return utilisateur.getFriendList();
  }
  
  public java.lang.String getPseudo() throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    return utilisateur.getPseudo();
  }
  
  public void setNom(java.lang.String nom) throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    utilisateur.setNom(nom);
  }
  
  public void setPseudo(java.lang.String pseudo) throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    utilisateur.setPseudo(pseudo);
  }
  
  public java.lang.String getNom() throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    return utilisateur.getNom();
  }
  
  public java.lang.String getPrenom() throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    return utilisateur.getPrenom();
  }
  
  public int getId() throws java.rmi.RemoteException{
    if (utilisateur == null)
      _initUtilisateurProxy();
    return utilisateur.getId();
  }
  
  
}