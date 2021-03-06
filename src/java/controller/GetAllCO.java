/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.CoDAO;
import DAO.PaDAO;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mariellelapidario
 */
public class GetAllCO extends BaseServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void servletAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Gson g = new Gson();
        String s = null;
        try {
            System.out.println("curriculumID: " + request.getParameter("curriculumID"));
            System.out.println("courseID: " + request.getParameter("courseID"));
            System.out.println("term: " + request.getParameter("term"));
            System.out.println("startYear: " + request.getParameter("startYear"));
            System.out.println("endYear: " + request.getParameter("endYear"));

            int curriculumID = Integer.parseInt(request.getParameter("curriculumID"));
            int courseID = Integer.parseInt(request.getParameter("courseID"));
            int term = Integer.parseInt(request.getParameter("term"));
            int startYear = Integer.parseInt(request.getParameter("startYear"));
            int endYear = Integer.parseInt(request.getParameter("endYear"));
            System.out.println("curriculumID: " + curriculumID);
            s = g.toJson(new CoDAO().getAllCO(curriculumID, courseID, term, startYear ,endYear));
        } catch (ParseException ex) {
            Logger.getLogger(GetAllCO.class.getName()).log(Level.SEVERE, null, ex);
        }

        PrintWriter out = response.getWriter();
        out.print(s);
    }
}
