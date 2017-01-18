package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.ExamMapper;
import cn.edu.scau.zxks.dao.ExamSiteMapper;
import cn.edu.scau.zxks.entity.Exam;
import cn.edu.scau.zxks.entity.ExamMajorSite;
import cn.edu.scau.zxks.service.inter.ApplyService;

@Service
public class ApplyServiceImpl implements ApplyService {

	@Autowired
	ExamMapper examMapper;
	
	@Override
	public List<Exam> getAllExam() {
		return examMapper.selectAll();
	}
	@Override
	public Exam getExam(String examId) {
		return examMapper.selectByPrimaryKey(examId);
	}
	@Override
	public void updateExam(Exam exam) {
		examMapper.updateByPrimaryKey(exam);
	}


}
