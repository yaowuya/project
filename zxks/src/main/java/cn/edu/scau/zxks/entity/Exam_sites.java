package cn.edu.scau.zxks.entity;

public class Exam_sites {
    private String examSiteId;

    private String siteId;

    private String examId;

    public String getExamSiteId() {
        return examSiteId;
    }

    public void setExamSiteId(String examSiteId) {
        this.examSiteId = examSiteId == null ? null : examSiteId.trim();
    }

    public String getSiteId() {
        return siteId;
    }

    public void setSiteId(String siteId) {
        this.siteId = siteId == null ? null : siteId.trim();
    }

    public String getExamId() {
        return examId;
    }

    public void setExamId(String examId) {
        this.examId = examId == null ? null : examId.trim();
    }
}