package cn.edu.scau.zxks.entity;

import java.util.Date;

public class Refund {
    private String refundId;

    private String textbookId;

    private String textbookIoId;

    private Date refundTime;

    private Double refundAmount;

    private String reason;

    private Double refundPrice;

    public String getRefundId() {
        return refundId;
    }

    public void setRefundId(String refundId) {
        this.refundId = refundId == null ? null : refundId.trim();
    }

    public String getTextbookId() {
        return textbookId;
    }

    public void setTextbookId(String textbookId) {
        this.textbookId = textbookId == null ? null : textbookId.trim();
    }

    public String getTextbookIoId() {
        return textbookIoId;
    }

    public void setTextbookIoId(String textbookIoId) {
        this.textbookIoId = textbookIoId == null ? null : textbookIoId.trim();
    }

    public Date getRefundTime() {
        return refundTime;
    }

    public void setRefundTime(Date refundTime) {
        this.refundTime = refundTime;
    }

    public Double getRefundAmount() {
        return refundAmount;
    }

    public void setRefundAmount(Double refundAmount) {
        this.refundAmount = refundAmount;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
    }

    public Double getRefundPrice() {
        return refundPrice;
    }

    public void setRefundPrice(Double refundPrice) {
        this.refundPrice = refundPrice;
    }
}