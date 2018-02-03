package org.apache.ws.axis2;

public class CalculatorPortTypeProxy implements org.apache.ws.axis2.CalculatorPortType {
  private String _endpoint = null;
  private org.apache.ws.axis2.CalculatorPortType calculatorPortType = null;
  
  public CalculatorPortTypeProxy() {
    _initCalculatorPortTypeProxy();
  }
  
  public CalculatorPortTypeProxy(String endpoint) {
    _endpoint = endpoint;
    _initCalculatorPortTypeProxy();
  }
  
  private void _initCalculatorPortTypeProxy() {
    try {
      calculatorPortType = (new org.apache.ws.axis2.CalculatorLocator()).getCalculatorHttpSoap11Endpoint();
      if (calculatorPortType != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)calculatorPortType)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)calculatorPortType)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (calculatorPortType != null)
      ((javax.xml.rpc.Stub)calculatorPortType)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public org.apache.ws.axis2.CalculatorPortType getCalculatorPortType() {
    if (calculatorPortType == null)
      _initCalculatorPortTypeProxy();
    return calculatorPortType;
  }
  
  public int cal(int a, int b, java.lang.String operator) throws java.rmi.RemoteException{
    if (calculatorPortType == null)
      _initCalculatorPortTypeProxy();
    return calculatorPortType.cal(a, b, operator);
  }
  
  
}