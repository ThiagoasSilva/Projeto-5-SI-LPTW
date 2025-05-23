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
            pst.setString(1, v.getCategoria());
            pst.setString(2, v.getTipo());
            pst.setString(3, v.getMarca());
            pst.setString(4, v.getModelo());
            pst.setString(5, v.getCor());
            pst.setInt(6, v.getRodas());
            pst.setFloat(7, v.getMotorizacao());
            pst.setFloat(8, v.getPeso());
            pst.setFloat(9, v.getCapTanque());
            pst.setInt(10, v.getAssentos());
            pst.setInt(11, v.getAnoFabr());
            pst.setInt(12, v.getAnoModelo());
            pst.setString(13, v.getPlaca());
            pst.setString(14, v.getChassi());
            
            int linhasAfetadas = pst.executeUpdate(); // Retorna número de linhas afetadas

            fecharBanco();
            return linhasAfetadas > 0; // Se inseriu, retorna true
        } catch (Exception e) {
            System.out.println("Erro ao inserir veiculos: " + e.getMessage());
            return false;
        }

    }
}
