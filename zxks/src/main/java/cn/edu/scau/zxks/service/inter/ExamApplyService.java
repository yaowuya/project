package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.entity.Exam_apply;

public interface ExamApplyService {
	int getApplyNumDepOnSiteId(String siteId);
	
	List<Exam_apply> getByStuNum(String stuNum);
	
	int insert(Exam_apply exam_apply);
	
	int countAll();
	
	int getMaxRoomNum(String examId, String siteId);
	
	int getNumOfMaxRoom(String examId, String siteId);
}
