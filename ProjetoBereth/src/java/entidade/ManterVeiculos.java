/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidade;

import controle.Veiculos;
import java.sql.PreparedStatement;

/**
 *
 * @author Roney
 */
public class ManterVeiculos extends DAO{   
    public boolean inserir(Veiculos v){
        try {
            abrirBanco();
            String query = "INSERT INTO veiculos (categoria, tipo, marca,"
                        +  "modelo, cor, rodas, motorizacao, peso_Kg, capacidadeTanque_L," 
                        +  "assentos ,anoFabricacao, anoModelo, placa, chassi"
                        +  "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setString(1, v.getCpf());
            pst.setString(2, v.getRg());
            pst.setString(3, v.getNome());
            pst.setString(4, v.getNascimento());
            pst.setString(4, v.getNascimento());
            pst.setString(4, v.getNascimento());
            pst.setString(4, v.getNascimento());
            pst.setString(4, v.getNascimento());
            pst.setString(4, v.getNascimento());
            pst.setString(4, v.getNascimento());
            pst.setString(4, v.getNascimento());
            
            int linhasAfetadas = pst.executeUpdate(); // Retorna número de linhas afetadas

            fecharBanco();
            return linhasAfetadas > 0; // Se inseriu, retorna true
        } catch (Exception e) {
            System.out.println("Erro ao inserir veiculos: " + e.getMessage());
            return false;
        }

    }
}
