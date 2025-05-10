/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidade;

import java.sql.SQLException;

/**
 *
 * @author thiagosilva
 */
public class TesteCon {
    public static void main(String[] args) throws SQLException {
        DAO testecon = new DAO();
        testecon.abrirBanco();
    }
    
}
