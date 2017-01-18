package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Exam_sites;
import cn.edu.scau.zxks.entity.Test_sites;

public interface ExamSiteService {
	public Exam_sites getBySiteId(String siteId);
	
	public void update(Exam_sites exam_sites);
	
	public int addExamSite(Exam_sites exam_sites);
	
	public List<Exam_sites> getAll();
	
	public List<Exam_sites> getAllAvailable();
	
	public int countByKey(String key);
	
	public List<Test_sites> getLatestMsgByKey(Page page);
	
	public int countLatestMsgByKey(String key);
	
}
