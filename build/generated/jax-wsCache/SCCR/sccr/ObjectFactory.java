
package sccr;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the sccr package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _ListaEquipamentosResponse_QNAME = new QName("http://tic/", "listaEquipamentosResponse");
    private final static QName _ListaEquipamentos_QNAME = new QName("http://tic/", "listaEquipamentos");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: sccr
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link ListaEquipamentos }
     * 
     */
    public ListaEquipamentos createListaEquipamentos() {
        return new ListaEquipamentos();
    }

    /**
     * Create an instance of {@link ListaEquipamentosResponse }
     * 
     */
    public ListaEquipamentosResponse createListaEquipamentosResponse() {
        return new ListaEquipamentosResponse();
    }

    /**
     * Create an instance of {@link Equipamento }
     * 
     */
    public Equipamento createEquipamento() {
        return new Equipamento();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListaEquipamentosResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tic/", name = "listaEquipamentosResponse")
    public JAXBElement<ListaEquipamentosResponse> createListaEquipamentosResponse(ListaEquipamentosResponse value) {
        return new JAXBElement<ListaEquipamentosResponse>(_ListaEquipamentosResponse_QNAME, ListaEquipamentosResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListaEquipamentos }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tic/", name = "listaEquipamentos")
    public JAXBElement<ListaEquipamentos> createListaEquipamentos(ListaEquipamentos value) {
        return new JAXBElement<ListaEquipamentos>(_ListaEquipamentos_QNAME, ListaEquipamentos.class, null, value);
    }

}
