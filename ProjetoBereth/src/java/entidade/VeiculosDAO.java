/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidade;

import controle.Veiculos;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author laboratorio
 */
public class VeiculosDAO extends DAO{
    public ArrayList<Veiculos> pesquisarTudo() {
        ArrayList<Veiculos> listaProdutos = new ArrayList<Veiculos>();
        try {
            abrirBanco();
            String query = "SELECT idveiculo, modelo, anoFabricacao, imagem FROM veiculo";
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            Veiculos produto;
            while (rs.next()) {
                produto = new Veiculos();
                produto.setIdveiculo(rs.getInt("idveiculo"));
                produto.setModelo(rs.getString("modelo"));
                produto.setAnoFabricacao(rs.getString("anoFabricacao"));
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

