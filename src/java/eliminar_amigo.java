/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.LinkedList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.user;

/**
 *
 * @author user
 */
public class eliminar_amigo extends HttpServlet {

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
            String friend = request.getParameter("usuario");
            int cont = models.user.get_active_user().get_friendlist().size();
            LinkedList actual = models.user.get_active_user().get_friendlist();
            models.user usuario = null;
            for (int i = 0; i < cont; i++) {           
                usuario=(models.user)actual.get(i);
                String nick = usuario.get_nikname();
                if(nick.equals(friend)){
                    user.get_active_user().get_friendlist().remove(actual);
                }   
            }
            response.sendRedirect("Lista_de_amigos.jsp");
            /*while(iter.hasNext()){
                models.user name = (models.user)iter.next();
                if((name.get_nikname()).equals(friend)){
                    user.get_active_user().get_friendlist().remove(name);
                    response.sendRedirect("Postlog_lobby.jsp");
                }
            }
            //response.sendRedirect("Postlog_lobby.jsp");*/
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
