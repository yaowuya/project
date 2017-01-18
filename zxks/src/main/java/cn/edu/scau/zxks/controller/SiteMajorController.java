package cn.edu.scau.zxks.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.scau.zxks.dao.ExamMapper;
import cn.edu.scau.zxks.dao.Exam_sitesMapper;
import cn.edu.scau.zxks.dao.Major_infoMapper;
import cn.edu.scau.zxks.dao.Test_sitesMapper;
import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Exam;
import cn.edu.scau.zxks.entity.Exam_sites;
import cn.edu.scau.zxks.entity.Major_info;
import cn.edu.scau.zxks.entity.Test_sites;
import cn.edu.scau.zxks.service.inter.ExamService;
import cn.edu.scau.zxks.service.inter.ExamSiteService;
import cn.edu.scau.zxks.service.inter.MajorService;
import cn.edu.scau.zxks.service.inter.SiteService;

@Controller
@RequestMapping("/siteMajor")
public class SiteMajorController {
	
	@Autowired
	SiteService siteService;
	
	@Autowired
	ExamSiteService examSiteService;
	
	@Autowired
	ExamService examService;
	
	@Autowired
	MajorService majorService;
	
	/**
	 * 去到考点专业管理页面
	 * @author Pavilion 15
	 * @param model
	 * @return
	 */
	@RequestMapping("/turnToTestMajor")
	public String turnToTestMajor(Model model){
		
		return "forward:/siteMajor/searchMajor";
	}
	
	/**
	 * 去到修改考点专业页面
	 * @author Pavilion 15
	 * @param site
	 * @param majorId
	 * @param model
	 * @return
	 */
	@RequestMapping("/turnToChangeSiteMajor")
	public String turnToChangeSiteMajor(Test_sites site, String majorId, Model model){
		
		site = siteService.findById(site.getSiteId());
		
		List<Major_info> majorList = majorService.getAllInExam();
		
		model.addAttribute("site", site);
		model.addAttribute("majorList", majorList);
		model.addAttribute("majorId", majorId);
		
		return "test_major_son";
	}
	
	/**
	 * 更新考点专业
	 * @author Pavilion 15
	 * @param site
	 * @param major_info
	 * @param model
	 * @return
	 */
	@RequestMapping("/updateSiteMajor")
	public String updateSiteMajor(Test_sites site, Major_info major_info, Model model){
		System.out.println(site.getSiteId());
		System.out.println(major_info.getMajorId());
		
		List<Exam> examList = examService.getAll();
		String examId = "";
		for(int i = 0; i < examList.size(); i++){
			if(examList.get(i).getMajorId().equals(major_info.getMajorId())){
				examId = examList.get(i).getExamId();
				break;
			}
		}
		System.out.println(examId);
		Exam_sites exam_sites = examSiteService.getBySiteId(site.getSiteId());
		if(exam_sites != null){
			exam_sites.setExamId(examId);
			examSiteService.update(exam_sites);
		}
		else{
			exam_sites = new Exam_sites();
			exam_sites.setExamId(examId);
			exam_sites.setSiteId(site.getSiteId());
			examSiteService.addExamSite(exam_sites);
		}
		
		
		return "forward:/siteMajor/searchMajor";
	}
	
	
	@RequestMapping("/searchMajor")
	public String seachMajor(String key, String pageNum, Model model){
		Page page = new Page();
		page.setCount(examSiteService.countLatestMsgByKey(key));
		//System.out.println(userService.countByKey(key));
		int num = 0;
		if(pageNum != null){
			num = Integer.parseInt(pageNum);
			num--;
		}
		page.setStart(num * page.getSize());
		page.setKey(key);
		page.setList(examSiteService.getLatestMsgByKey(page));
		if(page.getList() == null){
			return "error";
		}
		//System.out.println(page.getList().size());
		model.addAttribute("page", page);
		model.addAttribute("key",key);
		model.addAttribute("pageNum", num + 1);
		
		return "test_major";
	}
}
