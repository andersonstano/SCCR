
package sccr;

import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.5-b04 
 * Generated source version: 2.2
 * 
 */
@WebService(name = "Simulador", targetNamespace = "http://tic/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface Simulador {


    /**
     * 
     * @return
     *     returns java.util.List<sccr.Equipamento>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "listaEquipamentos", targetNamespace = "http://tic/", className = "sccr.ListaEquipamentos")
    @ResponseWrapper(localName = "listaEquipamentosResponse", targetNamespace = "http://tic/", className = "sccr.ListaEquipamentosResponse")
    @Action(input = "http://tic/Simulador/listaEquipamentosRequest", output = "http://tic/Simulador/listaEquipamentosResponse")
    public List<Equipamento> listaEquipamentos();

}