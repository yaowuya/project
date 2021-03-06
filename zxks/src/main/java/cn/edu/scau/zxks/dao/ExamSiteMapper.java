package cn.edu.scau.zxks.dao;

import java.util.List;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.ExamMajorSite;
import cn.edu.scau.zxks.entity.Test_sites;
	
public interface ExamSiteMapper {
	public List<ExamMajorSite> getComprehensive();
	
	public List<Test_sites> getLatestMsg();
	
	
	public List<ExamMajorSite> searchKeyInPage(Page page);
	
	public List<Test_sites> searchLatestMsgByKey(Page page);
	
	public int countByKey(String key);
	
	public int countLatestMsgByKey(String key);
}
