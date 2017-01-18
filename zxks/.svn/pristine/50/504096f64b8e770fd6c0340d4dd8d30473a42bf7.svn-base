package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Exam;

public interface ExamService {
	public List<Exam> getAll();
	
	public List<Exam> getAllInTime();
	
	public List<Exam> searchByKeyInPage(Page page);
	
	public int countByKey(String key);
	
	public Exam getByPrimaryKey(String examId);
	
	public void updateExam(Exam exam);
	
	public int insertExam(Exam exam);
}
