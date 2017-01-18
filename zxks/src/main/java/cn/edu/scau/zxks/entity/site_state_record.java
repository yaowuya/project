package cn.edu.scau.zxks.entity;

public class site_state_record {
    private String recordId;

    private String siteStateId;

    private String siteId;

    private String reason;

    public String getRecordId() {
        return recordId;
    }

    public void setRecordId(String recordId) {
        this.recordId = recordId == null ? null : recordId.trim();
    }

    public String getSiteStateId() {
        return siteStateId;
    }

    public void setSiteStateId(String siteStateId) {
        this.siteStateId = siteStateId == null ? null : siteStateId.trim();
    }

    public String getSiteId() {
        return siteId;
    }

    public void setSiteId(String siteId) {
        this.siteId = siteId == null ? null : siteId.trim();
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
    }
}