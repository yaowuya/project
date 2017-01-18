package cn.edu.scau.zxks.entity;

public class Major_info {
    private String majorId;

    private String schoolId;

    private String majorName;

    private Double majorCredit;

    private Byte majorReply;

    private Byte isExamTogether;

    private String majorType;

    private String majorLayer;

    private String majorPro;
    
    private String schoolName;

    public String getMajorId() {
        return majorId;
    }

    public void setMajorId(String majorId) {
        this.majorId = majorId == null ? null : majorId.trim();
    }

    public String getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(String schoolId) {
        this.schoolId = schoolId == null ? null : schoolId.trim();
    }

    public String getMajorName() {
        return majorName;
    }

    public void setMajorName(String majorName) {
        this.majorName = majorName == null ? null : majorName.trim();
    }

    public Double getMajorCredit() {
        return majorCredit;
    }

    public void setMajorCredit(Double majorCredit) {
        this.majorCredit = majorCredit;
    }

    public Byte getMajorReply() {
        return majorReply;
    }

    public void setMajorReply(Byte majorReply) {
        this.majorReply = majorReply;
    }

    public Byte getIsExamTogether() {
        return isExamTogether;
    }

    public void setIsExamTogether(Byte isExamTogether) {
        this.isExamTogether = isExamTogether;
    }

    public String getMajorType() {
        return majorType;
    }

    public void setMajorType(String majorType) {
        this.majorType = majorType == null ? null : majorType.trim();
    }

    public String getMajorLayer() {
        return majorLayer;
    }

    public void setMajorLayer(String majorLayer) {
        this.majorLayer = majorLayer == null ? null : majorLayer.trim();
    }

    public String getMajorPro() {
        return majorPro;
    }

    public void setMajorPro(String majorPro) {
        this.majorPro = majorPro == null ? null : majorPro.trim();
    }
    
	public String getSchoolName() {
		return schoolName;
	}

	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}

	
	@Override
	public String toString() {
		return "Major_info [majorId=" + majorId + ", schoolId=" + schoolId
				+ ", majorName=" + majorName + ", majorCredit=" + majorCredit
				+ ", majorReply=" + majorReply + ", isExamTogether="
				+ isExamTogether + ", majorType=" + majorType + ", majorLayer="
				+ majorLayer + ", majorPro=" + majorPro + ", schoolName="
				+ schoolName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((isExamTogether == null) ? 0 : isExamTogether.hashCode());
		result = prime * result
				+ ((majorCredit == null) ? 0 : majorCredit.hashCode());
		result = prime * result + ((majorId == null) ? 0 : majorId.hashCode());
		result = prime * result
				+ ((majorLayer == null) ? 0 : majorLayer.hashCode());
		result = prime * result
				+ ((majorName == null) ? 0 : majorName.hashCode());
		result = prime * result
				+ ((majorPro == null) ? 0 : majorPro.hashCode());
		result = prime * result
				+ ((majorReply == null) ? 0 : majorReply.hashCode());
		result = prime * result
				+ ((majorType == null) ? 0 : majorType.hashCode());
		result = prime * result
				+ ((schoolId == null) ? 0 : schoolId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Major_info other = (Major_info) obj;
		if (isExamTogether == null) {
			if (other.isExamTogether != null)
				return false;
		} else if (!isExamTogether.equals(other.isExamTogether))
			return false;
		if (majorCredit == null) {
			if (other.majorCredit != null)
				return false;
		} else if (!majorCredit.equals(other.majorCredit))
			return false;
		if (majorId == null) {
			if (other.majorId != null)
				return false;
		} else if (!majorId.equals(other.majorId))
			return false;
		if (majorLayer == null) {
			if (other.majorLayer != null)
				return false;
		} else if (!majorLayer.equals(other.majorLayer))
			return false;
		if (majorName == null) {
			if (other.majorName != null)
				return false;
		} else if (!majorName.equals(other.majorName))
			return false;
		if (majorPro == null) {
			if (other.majorPro != null)
				return false;
		} else if (!majorPro.equals(other.majorPro))
			return false;
		if (majorReply == null) {
			if (other.majorReply != null)
				return false;
		} else if (!majorReply.equals(other.majorReply))
			return false;
		if (majorType == null) {
			if (other.majorType != null)
				return false;
		} else if (!majorType.equals(other.majorType))
			return false;
		if (schoolId == null) {
			if (other.schoolId != null)
				return false;
		} else if (!schoolId.equals(other.schoolId))
			return false;
		return true;
	}
    
}