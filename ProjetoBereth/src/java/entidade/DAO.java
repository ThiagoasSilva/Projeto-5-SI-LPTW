/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidade;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author thiagosilva
 */
public class DAO {
   
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    public void abrirBanco() throws SQLException {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost/berethdb";
            String user = "root";
            String senha = "";
            
            con = (Connection) DriverManager.getConnection(url, user, senha);
                System.out.println("conectado ao banco de dados!");
        } catch (ClassNotFoundException ex){
            System.out.println("Class nas bibliotecas.");
          Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException e){
            System.out.println(e);
            throw new RuntimeException(e);
        }}
    public void fecharBanco() throws Exception{
        if (pst!=null) {
            pst.close();
            System.out.println("Execução da query fechada\n.");
        }
    }
}

