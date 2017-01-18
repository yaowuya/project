package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.entity.Textbook;

public interface TextbookInter {
	public boolean addTestbook(Textbook textbook);
	public Textbook queryOne(String textbookId);
	public List<Textbook> queryTextbook(String search, String kind);
	public List<Textbook> query2Textbook(String search, String kind);
	public int textbookSum(String textbookId);
	public boolean updateTextbook(Textbook textbook);
	public boolean deleteTextbook(Textbook textbook);
}
