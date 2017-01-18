package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.Course_informationMapper;
import cn.edu.scau.zxks.dao.TextbookMapper;
import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Textbook;
import cn.edu.scau.zxks.entity.TextbookExample;
import cn.edu.scau.zxks.entity.TextbookExample.Criteria;
import cn.edu.scau.zxks.service.inter.QuestionBankExtendInter;

@Service
public class QuestionBankExtendImpl implements QuestionBankExtendInter {
	@Autowired
	Course_informationMapper course_informationMapper;
	@Autowired
	TextbookMapper textbookMapper;
	
	@Override
	public List<Textbook> queryQuestionBankExtend(String search) {
		List<Textbook> textbookList = textbookMapper.selectByLike("%"+search+"%");
		return textbookList;
	}
	
	@Override
	public List<Textbook> query2QuestionBankExtend(String search) {
		List<Textbook> textbookList = textbookMapper.selectByLikeIsNo("%"+search+"%");
		return textbookList;
	}
	
	@Override
	public Page query3QuestionBankExtend(String pageNum) {
		Page page = new Page();
		page.setSize(5);
		
		//计算当前调节下的总数
		TextbookExample textbookExample = new TextbookExample();
		Criteria criteria = textbookExample.createCriteria();
		criteria.andOverdueTimeIsNotNull();
		int sum = textbookMapper.countByExample(textbookExample);
		
		//设置当前条件下一共有多少条数据
		page.setCount(sum);
				
		//判断页码
		int num = 0;
		if(pageNum != null) {
			num = Integer.parseInt(pageNum);
			num--;
		}
		//设置头序号
		page.setStart(num * page.getSize());
		try {
			List<Textbook> textbookList = textbookMapper.selectNoOverdue(page);
			page.setList(textbookList);
			return page;
		} catch (Exception e) {
			return null;
		}
	}
}
