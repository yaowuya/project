package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.entity.Textbook_bill;
import cn.edu.scau.zxks.entity.Textbook_billExample;
import cn.edu.scau.zxks.entity.Textbook_billExample.Criteria;
import cn.edu.scau.zxks.service.inter.TextbookbillInter;
import cn.edu.scau.zxks.dao.Textbook_billMapper;

@Service
public class TextbookbillImpl implements TextbookbillInter {

	@Autowired
	Textbook_billMapper textbookbillMapper;
	
	@Override
	public boolean addTextbookbill(Textbook_bill textbook_bill) {
		try {
			textbookbillMapper.insert(textbook_bill);
			return true;
		} catch (Exception e) {
			System.out.println("SQLerror:"+e+"  TextbookbillImpl.addTextbookbill is error!!!");
			return false;
		}
	}

	@Override
	public List<Textbook_bill> queryTextbookbill(String search, String kind) {
		Textbook_billExample textbook_billExample = new Textbook_billExample();
		Criteria criteria = textbook_billExample.createCriteria();
		if (kind.equals("111")) {
			criteria.andTextbookIdLike("%"+search+"%");
		} else if (kind.equals("222")) {
			criteria.andEmailLike("%"+search+"%");
		} else {
			criteria.andTextbookIoIdLike("%"+search+"%");
		}
		
		try {
			return textbookbillMapper.selectByExample(textbook_billExample);
		} catch (Exception e) {
			System.out.println("SQLerror:"+e+"  TextbookbillImpl.queryTextbookbill is error!!!");
			return null;
		}
	}
	
	@Override
	public List<Textbook_bill> query2Textbookbill(String search, String kind) {
		Textbook_billExample textbook_billExample = new Textbook_billExample();
		Criteria criteria = textbook_billExample.createCriteria();
		if (kind.equals("111")) {
			criteria.andTextbookIdLike("%"+search+"%");
		} else if (kind.equals("222")) {
			criteria.andEmailLike("%"+search+"%");
		} else {
			criteria.andTextbookIoIdLike("%"+search+"%");
		}
		criteria.andTextbookIocountNotEqualTo(-111);
		
		try {
			return textbookbillMapper.selectByExample(textbook_billExample);
		} catch (Exception e) {
			System.out.println("SQLerror:"+e+"  TextbookbillImpl.queryTextbookbill is error!!!");
			return null;
		}
	}

	@Override
	public boolean updateTextbookbill(Textbook_bill textbook_bill) {
		try {
			textbookbillMapper.updateByPrimaryKeySelective(textbook_bill);
			return true;
		} catch (Exception e) {
			System.out.println("SQLerror:"+e+"  TextbookbillImpl.updateTextbookbill is error!!!");
			return false;
		}
	}

	@Override
	public boolean deleteTextbook_bill(Textbook_bill textbook_bill) {
		// TODO Auto-generated method stub
		return false;
	}

}
