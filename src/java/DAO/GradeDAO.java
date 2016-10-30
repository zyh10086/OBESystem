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
import model.Grade;

/**
 *
 * @author mariellelapidario
 */
public class GradeDAO {

    public boolean encodeGrade(Grade newStudent) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "INSERT INTO grade (studentID, offeringID, assessmentID, grade)\n"
                    + "VALUES (?,?,?,?);";
            PreparedStatement pstmt = conn.prepareStatement(query);

            pstmt.setInt(1, newStudent.getStudentID());
            pstmt.setInt(2, newStudent.getOfferingID());
            pstmt.setInt(3, newStudent.getAssessmentID());
            pstmt.setDouble(4, newStudent.getGrade());

            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(GradeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public ArrayList<Grade> getAllGradesOfSection(int offeringID) throws ParseException {
        ArrayList<Grade> arrGrade = new ArrayList<>();

        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "SELECT G.studentID, G.offeringID, G.assessmentID, G.grade, A.codeAT \n"
                    + "FROM grade G\n"
                    + "JOIN assessment A \n"
                    + "ON G.assessmentID = A.assessmentID\n"
                    + "WHERE G.offeringID = ?;";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, offeringID);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                Grade grade = new Grade();
                grade.setStudentID(rs.getInt("studentID"));
                grade.setOfferingID(rs.getInt("offeringID"));
                grade.setAssessmentID(rs.getInt("assessmentID"));
                grade.setGrade(rs.getDouble("grade"));
                grade.setCodeAT(rs.getString("codeAT"));
                arrGrade.add(grade);
            }
            pstmt.close();
            conn.close();
            return arrGrade;
        } catch (SQLException ex) {
            Logger.getLogger(GradeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int getAssessmentID(int syllabusID, String codeAT) throws ParseException {
        int assessmentID = -1;

        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "SELECT assessmentID\n"
                    + "FROM assessment \n"
                    + "WHERE syllabusID = ? AND codeAT = ?;";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, syllabusID);
            pstmt.setString(2, codeAT);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                assessmentID = rs.getInt("assessmentID");
            }
            pstmt.close();
            conn.close();
            return assessmentID;
        } catch (SQLException ex) {
            Logger.getLogger(GradeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return assessmentID;
    }

    public boolean deleteGrades(int offeringID) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "DELETE FROM grade\n"
                    + "WHERE offeringID = ?;";
            PreparedStatement pstmt = conn.prepareStatement(query);

            pstmt.setInt(1, offeringID);
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(GradeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}