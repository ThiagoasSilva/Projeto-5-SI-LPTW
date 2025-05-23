/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidade;

import controle.UsuarioLogin;
import controle.Usuarios;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.mindrot.jbcrypt.BCrypt;

public class LoginDAO extends DAO {

    public boolean inserir(Usuarios login) {
    try {
        abrirBanco();
        String senhaCriptografada = BCrypt.hashpw(login.getSenha(), BCrypt.gensalt());
        String query = "INSERT INTO usuario (email, senha, cpf, nome, endereco) VALUES(?, ?, ?, ?, ?)";
        pst = con.prepareStatement(query);
        pst.setString(1, login.getEmail());
        pst.setString(2, senhaCriptografada);
        pst.setString(3, login.getCpf());
        pst.setString(4, login.getNome());
        pst.setString(5, login.getEndereco());


        int linhasAfetadas = pst.executeUpdate(); // Retorna número de linhas afetadas

        fecharBanco();
        return linhasAfetadas > 0; // Se inseriu, retorna true
    } catch (Exception e) {
        System.out.println("Erro ao inserir cliente: " + e.getMessage());
        return false;
    }
}

    public Usuarios pesquisar(Usuarios login) {
        Usuarios loginBuscado = new Usuarios();

        try {
            abrirBanco();
            String query = "SELECT id_usuario, nome, email, senha, endereco FROM usuario WHERE email = ?";
            pst = con.prepareStatement(query);
            pst.setString(1, login.getEmail());

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                String senhaHashBanco = rs.getString("senha");

                // Verificar se a senha informada corresponde ao hash armazenado
                if (BCrypt.checkpw(login.getSenha(), senhaHashBanco)) {
                    loginBuscado = new Usuarios();
                    loginBuscado.setId_usuario(rs.getInt("id_usuario"));
                    loginBuscado.setEmail(rs.getString("email"));
                    loginBuscado.setSenha(rs.getString("senha"));
                    // você pode adicionar mais campos se precisar
                }
            }

            fecharBanco();
        } catch (Exception e) {
            System.out.println("Erro ao buscar cliente: " + e.getMessage());
        }

        return loginBuscado;
    }
}
