package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.ExamMajorSite;
import cn.edu.scau.zxks.entity.Test_sites;

public interface SiteService {
	List<Test_sites> getAll();
	
	List<ExamMajorSite> getComprehensive();
	
	List<ExamMajorSite> searchKeyInPage(Page page);
	
	List<Test_sites> searchTest_sitesKeyInPage(Page page);
	
	Test_sites findById(String siteId);
	
	int countByKey(String key);
	
	int countByKeyInTestSite(String key);
	
	void updateSite(Test_sites site);
	
	void addSite(Test_sites site);
	
	List<Test_sites> getLatestMsg();

}
