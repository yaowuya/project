package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.Course_informationMapper;
import cn.edu.scau.zxks.dao.TextbookMapper;
import cn.edu.scau.zxks.entity.Textbook;
import cn.edu.scau.zxks.entity.TextbookExample;
import cn.edu.scau.zxks.entity.TextbookExample.Criteria;
import cn.edu.scau.zxks.service.inter.TextbookInter;

@Service
public class TextbookImpl implements TextbookInter {
	
	@Autowired 
	private TextbookMapper textbookMapper;
	
	public boolean addTestbook(Textbook textbook) {
		try {
			textbookMapper.insert(textbook);
			return true;
		} catch (Exception e) {
			System.out.println("SQLerror:"+e+"  TextbookImpl.addTestbook is error!!!");
			return false;
		}
	}
	
	public Textbook queryOne(String textbookId){
		return textbookMapper.selectByPrimaryKey(textbookId);
	}
	
	public List<Textbook> queryTextbook(String search, String kind) {
		TextbookExample textbookExample = new TextbookExample();
		Criteria criteria = textbookExample.createCriteria();
		if (kind.equals("111")) {
			criteria.andCourseIdLike("%"+search+"%");
		} else if (kind.equals("222")) {
			criteria.andBooknameLike("%"+search+"%");
		}else {
			criteria.andTextbookIdLike("%"+search+"%");
		}
		try {
			return textbookMapper.selectByExample(textbookExample);
		} catch (Exception e) {
			System.out.println("SQLerror:"+e+"  TextbookImpl.queryTextbook is error!!!");
			return null;
		}
	}
	
	public List<Textbook> query2Textbook(String search, String kind) {
		TextbookExample textbookExample = new TextbookExample();
		Criteria criteria = textbookExample.createCriteria();
		if (kind.equals("111")) {
			criteria.andCourseIdLike("%"+search+"%");
		} else if (kind.equals("222")) {
			criteria.andBooknameLike("%"+search+"%");
		}else {
			criteria.andTextbookIdLike("%"+search+"%");
		}
		criteria.andIsOverdueEqualTo("000");
		try {
			return textbookMapper.selectByExample(textbookExample);
		} catch (Exception e) {
			System.out.println("SQLerror:"+e+"  TextbookImpl.queryTextbook is error!!!");
			return null;
		}
	}
	
	public int textbookSum(String textbookId){
		try {
			Textbook textbook = textbookMapper.selectByPrimaryKey(textbookId);
			return textbook.getBookStorage();
		} catch (Exception e) {
			return 0;
		}
	}
	
	public boolean updateTextbook(Textbook textbook) {
		try {
			textbookMapper.updateByPrimaryKeySelective(textbook);
			return true;
		} catch (Exception e) {
			System.out.println("SQLerror:"+e+"  TextbookImpl.updateTextbook is error!!!");
			return false;
		}
	}

	public boolean deleteTextbook(Textbook textbook) {
		// TODO Auto-generated method stub
		return false;
	}

}
