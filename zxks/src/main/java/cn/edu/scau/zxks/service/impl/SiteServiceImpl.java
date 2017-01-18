package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.ExamSiteMapper;
import cn.edu.scau.zxks.dao.Exam_sitesMapper;
import cn.edu.scau.zxks.dao.Test_sitesMapper;
import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.ExamMajorSite;
import cn.edu.scau.zxks.entity.Exam_sites;
import cn.edu.scau.zxks.entity.Test_sites;
import cn.edu.scau.zxks.service.inter.SiteService;

@Service
public class SiteServiceImpl implements SiteService {
	
	private String cityNum = "01";
	private String townNum = "01";
	
	@Autowired
	private Test_sitesMapper test_sitesMapper;
	
	@Autowired
	private ExamSiteMapper examSiteMapper;
	
	@Autowired
	private Exam_sitesMapper exam_sitesMapper;
	
	@Override
	public List<Test_sites> getAll() {
		return test_sitesMapper.selectAll();
	}
	
	@Override
	public List<ExamMajorSite> getComprehensive() {
		return examSiteMapper.getComprehensive();
	}

	@Override
	public Test_sites findById(String siteId) {
		return test_sitesMapper.selectByPrimaryKey(siteId);
	}

	@Override
	public void updateSite(Test_sites site) {

		//修改考点信息
		test_sitesMapper.updateByPrimaryKey(site);
		
		if(!site.getSiteState().equals("0001")){
			Exam_sites examSites = exam_sitesMapper.selectBySiteId(site.getSiteId());
			examSites.setExamId(null);
		}
		
	}

	@Override
	public void addSite(Test_sites site) {
		// TODO Auto-generated method stub
		int num = test_sitesMapper.countAll();
		String siteId = String.format("%04d", num);
		site.setSiteId(cityNum + townNum + siteId);
		test_sitesMapper.insert(site);
	}

	@Override
	public List<Test_sites> getLatestMsg() {
		return examSiteMapper.getLatestMsg();
	}

	@Override
	public List<ExamMajorSite> searchKeyInPage(Page page) {
		if(page.getKey() == null)page.setKey("");
		return examSiteMapper.searchKeyInPage(page);
	}

	@Override
	public int countByKey(String key) {
		if(key == null)key = "";
		return examSiteMapper.countByKey(key);
	}

	@Override
	public List<Test_sites> searchTest_sitesKeyInPage(Page page) {
		if(page.getKey() == null)page.setKey("");
		return test_sitesMapper.searchByKeyInPage(page);
	}

	@Override
	public int countByKeyInTestSite(String key) {
		if( key == null) key = "";
		return test_sitesMapper.countByKey(key);
	}


}
