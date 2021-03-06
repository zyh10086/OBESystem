/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import database.DBConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.IGA;

/**
 *
 * @author mariellelapidario
 */
public class IgaDAO {

    public boolean EncodeIGA(IGA newIGA) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "INSERT INTO IGA "
                    + "(codeIGA, title, description, remarks, dateMade, dateUpdated, contributor)\n"
                    + "VALUES (?,?,?,?,?,?,?);";
            PreparedStatement pstmt = conn.prepareStatement(query);

            pstmt.setString(1, newIGA.getCodeIGA());
            pstmt.setString(2, newIGA.getTitle());
            pstmt.setString(3, newIGA.getDescription());
            pstmt.setString(4, newIGA.getRemarks());
            pstmt.setDate(5, newIGA.getDateMade());
            pstmt.setDate(6, newIGA.getDateUpdated());
            pstmt.setInt(7, newIGA.getContributor());

            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(IgaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean updateIGA(IGA newIGA) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "UPDATE  IGA\n"
                    + "SET title = ?, description = ?, remarks = ?, dateUpdated =?, editor =?\n"
                    + "WHERE codeIGA = ?;";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, newIGA.getTitle());
            pstmt.setString(2, newIGA.getDescription());
            pstmt.setString(3, newIGA.getRemarks());
            pstmt.setDate(4, newIGA.getDateUpdated());
            pstmt.setInt(5, newIGA.getContributor());
            pstmt.setString(6, newIGA.getCodeIGA());

            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(IgaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public ArrayList<IGA> getAllIGA() throws ParseException {
        ArrayList<IGA> newIGA = new ArrayList<IGA>();
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "SELECT codeIGA, title, description, remarks, dateMade,\n"
                    + "dateUpdated, I.contributor,\n"
                    + "CONCAT(U.firstName, \" \" , U.LastName) as 'contributorName'\n"
                    + "FROM IGA I\n"
                    + "JOIN USER U\n"
                    + "ON I.contributor = U.userID\n"
                    + "WHERE I.isDeleted IS NULL\n"
                    + "ORDER BY codeIGA;";
            PreparedStatement pstmt = conn.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                IGA temp = new IGA();
                temp.setCodeIGA(rs.getString("codeIGA"));
                temp.setTitle(rs.getString("title"));
                temp.setDescription(rs.getString("description"));
                temp.setRemarks(rs.getString("remarks"));
                temp.setDateMade(rs.getDate("dateMade"));
                temp.setDateUpdated(rs.getDate("dateUpdated"));
                temp.setContributor(rs.getInt("contributor"));
                temp.setContributorName(rs.getString("contributorName"));
                newIGA.add(temp);
            }
            pstmt.close();
            conn.close();
            return newIGA;
        } catch (SQLException ex) {
            Logger.getLogger(IgaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean deleteIGA(String codeIGA) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "UPDATE IGA\n"
                    + "SET isDELETED = TRUE\n"
                    + "WHERE codeIGA = ?;";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, codeIGA);
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(IgaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public String getLastCodeIGA() throws SQLException {
        DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
        Connection conn = myFactory.getConnection();
        String i = "";
        String query = "SELECT MAX(codeIGA) from IGA";
        PreparedStatement ps = conn.prepareStatement(query);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            i = rs.getString("MAX(codeIGA)");
        }
        ps.close();
        rs.close();
        return i;
    }
}
