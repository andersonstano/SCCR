
package sccr;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for equipamento complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="equipamento">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="descricao" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="diasdeuso" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="fp" type="{http://www.w3.org/2001/XMLSchema}double"/>
 *         &lt;element name="horas" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="idequipamento" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="minutos" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="potencia" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "equipamento", propOrder = {
    "descricao",
    "diasdeuso",
    "fp",
    "horas",
    "idequipamento",
    "minutos",
    "potencia"
})
public class Equipamento {

    protected String descricao;
    protected int diasdeuso;
    protected double fp;
    protected int horas;
    protected int idequipamento;
    protected int minutos;
    protected int potencia;

    /**
     * Gets the value of the descricao property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDescricao() {
        return descricao;
    }

    /**
     * Sets the value of the descricao property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDescricao(String value) {
        this.descricao = value;
    }

    /**
     * Gets the value of the diasdeuso property.
     * 
     */
    public int getDiasdeuso() {
        return diasdeuso;
    }

    /**
     * Sets the value of the diasdeuso property.
     * 
     */
    public void setDiasdeuso(int value) {
        this.diasdeuso = value;
    }

    /**
     * Gets the value of the fp property.
     * 
     */
    public double getFp() {
        return fp;
    }

    /**
     * Sets the value of the fp property.
     * 
     */
    public void setFp(double value) {
        this.fp = value;
    }

    /**
     * Gets the value of the horas property.
     * 
     */
    public int getHoras() {
        return horas;
    }

    /**
     * Sets the value of the horas property.
     * 
     */
    public void setHoras(int value) {
        this.horas = value;
    }

    /**
     * Gets the value of the idequipamento property.
     * 
     */
    public int getIdequipamento() {
        return idequipamento;
    }

    /**
     * Sets the value of the idequipamento property.
     * 
     */
    public void setIdequipamento(int value) {
        this.idequipamento = value;
    }

    /**
     * Gets the value of the minutos property.
     * 
     */
    public int getMinutos() {
        return minutos;
    }

    /**
     * Sets the value of the minutos property.
     * 
     */
    public void setMinutos(int value) {
        this.minutos = value;
    }

    /**
     * Gets the value of the potencia property.
     * 
     */
    public int getPotencia() {
        return potencia;
    }

    /**
     * Sets the value of the potencia property.
     * 
     */
    public void setPotencia(int value) {
        this.potencia = value;
    }

}
