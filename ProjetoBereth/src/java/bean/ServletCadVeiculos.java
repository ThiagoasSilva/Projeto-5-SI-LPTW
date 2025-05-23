/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package bean;

import controle.Veiculos;
import entidade.ManterVeiculos;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author laboratorio
 */
public class ServletCadVeiculos extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            int id_veiculo = Integer.parseInt(String.valueOf("id_veiculo"));
            String categoria = request.getParameter("categoria");
            String tipo = request.getParameter("tipo");
            String marca = request.getParameter("marca");
            String modelo = request.getParameter("modelo");
            String cor = request.getParameter("cor");
            int rodas = Integer.parseInt(String.valueOf("rodas"));
            float motorizacao = Integer.parseInt(String.valueOf("motorizacao"));
            float peso = Integer.parseInt(String.valueOf("peso"));
            float capTanque = Integer.parseInt(String.valueOf("capTanque"));
            int assentos = Integer.parseInt(String.valueOf("assentos"));
            int anoFabr = Integer.parseInt(String.valueOf("anoFabr"));
            int anoModelo = Integer.parseInt(String.valueOf("anoModelo"));
            String placa = request.getParameter("placa");
            String chassi = request.getParameter("chassi");

            Veiculos v = new Veiculos();
            v.setId_veiculo(id_veiculo);
            v.setCategoria(categoria);
            v.setTipo(tipo);
            v.setMarca(marca);
            v.setModelo(modelo);
            v.setCor(cor);
            v.setRodas(rodas);
            v.setMotorizacao(motorizacao);
            v.setPeso(peso);
            v.setCapTanque(capTanque);
            v.setAssentos(assentos);
            v.setAnoFabr(anoFabr);
            v.setAnoModelo(anoModelo);
            v.setPlaca(placa);
            v.setChassi(chassi);
            
            ManterVeiculos manter = new ManterVeiculos();
            boolean sucesso = manter.inserir(v);

            if (sucesso) {
                // Redireciona com mensagem de sucesso na URL
                response.sendRedirect("login.jsp?mensagem=Cadastro%20realizado%20com%20sucesso!");
            } else {
                // Redireciona com mensagem de erro na URL
                response.sendRedirect("cadastro.jsp?mensagem=Erro%20ao%20realizar%20o%20cadastro");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
