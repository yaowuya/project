package cn.edu.scau.zxks.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Textbook;
import cn.edu.scau.zxks.service.inter.QuestionBankExtendInter;

@Controller
@RequestMapping("/QuestionBankExtend")
public class QuestionBankExtendController {
	@Autowired
	QuestionBankExtendInter questionBankExtendInter;
	
	@RequestMapping("/query")
	public ModelAndView queryQuestionBankExtend(String search){
		//http://localhost:8080/zxks/test/topic-question.jsp
		System.out.println("QuestionBankExtendController.query");
		System.out.println(search);
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL009);
		List<Textbook> questionBankExtendList = questionBankExtendInter.queryQuestionBankExtend(search);
		if(questionBankExtendList.size()>0){
			modelAndView.addObject("QuestionBankExtend","querySuccess");
			modelAndView.addObject("questionBankExtendList", questionBankExtendList);
		}else{
			modelAndView.addObject("QuestionBankExtend","queryError");
		}
		
		return modelAndView;
	}
	
	@RequestMapping("/query2")
	@ResponseBody
	public Map<String, Object> query2QuestionBankExtend(String search){
		//http://localhost:8080/zxks/test/topic-question.jsp
		System.out.println("QuestionBankExtendController.query2");
		System.out.println(search);
		
		Map<String, Object> modelMap = new HashMap<String, Object>(); 
		List<Textbook> questionBankExtendList = questionBankExtendInter.query2QuestionBankExtend(search);
		if(questionBankExtendList.size()>0){
			System.out.println(questionBankExtendList);
			modelMap.put("questionBankExtendList", questionBankExtendList);
			modelMap.put("Result", "Success");
		}else{
			modelMap.put("Result", "Error");
		}
		
		return modelMap;
	}
	
	@RequestMapping("/query3")
	public ModelAndView query3QuestionBankExtend(String pageNum){
		//http://localhost:8080/zxks/test/topic-question.jsp
		System.out.println("QuestionBankExtendController.query3");
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL0013);
		Page page = questionBankExtendInter.query3QuestionBankExtend(pageNum);
		if(page!=null){
			System.out.println(page);
			if(pageNum == null)
				modelAndView.addObject("pageNum", "1");
			else
				modelAndView.addObject("pageNum", pageNum);
			modelAndView.addObject("pageSum", page.getTotal());
			modelAndView.addObject("questionBankExtendList3", page.getList());
			
			modelAndView.addObject("QuestionBankExtend","query3Success");
		}else{
			modelAndView.addObject("QuestionBankExtend","query3Error");
		}
		
		return modelAndView;
	}
	
	@RequestMapping("/query4")
	public ModelAndView query4QuestionBankExtend(String search){
		//http://localhost:8080/zxks/test/topic-topicsample.jsp
		System.out.println("QuestionBankExtendController.query4");
		System.out.println(search);
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL0011);
		List<Textbook> questionBankExtendList = questionBankExtendInter.query2QuestionBankExtend(search);
		if(questionBankExtendList.size()>0){
			modelAndView.addObject("QuestionBankExtend","query4Success");
			modelAndView.addObject("questionBankExtendList4", questionBankExtendList);
		}else{
			modelAndView.addObject("QuestionBankExtend","query4Error");
		}
		
		return modelAndView;
	}
}
