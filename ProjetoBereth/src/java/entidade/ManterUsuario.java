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
    
public void inserir(Usuarios u) throws Exception {
        try {
            abrirBanco();
            String query = "INSERT INTO usuarios (id_usuario, cpf, nome, email)"
                    + "values(null, ?, ?, ?)";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setString(1, u.getCpf());
            pst.setString(2, u.getNome());
            pst.setString(3, u.getEmail());
            pst.execute();
            fecharBanco();
        } catch (Exception e){
            System.out.println("Erro " + e.getMessage());
        }
    }
    
}
