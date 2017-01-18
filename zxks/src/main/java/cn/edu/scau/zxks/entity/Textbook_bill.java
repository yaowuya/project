package cn.edu.scau.zxks.entity;

import java.util.Date;

public class Textbook_bill {
    private String textbookIoId;

    private String textbookId;

    private String email;

    private Date textbookIotime;

    private Integer textbookIocount;

    private Double textbookPrice;

    private String address;

    private Double postPrice;

    public String getTextbookIoId() {
        return textbookIoId;
    }

    public void setTextbookIoId(String textbookIoId) {
        this.textbookIoId = textbookIoId == null ? null : textbookIoId.trim();
    }

    public String getTextbookId() {
        return textbookId;
    }

    public void setTextbookId(String textbookId) {
        this.textbookId = textbookId == null ? null : textbookId.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Date getTextbookIotime() {
        return textbookIotime;
    }

    public void setTextbookIotime(Date textbookIotime) {
        this.textbookIotime = textbookIotime;
    }

    public Integer getTextbookIocount() {
        return textbookIocount;
    }

    public void setTextbookIocount(Integer textbookIocount) {
        this.textbookIocount = textbookIocount;
    }

    public Double getTextbookPrice() {
        return textbookPrice;
    }

    public void setTextbookPrice(Double textbookPrice) {
        this.textbookPrice = textbookPrice;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Double getPostPrice() {
        return postPrice;
    }

    public void setPostPrice(Double postPrice) {
        this.postPrice = postPrice;
    }
}