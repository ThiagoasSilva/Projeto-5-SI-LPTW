/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidade;

import controle.Usuarios;
import java.sql.PreparedStatement;

/**
 *
 * @author thiagosilva
 */
public class ManterUsuario extends DAO {
    
public boolean inserir(Usuarios u){
        try {
            abrirBanco();
            String query = "INSERT INTO usuario (cpf, rg, nome, nascimento)"
                    + "values(?, ?, ?, ?)";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setString(1, u.getCpf());
            pst.setString(2, u.getRg());
            pst.setString(3, u.getNome());
            pst.setString(4, u.getNascimento());
            int linhasAfetadas = pst.executeUpdate(); // Retorna número de linhas afetadas

            fecharBanco();
            return linhasAfetadas > 0; // Se inseriu, retorna true
        } catch (Exception e) {
            System.out.println("Erro ao inserir cliente: " + e.getMessage());
            return false;
        }

    }
}
