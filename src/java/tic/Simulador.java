/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package tic;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author pg3648
 */
@WebService(serviceName = "SCCR")
public class Simulador {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "listaEquipamentos")
    public Equipamento[] listaEquipamentos() {
        SCCRManager manager = new SCCRManager();
        
        manager.init();
        
        Equipamento[] equipamentos = manager.getEquipamentos();
        
        manager.destroy();
        
        return equipamentos;
    }
}
