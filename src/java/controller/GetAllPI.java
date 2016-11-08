/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.PiDAO;
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
public class GetAllPI extends BaseServlet {

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
            String SelectedProgram = request.getParameter("SelectedProgram");
            System.out.println("selected program: " + SelectedProgram);
            s = g.toJson(new PiDAO().getAllPI(SelectedProgram));
        } catch (ParseException ex) {
            Logger.getLogger(GetAllPI.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        PrintWriter out = response.getWriter();
        out.print(s);
    }
}