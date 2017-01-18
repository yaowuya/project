package cn.edu.scau.zxks.entity;

import java.util.Date;

public class Questionbank {
    private String questionbankId;

    private String paperType;

    private String testbookId;
    
    private String testbookName;

    private String writer;

    private Date inTime;

    private Integer used;

    private Integer borrowed;

    private Byte status;

    public String getQuestionbankId() {
        return questionbankId;
    }

    public void setQuestionbankId(String questionbankId) {
        this.questionbankId = questionbankId == null ? null : questionbankId.trim();
    }

    public String getPaperType() {
        return paperType;
    }

    public void setPaperType(String paperType) {
        this.paperType = paperType == null ? null : paperType.trim();
    }

    public String getTestbookId() {
        return testbookId;
    }

    public void setTestbookId(String testbookId) {
        this.testbookId = testbookId == null ? null : testbookId.trim();
    }

    public String getTestbookName() {
		return testbookName;
	}

	public void setTestbookName(String testbookName) {
		this.testbookName = testbookName;
	}

	public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer == null ? null : writer.trim();
    }

    public Date getInTime() {
        return inTime;
    }

    public void setInTime(Date inTime) {
        this.inTime = inTime;
    }

    public Integer getUsed() {
        return used;
    }

    public void setUsed(Integer used) {
        this.used = used;
    }

    public Integer getBorrowed() {
        return borrowed;
    }

    public void setBorrowed(Integer borrowed) {
        this.borrowed = borrowed;
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }
}