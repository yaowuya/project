package cn.edu.scau.zxks.entity;

public class Student {
    private String stuNum;

    private String email;

    private String schoolId;

    private String majorId;

    private Integer graduateState;

    private Double essayRemark;

    private String idCard;

    private Double examScore;

    private String contactPerson;

    private String contactPhone;

    public String getStuNum() {
        return stuNum;
    }

    public void setStuNum(String stuNum) {
        this.stuNum = stuNum == null ? null : stuNum.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(String schoolId) {
        this.schoolId = schoolId == null ? null : schoolId.trim();
    }

    public String getMajorId() {
        return majorId;
    }

    public void setMajorId(String majorId) {
        this.majorId = majorId == null ? null : majorId.trim();
    }

    public Integer getGraduateState() {
        return graduateState;
    }

    public void setGraduateState(Integer graduateState) {
        this.graduateState = graduateState;
    }

    public Double getEssayRemark() {
        return essayRemark;
    }

    public void setEssayRemark(Double essayRemark) {
        this.essayRemark = essayRemark;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard == null ? null : idCard.trim();
    }

    public Double getExamScore() {
        return examScore;
    }

    public void setExamScore(Double examScore) {
        this.examScore = examScore;
    }

    public String getContactPerson() {
        return contactPerson;
    }

    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson == null ? null : contactPerson.trim();
    }

    public String getContactPhone() {
        return contactPhone;
    }

    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone == null ? null : contactPhone.trim();
    }

	@Override
	public String toString() {
		return "Student [stuNum=" + stuNum + ", email=" + email + ", schoolId="
				+ schoolId + ", majorId=" + majorId + ", graduateState="
				+ graduateState + ", essayRemark=" + essayRemark + ", idCard="
				+ idCard + ", examScore=" + examScore + ", contactPerson="
				+ contactPerson + ", contactPhone=" + contactPhone + "]";
	}
    
     
}