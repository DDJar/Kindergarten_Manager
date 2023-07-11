/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.list;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Class.ClassListDB;
import model.child.Child;
import model.child.ChildDB;
import model.skillList.SkillListDB;

/**
 *
 * @author ASUS-PRO
 */
public class SearchClassAndSkill extends HttpServlet {

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
        String search = request.getParameter("search");
        String id = request.getParameter("id");
        ClassListDB c = new ClassListDB();
        SkillListDB s = new SkillListDB();
        ArrayList<model.Class.ClassList> cl = null;
        ArrayList<model.skillList.SkillList> sl = null;
        List<Child> child = ChildDB.getAllChildByIdChildAndStatusSkill(id, "Accept");
        List<Child> child1 = ChildDB.getAllChildByIdChildAndStatusClass(id, "Accept");
        if (search != null) {
            cl = c.SeacrchClassByNameAndTeacher(search);
            sl = s.SeacrchSkillByNameAndTeacher(search);
            if (!cl.isEmpty() && sl.isEmpty()) {
                request.setAttribute("msq1", "Not Found");
                request.setAttribute("year", LocalDate.now().getYear());
                request.setAttribute("listcl", cl);
                request.setAttribute("listc2", child);
                request.setAttribute("listc3", sl);
                request.setAttribute("listc4", child1);
                request.getRequestDispatcher("class.jsp").forward(request, response);

            } else if (!sl.isEmpty()&&cl.isEmpty() ) {
                request.setAttribute("msq", "Not Found");
                request.setAttribute("year", LocalDate.now().getYear());
                request.setAttribute("listcl", cl);
                request.setAttribute("listc2", child);
                request.setAttribute("listc3", sl);
                request.setAttribute("listc4", child1);
                request.getRequestDispatcher("class.jsp").forward(request, response);
            } else {
                request.setAttribute("msq", "Not Found");
                request.getRequestDispatcher("class.jsp").forward(request, response);
            }

        } else {
            response.sendRedirect("ListClass?id=" + id);
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
