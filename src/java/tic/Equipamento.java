/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package tic;

/**
 *
 * @author pg3648
 */
public class Equipamento {
 
    int idequipamento;
    String descricao;
    int potencia;
    int diasdeuso;
    int horas;
    int minutos;
    double fp;
    
    Equipamento() 
    {
    }
    
    Equipamento(int idequipamento, String descricao, int potencia, int diasdeuso, int horas, int minutos) 
    {
        this.idequipamento = idequipamento;
        this.descricao = descricao;
        this.potencia = potencia;
        this.diasdeuso = diasdeuso;
        this.horas = horas;
        this.minutos = minutos;
        this.fp = 0.92;
    }
    
    Equipamento(int idequipamento, String descricao, int potencia, int diasdeuso, int horas, int minutos, double fp) 
    {
        this.idequipamento = idequipamento;
        this.descricao = descricao;
        this.potencia = potencia;
        this.diasdeuso = diasdeuso;
        this.horas = horas;
        this.minutos = minutos;
        this.fp = fp;
    }
    
    public int getIdequipamento() {
        return idequipamento;
    }

    public void setIdequipamento(int idequipamento) {
        this.idequipamento = idequipamento;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getPotencia() {
        return potencia;
    }

    public void setPotencia(int potencia) {
        this.potencia = potencia;
    }

    public int getDiasdeuso() {
        return diasdeuso;
    }

    public void setDiasdeuso(int diasdeuso) {
        this.diasdeuso = diasdeuso;
    }

    public int getHoras() {
        return horas;
    }

    public void setHoras(int horas) {
        this.horas = horas;
    }

    public double getKwh() {
        return (potencia * horas * (minutos / 60.0) * diasdeuso) / 1000.0;
    }

    public double getKva() {
        return (potencia * fp);
    }

    public int getMinutos() {
        return minutos;
    }

    public void setMinutos(int minutos) {
        this.minutos = minutos;
    }

    public double getFp() {
        return fp;
    }

    public void setFp(double fp) {
        this.fp = fp;
    }
    
}
