package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.entity.Textbook_bill;

public interface TextbookbillInter {
	public boolean addTextbookbill(Textbook_bill textbook_bill);
	public List<Textbook_bill> queryTextbookbill(String search, String kind);
	public List<Textbook_bill> query2Textbookbill(String search, String kind);
	public boolean updateTextbookbill(Textbook_bill textbook_bill);
	public boolean deleteTextbook_bill(Textbook_bill textbook_bill);
}
