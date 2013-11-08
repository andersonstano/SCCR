/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package tic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Administrador
 */
public class SCCRManager {

    private Connection myConnection;

    public SCCRManager() {
    }

    public void init() {

        try {

            Class.forName("com.mysql.jdbc.Driver");
            
            myConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sccr","guest", "convidado");
        } catch (Exception e) {
            System.out.println("Failed to get connection");
            e.printStackTrace();
        }
    }

    public Connection getMyConnection() {
        return myConnection;
    }

    public void destroy() {

        if (myConnection != null) {

            try {
                myConnection.close();
            } catch (Exception e) {
            }


        }

    }

    int getQtdeEquipamentos() {
        ResultSet rs = null;
        int qtde = 0;

        try {
            Statement stmt = myConnection.createStatement();
            rs = stmt.executeQuery("SELECT COUNT(*) FROM EQUIPAMENTOS");

            while (rs.next()) {
                qtde = rs.getInt(1);
            }

        } catch (SQLException e) {
            System.out.append(e.getMessage());
        }

        return qtde;
    }

    Equipamento[] getEquipamentos() {
        ResultSet rs = null;
        int qtde = getQtdeEquipamentos();
        int i = 0;

        if (qtde == 0) {
            return null;
        }

        Equipamento[] equips = new Equipamento[qtde];

        try {
            Statement stmt = myConnection.createStatement();
            rs = stmt.executeQuery("SELECT * FROM EQUIPAMENTOS");

            while (rs.next()) {
                equips[i++] = new Equipamento(rs.getInt("idequipamento"), rs.getString("descricao"),
                        rs.getInt("potencia"), rs.getInt("diasdeuso"), rs.getInt("horas"), rs.getInt("minutos"), rs.getDouble("fp"));
            }

        } catch (SQLException e) {
            System.out.append(e.getMessage());
        }

        return equips;
    }

    public static void main(String args[]) {
        // metodo principal
        // apenas para testes
        SCCRManager manager = new SCCRManager();

        manager.init();
        
        System.out.println(manager.getQtdeEquipamentos());
        
        Equipamento[] equips = manager.getEquipamentos();
        System.out.println(equips.toString());
    }
}
