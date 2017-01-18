package cn.edu.scau.zxks.entity;

public class Test_sites {
    private String siteId;

    private String siteName;

    private String siteAddress;

    private Integer siteRoomNumber;

    private String siteLinkman;

    private String siteLinkphone;

    private String siteState;
    
    private Exam_sites exam_sites;
    
    private Exam exam;
    
    private Major_info major_info;

    public String getSiteId() {
        return siteId;
    }

    public void setSiteId(String siteId) {
        this.siteId = siteId == null ? null : siteId.trim();
    }

    public String getSiteName() {
        return siteName;
    }

    public void setSiteName(String siteName) {
        this.siteName = siteName == null ? null : siteName.trim();
    }

    public String getSiteAddress() {
        return siteAddress;
    }

    public void setSiteAddress(String siteAddress) {
        this.siteAddress = siteAddress == null ? null : siteAddress.trim();
    }

    public Integer getSiteRoomNumber() {
        return siteRoomNumber;
    }

    public void setSiteRoomNumber(Integer siteRoomNumber) {
        this.siteRoomNumber = siteRoomNumber;
    }

    public String getSiteLinkman() {
        return siteLinkman;
    }

    public void setSiteLinkman(String siteLinkman) {
        this.siteLinkman = siteLinkman == null ? null : siteLinkman.trim();
    }

    public String getSiteLinkphone() {
        return siteLinkphone;
    }

    public void setSiteLinkphone(String siteLinkphone) {
        this.siteLinkphone = siteLinkphone == null ? null : siteLinkphone.trim();
    }

    public String getSiteState() {
        return siteState;
    }

    public void setSiteState(String siteState) {
        this.siteState = siteState == null ? null : siteState.trim();
    }
    
    

	public Exam_sites getExam_sites() {
		return exam_sites;
	}

	public void setExam_sites(Exam_sites exam_sites) {
		this.exam_sites = exam_sites;
	}

	public Exam getExam() {
		return exam;
	}

	public void setExam(Exam exam) {
		this.exam = exam;
	}
	
	

	public Major_info getMajor_info() {
		return major_info;
	}

	public void setMajor_info(Major_info major_info) {
		this.major_info = major_info;
	}

	@Override
	public String toString() {
		return "Test_sites [siteId=" + siteId + ", siteName=" + siteName
				+ ", siteAddress=" + siteAddress + ", siteRoomNumber="
				+ siteRoomNumber + ", siteLinkman=" + siteLinkman
				+ ", siteLinkphone=" + siteLinkphone + ", siteState="
				+ siteState + "]";
	}
    
}