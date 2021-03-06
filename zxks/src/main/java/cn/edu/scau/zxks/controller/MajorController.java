package cn.edu.scau.zxks.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Major_info;
import cn.edu.scau.zxks.entity.School_information;
import cn.edu.scau.zxks.service.inter.MajorService;
import cn.edu.scau.zxks.service.inter.SchoolService;

@Controller
@RequestMapping("/major")
public class MajorController {
	
	@Autowired
	MajorService majorService;
	
	@Autowired
	SchoolService schoolService;
	
	/**
	 * 去到专业管理页面，获取专业列表和学校列表
	 * @author Pavilion 15
	 * @param model
	 * @return
	 */
	@RequestMapping("/turnToMajorManager")
	public String turnToMajorManager(Model model, String pageNum){
		List<Major_info> majorList = majorService.getAll();
		List<School_information> schoolList = schoolService.getAll();
		
		Page page = new Page();
		page.setCount(majorService.countAll());
		
		int num = 0;
		
		if(pageNum != null) {
			num = Integer.parseInt(pageNum);
			num--;
		}
		page.setStart(num * page.getSize());
		majorList = majorService.searchAll(page);
		page.setList(majorList);
		
		model.addAttribute("majorList", majorList);
		model.addAttribute("schoolList", schoolList);	
		model.addAttribute("page", page);
		model.addAttribute("pageNum", num + 1);
		return "majorManager";
	}
	
	/**
	 * 去到专业更新页面
	 * @author Pavilion 15
	 * @param model
	 * @param majorId
	 * @return
	 */
	@RequestMapping("/turnToUpdateMajor")
	public String turnToUpdateMajor(Model model, String majorId){
		Major_info major = majorService.getById(majorId);
		List<School_information> schoolList = schoolService.getAll();
		
		model.addAttribute("major", major);
		model.addAttribute("schoolList", schoolList);
		return "majorManager_son";
	}
	
	/**
	 * 更新前端传过来的专业信息，并转到专业管理页面
	 * @author Pavilion 15
	 * @param model
	 * @param major_info
	 * @return
	 */
	@RequestMapping("/updateMajor")
	public String updateMajor(Model model, Major_info major_info){
		majorService.update(major_info);
		return "redirect:/major/turnToMajorManager";
	}
	
	
	/**
	 * 添加专业，并转到专业管理页面
	 * @author Pavilion 15
	 * @param model
	 * @param major_info
	 * @return
	 */
	@RequestMapping("/addMajor")
	public String addMajor(Model model, Major_info major_info){
		System.out.println(major_info);
		majorService.addMajor(major_info);
		return "redirect:/major/turnToMajorManager";
	}
	
	@RequestMapping("/deleteMajor")
	public String deleteMajor(Major_info major_info, Model model){
		
		try{
			majorService.deleteMajor(major_info.getMajorId());
		}catch(Exception e){
			System.out.println("不能删除该专业");
		}
		
		return "redirect:/major/turnToMajorManager";
	}
	
	/**
	 * 带查询条件的分页
	 * @author Pavilion 15
	 * @param key
	 * @param model
	 * @param pageNum
	 * @return
	 */
	@RequestMapping("/searchMajor")
	public String searchMajor(String key, Model model, String pageNum){
		List<Major_info> majorList = null;
		
		Page page = new Page();
		
		//设置当前条件下一共有多少条数据
		page.setCount(majorService.countByKey(key));
		
		//设置查询条件
		page.setKey(key);
		
		int num = 0;
		if(pageNum != null) {
			num = Integer.parseInt(pageNum);
			num--;
		}
		
		page.setStart(num * page.getSize());
		majorList = majorService.searchByKeyInPage(page);
		page.setList(majorList);
		
		//传递当前页码
		model.addAttribute("pageNum", num + 1);
		
		List<School_information> schoolList = schoolService.getAll();
		
		model.addAttribute("majorList", majorList);
		model.addAttribute("schoolList", schoolList);
		model.addAttribute("key", key);
		model.addAttribute("page", page);
		
		return "majorManager";
	}
}
