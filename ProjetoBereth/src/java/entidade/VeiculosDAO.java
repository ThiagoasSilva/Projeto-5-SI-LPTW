/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidade;

import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author laboratorio
 */
public class VeiculosDAO extends DAO{
    public ArrayList<Produtos> pesquisarTudo() {
        ArrayList<Produtos> listaProdutos = new ArrayList<Produtos>();
        try {
            abrirBanco();
            String query = "SELECT id, nome, preco, estoque, receita, imagem FROM produtos";
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            Produtos produto;
            while (rs.next()) {
                produto = new Produtos();
                produto.setId(rs.getInt("id"));
                produto.setNome(rs.getString("nome"));
                produto.setPreco(rs.getDouble("preco"));
                produto.setEstoque(rs.getInt("estoque"));
                produto.setReceita(rs.getBoolean("receita"));
                produto.setImagem(rs.getString("imagem"));
                listaProdutos.add(produto);
            }
            fecharBanco();
        } catch (Exception e) {
            System.out.println("Erro " + e.getMessage());
        }
        return listaProdutos;
    }
}

