package cn.edu.scau.zxks.entity;

public class Dealer {
    private String dealerId;

    private String dealerName;

    private String dealerAddress;

    private String dealerContacts;

    private String dealerPhone;

    public String getDealerId() {
        return dealerId;
    }

    public void setDealerId(String dealerId) {
        this.dealerId = dealerId == null ? null : dealerId.trim();
    }

    public String getDealerName() {
        return dealerName;
    }

    public void setDealerName(String dealerName) {
        this.dealerName = dealerName == null ? null : dealerName.trim();
    }

    public String getDealerAddress() {
        return dealerAddress;
    }

    public void setDealerAddress(String dealerAddress) {
        this.dealerAddress = dealerAddress == null ? null : dealerAddress.trim();
    }

    public String getDealerContacts() {
        return dealerContacts;
    }

    public void setDealerContacts(String dealerContacts) {
        this.dealerContacts = dealerContacts == null ? null : dealerContacts.trim();
    }

    public String getDealerPhone() {
        return dealerPhone;
    }

    public void setDealerPhone(String dealerPhone) {
        this.dealerPhone = dealerPhone == null ? null : dealerPhone.trim();
    }
}