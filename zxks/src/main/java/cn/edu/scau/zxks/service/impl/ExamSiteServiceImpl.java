package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.ExamSiteMapper;
import cn.edu.scau.zxks.dao.Exam_sitesMapper;
import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Exam_sites;
import cn.edu.scau.zxks.entity.Test_sites;
import cn.edu.scau.zxks.service.inter.ExamSiteService;

@Service
public class ExamSiteServiceImpl implements ExamSiteService {
	
	@Autowired
	Exam_sitesMapper exam_sitesMapper;
	
	@Autowired
	ExamSiteMapper examSiteMapper;
	
	@Override
	public Exam_sites getBySiteId(String siteId) {
		return exam_sitesMapper.selectBySiteId(siteId);
	}

	@Override
	public void update(Exam_sites exam_sites) {
		exam_sitesMapper.updateByPrimaryKey(exam_sites);
	}

	@Override
	public int addExamSite(Exam_sites exam_sites) {
		
		int num = exam_sitesMapper.countAll();
		String examSiteId = String.format("%05d", num);
		exam_sites.setExamSiteId(examSiteId);
		return exam_sitesMapper.insert(exam_sites);
	}

	@Override
	public List<Exam_sites> getAll() {
		return exam_sitesMapper.selectAll();
	}

	@Override
	public int countByKey(String key) {
		if(key == null)key = "";
		return examSiteMapper.countByKey(key);
	}

	@Override
	public List<Test_sites> getLatestMsgByKey(Page page) {
		if(page.getKey() == null)page.setKey("");
		return examSiteMapper.searchLatestMsgByKey(page);
	}

	@Override
	public int countLatestMsgByKey(String key) {
		if(key == null)key = "";
		return examSiteMapper.countLatestMsgByKey(key);
	}

	@Override
	public List<Exam_sites> getAllAvailable() {
		return exam_sitesMapper.getAllAvailable();
	}

}
