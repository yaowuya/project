package cn.edu.scau.zxks.service.impl;

import java.sql.SQLException;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.QuestionbankMapper;
import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Questionbank;
import cn.edu.scau.zxks.entity.QuestionbankExample;
import cn.edu.scau.zxks.entity.QuestionbankExample.Criteria;
import cn.edu.scau.zxks.service.inter.QuestionBankInter;

@Service
public class QuestionBankImpl implements QuestionBankInter {

	@Autowired
	QuestionbankMapper questionbankMapper;
	
	
	public int countSum(){
		QuestionbankExample questionbankExample = new QuestionbankExample();
		Criteria criteria = questionbankExample.createCriteria();
		criteria.andQuestionbankIdIsNotNull();
		return questionbankMapper.countByExample(questionbankExample);
	}
	
	public int addQuestionBank(Questionbank questionBank) {
		try {
			return questionbankMapper.insert(questionBank);
		} catch (Exception e) {
			System.out.println(e+"  QuestionBankImpl.addQuestionBank is error!!!");
			return 0;
		}
		
	}

	public Page searchQuestionBankTestbookId(String testbookId, String pageNum) {
		Page page = new Page();
		page.setSize(5);
		
		//计算当前调节下的总数
		QuestionbankExample questionbankExample = new QuestionbankExample();
		Criteria criteria = questionbankExample.createCriteria();
		criteria.andTestbookIdEqualTo(testbookId);
		criteria.andStatusNotEqualTo(new Byte("3"));
		criteria.andUsedNotEqualTo(1);
		int sum = questionbankMapper.countByExample(questionbankExample);
		
		//设置当前条件下一共有多少条数据
		page.setCount(sum);
				
		//设置查询条件
		page.setKey(testbookId);
				
		//判断页码
		int num = 0;
		if(pageNum != null) {
			num = Integer.parseInt(pageNum);
			num--;
		}
		//设置头序号
		page.setStart(num * page.getSize());
		
		try {
			List<Questionbank> questionbankList = questionbankMapper.selectCanUse(page);
			page.setList(questionbankList);
			return page;
		} catch (Exception e) {
			System.out.println("QuestionBankImpl.searchQuestionBankPaperType is error!!!");
			return null;
		}
	}
	
	public List<Questionbank> searchQuestionBank(String search) {
		try {
			QuestionbankExample questionbankExample1 = new QuestionbankExample();
			Criteria criteria1 = questionbankExample1.createCriteria();
			criteria1.andPaperTypeLike("%"+search+"%");
			criteria1.andStatusEqualTo(new Byte("0"));
			List<Questionbank> questionbankList = questionbankMapper.selectByExample(questionbankExample1);
			
			return questionbankList;
		} catch (Exception e) {
			System.out.println("QuestionBankImpl.searchQuestionBank is error!!!");
			return null;
		}
	}
	
	public Page searchQuestionBankLike(String search, String pageNum) {
		Page page = new Page();
		page.setSize(5);
		//计算当前调节下的总数
		List<Questionbank> questionbankList = questionbankMapper.selectBylike("%"+search+"%");
		int sum = questionbankList.size();
				
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
			List<Questionbank> questionbankList2 = questionbankMapper.selectBylikeInPage(page);
			page.setList(questionbankList2);
			return page;
		} catch (Exception e) {
			System.out.println("QuestionBankImpl.searchQuestionBankLike is error!!!");
			return null;
		}
	}
	
	public Page search2QuestionBank(String search, String pageNum) {
		Page page = new Page();
		page.setSize(5);
		
		//计算当前调节下的总数
		QuestionbankExample questionbankExample = new QuestionbankExample();
		Criteria criteria1 = questionbankExample.createCriteria();
		criteria1.andTestbookIdEqualTo(search);
		int sum = questionbankMapper.countByExample(questionbankExample);

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
			
			List<Questionbank> questionbankList = questionbankMapper.selectTextIdInPage(page);
			page.setList(questionbankList);
			return page;
		} catch (Exception e) {
			System.out.println("QuestionBankImpl.searchQuestionBank is error!!!");
			return null;
		}
	}
	
	public List<Questionbank> search3QuestionBank(String search) {
		try {
			QuestionbankExample questionbankExample1 = new QuestionbankExample();
			Criteria criteria1 = questionbankExample1.createCriteria();
			criteria1.andTestbookIdEqualTo(search);
			criteria1.andUsedEqualTo(0);
			criteria1.andBorrowedEqualTo(0);
			criteria1.andStatusEqualTo(new Byte("1"));
			List<Questionbank> questionbankList = questionbankMapper.selectByExample(questionbankExample1);
			
			return questionbankList;
		} catch (Exception e) {
			System.out.println("QuestionBankImpl.searchQuestionBank is error!!!");
			return null;
		}
	}
	
	public Page searchQuestionCanBorrow(String search, String pageNum){
		Page page = new Page();
		page.setSize(5);
		
		//计算当前调节下的总数
		QuestionbankExample questionbankExample = new QuestionbankExample();
		Criteria criteria = questionbankExample.createCriteria();
		criteria.andPaperTypeLike("%"+search+"%");
		criteria.andBorrowedEqualTo(0);
		criteria.andUsedEqualTo(0);
		criteria.andStatusEqualTo(new Byte("1"));
		int sum = questionbankMapper.countByExample(questionbankExample);

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
			List<Questionbank> questionbankList = questionbankMapper.selectCanInPage(page);
			System.out.println(questionbankList);
			page.setList(questionbankList);
			return page;
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("QuestionBankImpl.searchQuestionCanBorrow is error!!!");
			return null;
		}
	}
	
	public boolean deleteQuestionBank(Questionbank questionBank) {
		try {
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean updateQuestionBank(Questionbank questionBank) {
		try {
			questionbankMapper.updateByPrimaryKeySelective(questionBank);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
