package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.Exam_applyMapper;
import cn.edu.scau.zxks.entity.Exam_apply;
import cn.edu.scau.zxks.service.inter.ExamApplyService;

@Service
public class ExamApplyServiceImpl implements ExamApplyService {
	@Autowired
	Exam_applyMapper exam_applyMapper;
	
	@Override
	public int getApplyNumDepOnSiteId(String siteId) {
		return exam_applyMapper.countBySiteId(siteId);	
	}

	@Override
	public List<Exam_apply> getByStuNum(String stuNum) {
		return exam_applyMapper.selectByStuNum(stuNum);
	}

	@Override
	public int insert(Exam_apply exam_apply) {
		return exam_applyMapper.insert(exam_apply);
	}

	@Override
	public int countAll() {
		return exam_applyMapper.countAll();
	}

	@Override
	public int getMaxRoomNum(String examId, String siteId) {
		System.out.println(examId);
		System.out.println(siteId);
		String str = exam_applyMapper.getMaxRoomNum(examId, siteId);
		if(str == null)return 0;
		return Integer.parseInt(str);
	}

	@Override
	public int getNumOfMaxRoom(String examId, String siteId) {
		String str = exam_applyMapper.countForMaxRoom(examId, siteId);
		if(str == null)return 0;
		return Integer.parseInt(str);
	}

}
