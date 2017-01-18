package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.entity.Exam;
import cn.edu.scau.zxks.entity.ExamMajorSite;



public interface ApplyService {
	List<Exam> getAllExam();
	Exam getExam(String examId);
	void updateExam(Exam exam);

}
