package model;

public class MessageProxy implements model.Message {
  private String _endpoint = null;
  private model.Message message = null;
  
  public MessageProxy() {
    _initMessageProxy();
  }
  
  public MessageProxy(String endpoint) {
    _endpoint = endpoint;
    _initMessageProxy();
  }
  
  private void _initMessageProxy() {
    try {
      message = (new model.MessageServiceLocator()).getMessage();
      if (message != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)message)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)message)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (message != null)
      ((javax.xml.rpc.Stub)message)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public model.Message getMessage() {
    if (message == null)
      _initMessageProxy();
    return message;
  }
  
  public int getId() throws java.rmi.RemoteException{
    if (message == null)
      _initMessageProxy();
    return message.getId();
  }
  
  public void setDate(java.lang.String date) throws java.rmi.RemoteException{
    if (message == null)
      _initMessageProxy();
    message.setDate(date);
  }
  
  public java.lang.String getDate() throws java.rmi.RemoteException{
    if (message == null)
      _initMessageProxy();
    return message.getDate();
  }
  
  public void setId(int id) throws java.rmi.RemoteException{
    if (message == null)
      _initMessageProxy();
    message.setId(id);
  }
  
  public java.lang.String getContenu() throws java.rmi.RemoteException{
    if (message == null)
      _initMessageProxy();
    return message.getContenu();
  }
  
  public void setContenu(java.lang.String contenu) throws java.rmi.RemoteException{
    if (message == null)
      _initMessageProxy();
    message.setContenu(contenu);
  }
  
  
}