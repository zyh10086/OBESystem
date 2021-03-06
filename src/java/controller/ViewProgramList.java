/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.ProgramDAO;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Program;

/**
 *
 * @author mariellelapidario
 */
public class ViewProgramList extends BaseServlet {

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
        ProgramDAO program = new ProgramDAO();
        ArrayList<Program> prog = new ArrayList<Program>();
        try {
            prog = program.getAllProgram();
        } catch (ParseException ex) {
            Logger.getLogger(ViewProgramList.class.getName()).log(Level.SEVERE, null, ex);
        }
        Gson g = new Gson();
        String s = null;
        try {
            s = g.toJson(new ProgramDAO().getAllProgram());
        } catch (ParseException ex) {
            Logger.getLogger(ViewProgramList.class.getName()).log(Level.SEVERE, null, ex);
        }
        PrintWriter out = response.getWriter();
        out.print(s);
    }
}
