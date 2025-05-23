/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidade;

import controle.Vendas;
import java.sql.PreparedStatement;

/**
 *
 * @author laboratorio
 */
public class ManterVenda extends DAO{
    
    public boolean inserirVenda(Vendas v){
        try{
            abrirBanco();
            String query = "INSERT INTO vendas (id_usuario, id_veiculo, formaPagamento, parcelas, valor, dataVenda)"
                + "values (?, ?, ?, ?, ?, ?)";
                pst = (PreparedStatement) con.prepareStatement(query);
                pst.setInt(1, v.getId_usuario());
                pst.setInt(2, v.getId_veiculo());
                pst.setString(3, v.getFormaPagamento().name());
                pst.setInt(4, v.getParcelas());
                pst.setFloat(5, v.getValor());
                pst.setTimestamp(6, v.getDataVenda());
                int linhasAfetadas = pst.executeUpdate();
                
                fecharBanco();
                return linhasAfetadas > 0;
        } catch (Exception e){
            System.out.println("Erro ao inserir venda: "+ e.getMessage());
            return false;
        }
    }
    
}
