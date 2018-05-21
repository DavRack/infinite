/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(urlPatterns = {"/Datos1"})
public class Datos1 extends HttpServlet {

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
            models.seller laura= new models.seller("Laura","arobol","laura@arobol.com","14/03/1999","Colombia", "neron", 10000);
            models.seller c = new models.seller("c", "c", "c@mail.com","09/04/2018", "Colombia", "c", 19999999);
            models.admin Daniel = new models.admin("Daniel", "lun", "DLMXX@gmail.com","01/08/1997", "Perú", "con", 50000);
            models.admin b = new models.admin("b", "b", "b@mail.com","08/04/2018", "España", "b", 199999);
            models.product cuphead = new models.product("cuphead", "cuphead es un juego de plataformas dificil", laura,1000, "Plataformas");
            models.product Racin_cup = new models.product("Racin cup","este juego no exciste, ea no le da pena", laura, 2000 , "Conducción");
            models.product.active_product = cuphead;
            models.user a = new models.user("a", "a" ,"a@mail.com","20/05/2018","Perú", "a", 100000);
            models.user x = new models.user("x", "x" ,"a@mail.com","20/05/2018","Perú", "x", 100000);
            models.user y = new models.user("y", "y" ,"a@mail.com","20/05/2018","Perú", "y", 100000);
            models.comment arobol = new models.comment(a,"21/05/2018",10,"muy buen juego", cuphead);
            models.comment xa = new models.comment(x, "17/04/1999", 5, "nada mal", cuphead);
            response.sendRedirect("index.jsp");
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
