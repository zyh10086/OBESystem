/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author mariellelapidario
 */
public class MapAssessmentToCO {
    private String codeAssessment;
    private String codeCO;
    private String codeCurriculum;
    private String codeCourse;
    private String codePI;
    private String status;
    private String remarks;
    private int contributor;
    private int checker;
    
    private String contributorName;
    private String checkerName;

    /**
     * @return the codeAssessment
     */
    public String getCodeAssessment() {
        return codeAssessment;
    }

    /**
     * @param codeAssessment the codeAssessment to set
     */
    public void setCodeAssessment(String codeAssessment) {
        this.codeAssessment = codeAssessment;
    }

    /**
     * @return the codeCO
     */
    public String getCodeCO() {
        return codeCO;
    }

    /**
     * @param codeCO the codeCO to set
     */
    public void setCodeCO(String codeCO) {
        this.codeCO = codeCO;
    }

    /**
     * @return the codeCurriculum
     */
    public String getCodeCurriculum() {
        return codeCurriculum;
    }

    /**
     * @param codeCurriculum the codeCurriculum to set
     */
    public void setCodeCurriculum(String codeCurriculum) {
        this.codeCurriculum = codeCurriculum;
    }

    /**
     * @return the codeCourse
     */
    public String getCodeCourse() {
        return codeCourse;
    }

    /**
     * @param codeCourse the codeCourse to set
     */
    public void setCodeCourse(String codeCourse) {
        this.codeCourse = codeCourse;
    }

    /**
     * @return the codePI
     */
    public String getCodePI() {
        return codePI;
    }

    /**
     * @param codePI the codePI to set
     */
    public void setCodePI(String codePI) {
        this.codePI = codePI;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the remarks
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * @param remarks the remarks to set
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    /**
     * @return the contributor
     */
    public int getContributor() {
        return contributor;
    }

    /**
     * @param contributor the contributor to set
     */
    public void setContributor(int contributor) {
        this.contributor = contributor;
    }

    /**
     * @return the checker
     */
    public int getChecker() {
        return checker;
    }

    /**
     * @param checker the checker to set
     */
    public void setChecker(int checker) {
        this.checker = checker;
    }
}
