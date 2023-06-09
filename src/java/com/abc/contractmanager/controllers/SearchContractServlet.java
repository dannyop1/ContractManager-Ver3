/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.abc.contractmanager.controllers;

import com.abc.contractmanager.dao.ContractDAO;
import com.abc.contractmanager.dto.ContractDTO;
import com.abc.contractmanager.dto.OwnerDTO;
import com.abc.contractmanager.dto.UserDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mical
 */
public class SearchContractServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            HttpSession session = request.getSession();
            String url = request.getParameter("durl");
            ArrayList<ContractDTO> listContract = new ArrayList<>();
            char userType = ((String) session.getAttribute("userType")).charAt(0);
            if (userType != 'A') {
                int status = Integer.parseInt(request.getParameter("txtStatus"));
                String name = request.getParameter("txtSearchName");
                request.setAttribute("txtSearchName", name);
                String txtFrom = request.getParameter("txtFromDate");
                String txtTo = request.getParameter("txtToDate");
                Date from = null;
                Date to = null;
                if (txtFrom != null && !(txtFrom.equals(""))) {
                    from = Date.valueOf(request.getParameter("txtFromDate"));
                    request.setAttribute("txtFromDate", from);
                }
                if (txtTo != null && !(txtTo.equals(""))) {
                    to = Date.valueOf(request.getParameter("txtToDate"));
                    request.setAttribute("txtToDate", to);
                }
                request.setAttribute("txtStatus", status);
                int userID = 0;
                switch (userType) {
                    case ('U'):
                        userID = ((UserDTO) session.getAttribute("user")).getUID();
                        break;
                    case ('O'):
                        userID = ((OwnerDTO) session.getAttribute("user")).getOID();
                        break;
                }
                request.setAttribute("status", status);
                listContract = ContractDAO.searchContract(name, from, to, userID, userType, status);
            }else{
                listContract = ContractDAO.getContracts();
            }

            request.setAttribute("contractList", listContract);
            
            request.getRequestDispatcher(url).forward(request, response);
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
