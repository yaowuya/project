package cn.edu.scau.zxks.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Course_information;
import cn.edu.scau.zxks.entity.Major_info;
import cn.edu.scau.zxks.entity.School_information;
import cn.edu.scau.zxks.entity.Test_site_state;
import cn.edu.scau.zxks.service.inter.CourseService;
import cn.edu.scau.zxks.service.inter.MajorService;
import cn.edu.scau.zxks.service.inter.SchoolService;
import cn.edu.scau.zxks.service.inter.SiteStateService;

@Controller
@RequestMapping("/course")
public class CourseController {
	
	@Autowired
	CourseService courseService;
	
	@Autowired
	MajorService majorService;
	
	@Autowired
	SchoolService schoolService;
	
	@Autowired
	SiteStateService siteStateService;
	
	/**
	 * 去到courseManage.jsp页面，并把课程列表、专业列表、学校列表、考点状态列表传给前台页面
	 * @author Pavilion 15
	 * @param model
	 * @return
	 */
	@RequestMapping("/turnToCourseManage")
	public String turnToCourseManage(Model model, String key, String pageNum){
		
		Page page = new Page();
		page.setCount(courseService.countCourseByKey(key));
		//System.out.println(userService.countByKey(key));
		int num = 0;
		if(pageNum != null){
			num = Integer.parseInt(pageNum);
			num--;
		}
		page.setStart(num * page.getSize());
		page.setKey(key);
		page.setList(courseService.searchCourseByKeyInPage(page));
		if(page.getList() == null){
			return "error";
		}
		//System.out.println(page.getList().size());
		model.addAttribute("page", page);
		model.addAttribute("key",key);
		model.addAttribute("pageNum", num + 1);
/*		
		List<Course_information> courseList = courseService.getAll();
		model.addAttribute("courseList", courseList);
		*/
		List<Major_info> majorList = majorService.getAll();
		model.addAttribute("majorList", majorList);
		
		List<School_information> schoolList = schoolService.getAll();
		model.addAttribute("schoolList", schoolList);
		
		List<Test_site_state> stateList = siteStateService.getAll();
		model.addAttribute("stateList", stateList);
		
		return "courseManage";
	}
	
	
	/**
	 * 去到更新课程的页面，同时把课程信息，专业信息，学校信息，考点状态信息传给前台页面
	 * @author Pavilion 15
	 * @param model
	 * @param courseId
	 * @return
	 */
	@RequestMapping("/turnToUpdateCourse")
	public String turnToUpdateCourse(Model model, String courseId){
		
		Course_information course = courseService.getById(courseId);
		model.addAttribute("course", course);
		
		List<Major_info> majorList = majorService.getAll();
		model.addAttribute("majorList", majorList);
		
		List<School_information> schoolList = schoolService.getAll();
		model.addAttribute("schoolList", schoolList);
		
		List<Test_site_state> stateList = siteStateService.getAll();
		model.addAttribute("stateList", stateList);
		
		return "course_manage_son";
	}
	
	
	/**
	 * 根据前台传送的信息修改课程信息
	 * @author Pavilion 15
	 * @param model
	 * @param course
	 * @return
	 */
	@RequestMapping("/updateCourse")
	public String updateCourse(Model model, Course_information course){
		
		courseService.update(course);
		
		return "forward:/course/turnToCourseManage";
	}
	
	/**
	 * 根据前台传送的数据添加课程信息
	 * @author Pavilion 15
	 * @param model
	 * @param course
	 * @return
	 */
	@RequestMapping("/addCourse")
	public String addCourse(Model model, Course_information course){
		
		courseService.addCourse(course);
		
		
		return "forward:/course/turnToCourseManage";
	}
	
}
