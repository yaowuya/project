package cn.edu.scau.zxks.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Exam;
import cn.edu.scau.zxks.entity.Major_info;
import cn.edu.scau.zxks.exception.UserException;
import cn.edu.scau.zxks.service.inter.ExamService;
import cn.edu.scau.zxks.service.inter.MajorService;

@Controller
@RequestMapping("/exam")
public class ExamController {
	
	@Autowired
	ExamService examService;
	
	@Autowired
	MajorService majorService;
	
	/**
	 * 获取所有考试以及专业，去到exam.jsp页面
	 * @author Pavilion 15
	 * @param model
	 * @return
	 */
	@RequestMapping("/turnToExam")
	public String turnToExam(Model model, String key, String pageNum){
		Page page = new Page();
		page.setCount(examService.countByKey(key));
		//System.out.println(userService.countByKey(key));
		int num = 0;
		if(pageNum != null){
			num = Integer.parseInt(pageNum);
			num--;
		}
		page.setStart(num * page.getSize());
		page.setKey(key);
		page.setList(examService.searchByKeyInPage(page));
		if(page.getList() == null){
			return "error";
		}
		//System.out.println(page.getList().size());
		System.out.println(page.getTotal());
		model.addAttribute("page", page);
		model.addAttribute("key",key);
		model.addAttribute("pageNum", num + 1);
		
		List<Major_info> majorList = majorService.getAll();
		model.addAttribute("majorList", majorList);
		
		return "exam";
	}
	
	/**
	 * 去到考试信息更新页面，并把原本的信息显示出来
	 * @author Pavilion 15
	 * @param model
	 * @param examId
	 * @return
	 */
	@RequestMapping("/turnToUpdateExam")
	public String turnToUpdateExam(Model model, String examId){
		
		Exam exam = examService.getByPrimaryKey(examId);
		
		model.addAttribute("exam", exam);
		
		//让时间显示格式化
		String time = (new SimpleDateFormat("yyyy-MM-dd")).format(exam.getTime());
		model.addAttribute("time", time);
		
		String applyStart = (new SimpleDateFormat("yyyy-MM-dd")).format(exam.getApplyStart());
		model.addAttribute("applyStart", applyStart);
		
		String applyEnd = (new SimpleDateFormat("yyyy-MM-dd")).format(exam.getApplyEnd()); 
		model.addAttribute("applyEnd", applyEnd);
		
		List<Major_info> majorList = majorService.getAll();
		model.addAttribute("majorList", majorList);
		
		return "exam_son";
	}
	
	
	/**
	 * 
	 * 更新考试信息，并回到exam.jsp
	 * @author Pavilion 15
	 * @param model
	 * @param exam
	 * @return
	 */
	@RequestMapping("/updateExam")
	public String updateExam(Model model, Exam exam){
		try{
			examService.updateExam(exam);
		}catch(UserException e){
			Exam tempExam = examService.getByPrimaryKey(exam.getExamId());
			
			model.addAttribute("exam", tempExam);
			
			//让时间显示格式化
			String time = (new SimpleDateFormat("yyyy-MM-dd")).format(tempExam.getTime());
			model.addAttribute("time", time);
			
			String applyStart = (new SimpleDateFormat("yyyy-MM-dd")).format(tempExam.getApplyStart());
			model.addAttribute("applyStart", applyStart);
			
			String applyEnd = (new SimpleDateFormat("yyyy-MM-dd")).format(tempExam.getApplyEnd()); 
			model.addAttribute("applyEnd", applyEnd);
			
			List<Major_info> majorList = majorService.getAll();
			model.addAttribute("majorList", majorList);
			
			model.addAttribute("msg", e.getMessage());
			model.addAttribute("flag", 1);
			
			return "exam_son";
		}
		return "forward:/exam/turnToExam";

	}	
	
	
	/**
	 * 添加新的考试，回到exam.jsp
	 * @author Pavilion 15
	 * @param model
	 * @param exam
	 * @return
	 */
	@RequestMapping("/addExam")
	public String addExam(Model model, Exam exam){
		
		examService.insertExam(exam);
		
		return "forward:/exam/turnToExam";

	}

}
