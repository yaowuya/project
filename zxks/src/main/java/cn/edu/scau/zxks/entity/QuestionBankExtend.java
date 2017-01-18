package cn.edu.scau.zxks.entity;

import java.util.Date;

public class QuestionBankExtend {
	private String testbookId;//教材ID
	
	private String testbookName;//教材名称
	
	private String courseName;//课程ID
	
	private String booktype;//出版社
	
	private Date overdueTime;//变更时间
	
	private String isOverdue;//是否作废
	
	private String overdueReason;//作废理由

	public String getTestbookId() {
		return testbookId;
	}

	public void setTestbookId(String testbookId) {
		this.testbookId = testbookId;
	}

	public String getTestbookName() {
		return testbookName;
	}

	public void setTestbookName(String testbookName) {
		this.testbookName = testbookName;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getBooktype() {
		return booktype;
	}

	public void setBooktype(String booktype) {
		this.booktype = booktype;
	}

	public Date getOverdueTime() {
		return overdueTime;
	}

	public void setOverdueTime(Date overdueTime) {
		this.overdueTime = overdueTime;
	}

	public String getIsOverdue() {
		return isOverdue;
	}

	public void setIsOverdue(String isOverdue) {
		this.isOverdue = isOverdue;
	}

	public String getOverdueReason() {
		return overdueReason;
	}

	public void setOverdueReason(String overdueReason) {
		this.overdueReason = overdueReason;
	}
	
	
}
