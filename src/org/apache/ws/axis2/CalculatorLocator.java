/**
 * CalculatorLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.apache.ws.axis2;

public class CalculatorLocator extends org.apache.axis.client.Service implements org.apache.ws.axis2.Calculator {

    public CalculatorLocator() {
    }


    public CalculatorLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public CalculatorLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for CalculatorHttpSoap11Endpoint
    private java.lang.String CalculatorHttpSoap11Endpoint_address = "http://localhost:8085/WebServiceDM/services/Calculator.CalculatorHttpSoap11Endpoint/";

    public java.lang.String getCalculatorHttpSoap11EndpointAddress() {
        return CalculatorHttpSoap11Endpoint_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String CalculatorHttpSoap11EndpointWSDDServiceName = "CalculatorHttpSoap11Endpoint";

    public java.lang.String getCalculatorHttpSoap11EndpointWSDDServiceName() {
        return CalculatorHttpSoap11EndpointWSDDServiceName;
    }

    public void setCalculatorHttpSoap11EndpointWSDDServiceName(java.lang.String name) {
        CalculatorHttpSoap11EndpointWSDDServiceName = name;
    }

    public org.apache.ws.axis2.CalculatorPortType getCalculatorHttpSoap11Endpoint() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(CalculatorHttpSoap11Endpoint_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getCalculatorHttpSoap11Endpoint(endpoint);
    }

    public org.apache.ws.axis2.CalculatorPortType getCalculatorHttpSoap11Endpoint(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            org.apache.ws.axis2.CalculatorSoap11BindingStub _stub = new org.apache.ws.axis2.CalculatorSoap11BindingStub(portAddress, this);
            _stub.setPortName(getCalculatorHttpSoap11EndpointWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setCalculatorHttpSoap11EndpointEndpointAddress(java.lang.String address) {
        CalculatorHttpSoap11Endpoint_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (org.apache.ws.axis2.CalculatorPortType.class.isAssignableFrom(serviceEndpointInterface)) {
                org.apache.ws.axis2.CalculatorSoap11BindingStub _stub = new org.apache.ws.axis2.CalculatorSoap11BindingStub(new java.net.URL(CalculatorHttpSoap11Endpoint_address), this);
                _stub.setPortName(getCalculatorHttpSoap11EndpointWSDDServiceName());
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
        if ("CalculatorHttpSoap11Endpoint".equals(inputPortName)) {
            return getCalculatorHttpSoap11Endpoint();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://ws.apache.org/axis2", "Calculator");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://ws.apache.org/axis2", "CalculatorHttpSoap11Endpoint"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("CalculatorHttpSoap11Endpoint".equals(portName)) {
            setCalculatorHttpSoap11EndpointEndpointAddress(address);
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
