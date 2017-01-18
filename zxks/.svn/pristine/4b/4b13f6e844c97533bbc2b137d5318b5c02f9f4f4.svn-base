package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.QuestionoutofstorageMapper;
import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Questionoutofstorage;
import cn.edu.scau.zxks.entity.QuestionoutofstorageExample;
import cn.edu.scau.zxks.entity.QuestionoutofstorageExample.Criteria;
import cn.edu.scau.zxks.service.inter.QuestionoutofstorageInter;

@Service
public class QuestionoutofstorageImpl implements QuestionoutofstorageInter {

	@Autowired
	QuestionoutofstorageMapper questionoutofstorageMapper;
	
	public int countSUM(){
		QuestionoutofstorageExample questionoutofstorageExample = new QuestionoutofstorageExample();
		Criteria criteria = questionoutofstorageExample.createCriteria();
		criteria.andBorrowRecordIdIsNotNull();
		return questionoutofstorageMapper.countByExample(questionoutofstorageExample)+1;
	}
	
	public int addQuestionoutofstorage(
			Questionoutofstorage questionoutofstorage) {
		// TODO Auto-generated method stub
		try {
			return questionoutofstorageMapper.insert(questionoutofstorage);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("QuestionoutofstorageImpl.addQuestionoutofstorage is error!!!");
			return 0;
		}
	}

	public List<Questionoutofstorage> searchOutQuestionoutofstorage(String search) {
		// TODO Auto-generated method stub
		try {
			QuestionoutofstorageExample questionoutofstorageExample = new QuestionoutofstorageExample();
			Criteria criteria = questionoutofstorageExample.createCriteria();
			criteria.andQuestionbankIdLike("%"+search+"%");
			criteria.andInUserEmailIsNull();
			List<Questionoutofstorage> questionoutofstoragesList = questionoutofstorageMapper.selectByExample(questionoutofstorageExample);
			System.out.println(questionoutofstoragesList);
			return questionoutofstoragesList;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("QuestionoutofstorageImpl.searchOutQuestionoutofstorage is error!!!");
			return null;
		}
	}
	
	public Page searchOutQuestionoutInPage(String search, String pageNum) {
		Page page = new Page();
		page.setSize(5);
		
		//计算当前调节下的总数
		QuestionoutofstorageExample questionoutofstorageExample = new QuestionoutofstorageExample();
		Criteria criteria = questionoutofstorageExample.createCriteria();
		criteria.andQuestionbankIdLike("%"+ search +"%");
		criteria.andInUserEmailIsNull();
		int sum = questionoutofstorageMapper.countByExample(questionoutofstorageExample);
		
		//设置当前条件下一共有多少条数据
		page.setCount(sum);
		
		//设置查询条件
		page.setKey(search);
		
		//判断页码
		int num = 0;
		if(pageNum != null) {
			num = Integer.parseInt(pageNum);
			num--;
		}
		//设置头序号
		page.setStart(num * page.getSize());
		
		try {
			List<Questionoutofstorage> questionoutofstoragesList = questionoutofstorageMapper.selectInPage(page);
			page.setList(questionoutofstoragesList);
			System.out.println(page.getList().size());
			return page;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("QuestionoutofstorageImpl.searchOutQuestionoutofstorage2 is error!!!");
			return null;
		}
	}
	
	public boolean updateQuestionoutofstorage(
			Questionoutofstorage questionoutofstorage) {
		// TODO Auto-generated method stub
		try {
			questionoutofstorageMapper.updateByPrimaryKeySelective(questionoutofstorage);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("QuestionoutofstorageImpl.updateQuestionoutofstorage is error!!!");
			return false;
		}
	}

}
