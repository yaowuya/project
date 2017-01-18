package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.ExamMapper;
import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Exam;
import cn.edu.scau.zxks.exception.UserException;
import cn.edu.scau.zxks.service.inter.ExamService;

@Service
public class ExamServiceImpl implements ExamService {
	
	@Autowired
	ExamMapper examMapper;
	
	@Override
	public List<Exam> getAll() {
		return examMapper.selectAll();
	}

	@Override
	public Exam getByPrimaryKey(String examId) {
		return examMapper.selectByPrimaryKey(examId);
	}

	@Override
	public void updateExam(Exam exam) {
		if(exam.getApplyStart().compareTo(exam.getApplyEnd()) > 0){
			throw new UserException("开始申请日期必须比结束申请日期早");
		}
		if(exam.getApplyStart().compareTo(exam.getTime()) > 0){
			throw new UserException("开始申请日期必须比考试日期早");
		}
		if(exam.getTime().compareTo(exam.getApplyEnd()) < 0){
			throw new UserException("考试日期必须定在结束申请日期后");
		}
		
		examMapper.updateByPrimaryKey(exam);
	}

	@Override
	public int insertExam(Exam exam) {
		int num = examMapper.countAll();
		String examId = String.format("%05d", num);
		exam.setExamId(examId);
		return examMapper.insert(exam);
	}

	@Override
	public List<Exam> getAllInTime() {
		return examMapper.selectAllInTime();
		
	}

	@Override
	public List<Exam> searchByKeyInPage(Page page) {
		if(page.getKey() == null)page.setKey("");
		return examMapper.searchByKeyInPage(page);
	}

	@Override
	public int countByKey(String key) {
		if(key == null)key = "";
		return examMapper.countByKey(key);
	}

}
