package cn.edu.scau.zxks.entity;

public class FinanceBill {
	private String textbookId;
	
	private String bookname;
	
	private String courseName;
	
	private Integer bookStorage;
	
	private String isOverdue;
	
	private Double buyprice;
	
	private Integer buysum;
	
	private Double buyCost;
	
	private Double sellprice;
	
	private Integer sellsum;
	
	private Double sellCost;
	
	private Double postCost;
	
	private Double refundCost;
	
	private Double storageCost;

	public String getTextbookId() {
		return textbookId;
	}

	public void setTextbookId(String textbookId) {
		this.textbookId = textbookId;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public Integer getBookStorage() {
		return bookStorage;
	}

	public void setBookStorage(Integer bookStorage) {
		this.bookStorage = bookStorage;
	}

	public String getIsOverdue() {
		return isOverdue;
	}

	public void setIsOverdue(String isOverdue) {
		this.isOverdue = isOverdue;
	}

	public Double getBuyprice() {
		return buyprice;
	}

	public void setBuyprice(Double buyprice) {
		this.buyprice = buyprice;
	}

	public Integer getBuysum() {
		return buysum;
	}

	public void setBuysum(Integer buysum) {
		this.buysum = buysum;
	}

	public Double getBuyCost() {
		return buyCost;
	}

	public void setBuyCost(Double buyCost) {
		this.buyCost = buyCost;
	}

	public Double getSellprice() {
		return sellprice;
	}

	public void setSellprice(Double sellprice) {
		this.sellprice = sellprice;
	}

	public Integer getSellsum() {
		return sellsum;
	}

	public void setSellsum(Integer sellsum) {
		this.sellsum = sellsum;
	}

	public Double getSellCost() {
		return sellCost;
	}

	public void setSellCost(Double sellCost) {
		this.sellCost = sellCost;
	}

	public Double getPostCost() {
		return postCost;
	}

	public void setPostCost(Double postCost) {
		this.postCost = postCost;
	}

	public Double getRefundCost() {
		return refundCost;
	}

	public void setRefundCost(Double refundCost) {
		this.refundCost = refundCost;
	}

	public Double getStorageCost() {
		return storageCost;
	}

	public void setStorageCost(Double storageCost) {
		this.storageCost = storageCost;
	}
}
