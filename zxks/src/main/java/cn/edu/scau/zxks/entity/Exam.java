package cn.edu.scau.zxks.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Exam {
    private String examId;

    private String majorId;

    private String examName;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date time;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date applyStart;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date applyEnd;

    public String getExamId() {
        return examId;
    }

    public void setExamId(String examId) {
        this.examId = examId == null ? null : examId.trim();
    }

    public String getMajorId() {
        return majorId;
    }

    public void setMajorId(String majorId) {
        this.majorId = majorId == null ? null : majorId.trim();
    }

    public String getExamName() {
        return examName;
    }

    public void setExamName(String examName) {
        this.examName = examName == null ? null : examName.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Date getApplyStart() {
        return applyStart;
    }

    public void setApplyStart(Date applyStart) {
        this.applyStart = applyStart;
    }

    public Date getApplyEnd() {
        return applyEnd;
    }

    public void setApplyEnd(Date applyEnd) {
        this.applyEnd = applyEnd;
    }

	@Override
	public String toString() {
		return "Exam [examId=" + examId + ", majorId=" + majorId
				+ ", examName=" + examName + ", time=" + time + ", applyStart="
				+ applyStart + ", applyEnd=" + applyEnd + "]";
	}
    
}