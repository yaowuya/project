package cn.edu.scau.zxks.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.scau.zxks.dao.Course_informationMapper;
import cn.edu.scau.zxks.entity.Course_information;
import cn.edu.scau.zxks.entity.Dealer;
import cn.edu.scau.zxks.entity.Textbook;
import cn.edu.scau.zxks.service.inter.CouresService4JIMS;
import cn.edu.scau.zxks.service.inter.DealerInter;
import cn.edu.scau.zxks.service.inter.TextbookInter;

@Controller
@RequestMapping("/Textbook")
public class TextbookController {
	@Autowired
	TextbookInter textbookInter;
	@Autowired
	DealerInter dealerInter;
	@Autowired
	CouresService4JIMS couresService;
	
	@RequestMapping("/add")
	public ModelAndView addTextbook(Textbook textbook){
		//http://localhost:8080/zxks/test/textbook-buy.jsp
		System.out.println("TextbookController.add");
		System.out.println(textbook.getTextbookId()+textbook.getCourseId()+textbook.getBookname()+textbook.getBooktype());
		
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);//获取年份
        int month=cal.get(Calendar.MONTH);//获取月份
        int day=cal.get(Calendar.DATE);//获取日
		int hour=cal.get(Calendar.HOUR);//小时
        int minute=cal.get(Calendar.MINUTE);//分           
        int second=cal.get(Calendar.SECOND);//秒
        textbook.setTextbookId("TBK"+year+month+day+hour+minute+second);
		textbook.setBookStorage(0);
		textbook.setIsOverdue("000");
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL004);
		if (textbookInter.addTestbook(textbook)) {
			modelAndView.addObject("TextbookBuy","addTextbookSuccess");
		} else {
			modelAndView.addObject("TextbookBuy","addTextbookError");
		}
		
		List<Textbook> textbookList001 = textbookInter.queryTextbook("", "111");
		modelAndView.addObject("textbookList001", textbookList001);
		List<Dealer> dealerList001 = dealerInter.queryDealer("", "111");
		modelAndView.addObject("dealerList001", dealerList001);
		List<Course_information> courseList = couresService.queryCourseInformation();
		modelAndView.addObject("courseList", courseList);
		
		return modelAndView;
	}
	
//	@RequestMapping("/query")
//	public ModelAndView queryTextbook(String search, String kind){
//		//http://localhost:8080/zxks/test/textbook-stock.jsp
//		System.out.println("TextbookController.query");
//		System.out.println(search+" + "+kind);
//		
//		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL004);
//		List<Textbook> textbookList = textbookInter.queryTextbook(search, kind);
//		if (textbookList != null && textbookList.size()>0) {
//			modelAndView.addObject("TextbookBuy","queryTextbookSuccess");
//			modelAndView.addObject("textbookList", textbookList);
//		} else {
//			modelAndView.addObject("TextbookBuy","queryTextbookError");
//		}
//		
//		List<Textbook> textbookList001 = textbookInter.queryTextbook("", "111");
//		modelAndView.addObject("textbookList001", textbookList001);
//		List<Dealer> dealerList001 = dealerInter.queryDealer("", "111");
//		modelAndView.addObject("dealerList001", dealerList001);
//		List<Course_information> courseList = couresService.queryCourseInformation();
//		modelAndView.addObject("courseList", courseList);
//		
//		return modelAndView;
//	}
	
	@RequestMapping("/query")
	@ResponseBody
	public Map<String, Object> queryTextbook(String search, String kind){
		//http://localhost:8080/zxks/test/textbook-stock.jsp
		System.out.println("TextbookController.query");
		System.out.println(search+" + "+kind);
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		List<Textbook> textbookList = textbookInter.queryTextbook(search, kind);
		if (textbookList != null && textbookList.size()>0) {
			
			List<Course_information> courseList = couresService.queryCourseInformation();
			Course_information course;
			for(int i=0;i<textbookList.size();i++){
				course = couresService.queryOne(textbookList.get(i).getCourseId());
				textbookList.get(i).setCourseName(course.getCourseName());
			}
			
			modelMap.put("TextbookBuy","queryTextbookSuccess");
			modelMap.put("textbookList", textbookList);
		} else {
			modelMap.put("TextbookBuy","queryTextbookError");
		}
		
		return modelMap;
	}
	
	@RequestMapping("/query2")
	public ModelAndView query2Textbook(String search, String kind){
		//http://localhost:8080/zxks/test/textbook-buy.jsp
		System.out.println("TextbookController.query2");
		System.out.println(search+" + "+kind);
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL006);
		List<Textbook> textbookList = textbookInter.queryTextbook(search, kind);
		if (textbookList != null && textbookList.size()>0) {
			
			List<Course_information> courseList = couresService.queryCourseInformation();
			Course_information course;
			for(int i=0;i<textbookList.size();i++){
				course = couresService.queryOne(textbookList.get(i).getCourseId());
				textbookList.get(i).setCourseName(course.getCourseName());
			}
			
			modelAndView.addObject("TextbookBuy","query2TextbookSuccess");
			modelAndView.addObject("textbookList", textbookList);
		} else {
			modelAndView.addObject("TextbookBuy","query2TextbookError");
		}
		return modelAndView;
	}
	
	@RequestMapping("/query3")
	public ModelAndView query3Textbook(String search, String kind){
		//http://localhost:8080/zxks/test/textbook-mailreturn.jsp
		System.out.println("TextbookController.query3");
		System.out.println(search+" + "+kind);
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL005);
		List<Textbook> textbookList = textbookInter.queryTextbook(search, kind);
		if (textbookList != null && textbookList.size()>0) {
			
			List<Course_information> courseList = couresService.queryCourseInformation();
			Course_information course;
			for(int i=0;i<textbookList.size();i++){
				course = couresService.queryOne(textbookList.get(i).getCourseId());
				textbookList.get(i).setCourseName(course.getCourseName());
			}
			
			modelAndView.addObject("Textbookbill","query3TextbookSuccess");
			modelAndView.addObject("textbookList", textbookList);
		} else {
			modelAndView.addObject("Textbookbill","query3TextbookError");
		}
		return modelAndView;
	}
	
	@RequestMapping("/query4")
	public ModelAndView query4Textbook(String search, String kind){
		//http://localhost:8080/zxks/test/textbook-putin.jsp
		System.out.println("TextbookController.query");
		System.out.println(search+" + "+kind);
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL0010);
		List<Textbook> textbookList = textbookInter.queryTextbook(search, kind);
		if (textbookList != null && textbookList.size()>0) {
			
			List<Course_information> courseList = couresService.queryCourseInformation();
			Course_information course;
			for(int i=0;i<textbookList.size();i++){
				course = couresService.queryOne(textbookList.get(i).getCourseId());
				textbookList.get(i).setCourseName(course.getCourseName());
			}
			
			modelAndView.addObject("TextbookBuy","query4TextbookSuccess");
			modelAndView.addObject("textbookList4", textbookList);
		} else {
			modelAndView.addObject("TextbookBuy","query4TextbookError");
		}
		return modelAndView;
	}
	
	@RequestMapping("/query5")
	public ModelAndView query5Textbook(String search, String kind){
		//http://localhost:8080/zxks/test/textbook-putin.jsp
		System.out.println("TextbookController.query");
		System.out.println(search+" + "+kind);
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL0010);
		List<Textbook> textbookList = textbookInter.queryTextbook(search, kind);
		if (textbookList != null && textbookList.size()>0) {
			
			List<Course_information> courseList = couresService.queryCourseInformation();
			Course_information course;
			for(int i=0;i<textbookList.size();i++){
				course = couresService.queryOne(textbookList.get(i).getCourseId());
				textbookList.get(i).setCourseName(course.getCourseName());
			}
			
			modelAndView.addObject("TextbookBuy","query5TextbookSuccess");
			modelAndView.addObject("textbookList5", textbookList);
		} else {
			modelAndView.addObject("TextbookBuy","query5TextbookError");
		}
		return modelAndView;
	}
	
	@RequestMapping("/update")
	public ModelAndView updateTextbook(Textbook textbook){
		//http://localhost:8080/zxks/test/textbook-buy.jsp
		System.out.println("TextbookController.update");
		System.out.println(textbook.getTextbookId()+textbook.getCourseId()+textbook.getBookname()+textbook.getBooktype());
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL004);
		if (textbookInter.updateTextbook(textbook)) {
			modelAndView.addObject("TextbookBuy","updateTextbookSuccess");
		} else {
			modelAndView.addObject("TextbookBuy","updateTextbookError");
		}
		
		List<Textbook> textbookList001 = textbookInter.queryTextbook("", "111");
		modelAndView.addObject("textbookList001", textbookList001);
		List<Dealer> dealerList001 = dealerInter.queryDealer("", "111");
		modelAndView.addObject("dealerList001", dealerList001);
		List<Course_information> courseList = couresService.queryCourseInformation();
		modelAndView.addObject("courseList", courseList);
		
		return modelAndView;
	}
	
	@RequestMapping("/update2")
	public ModelAndView update2Textbook(Textbook textbook){
		//http://localhost:8080/zxks/test/textbook-putin.jsp
		System.out.println("TextbookController.update");
		System.out.println(textbook.getTextbookId()+textbook.getCourseId()+textbook.getBookname()+textbook.getBooktype());
		
		textbook.setOverdueTime(new Date());
		textbook.setIsOverdue("111");
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL0010);
		if (textbookInter.updateTextbook(textbook)) {
			modelAndView.addObject("TextbookBuy","update2TextbookSuccess");
		} else {
			modelAndView.addObject("TextbookBuy","update2TextbookError");
		}
		
		return modelAndView;
	}
	
	@RequestMapping("/update3")
	public ModelAndView update3Textbook(Textbook textbook){
		//http://localhost:8080/zxks/test/textbook-putin.jsp
		System.out.println("TextbookController.update");
		System.out.println(textbook.getTextbookId());
		
		textbook.setOverdueTime(new Date());
		textbook.setIsOverdue("000");
		textbook.setOverdueReason(" ");
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL0010);
		if (textbookInter.updateTextbook(textbook)) {
			modelAndView.addObject("TextbookBuy","update3TextbookSuccess");
		} else {
			modelAndView.addObject("TextbookBuy","update3TextbookError");
		}
		
		return modelAndView;
	}
	
	@RequestMapping("/update4")
	public ModelAndView update4Textbook(Textbook textbook, int addsum){
		//http://localhost:8080/zxks/test/textbook-putin.jsp
		System.out.println("TextbookController.update");
		System.out.println(textbook.getTextbookId());
		
		textbook.setBookStorage(textbook.getBookStorage()-addsum);
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL0010);
		if (textbookInter.updateTextbook(textbook)) {
			modelAndView.addObject("TextbookBuy","update4TextbookSuccess");
		} else {
			modelAndView.addObject("TextbookBuy","update4TextbookError");
		}
		
		return modelAndView;
	}
	
	@RequestMapping("/update5")
	public ModelAndView update5Textbook(Textbook textbook, int addsum){
		//http://localhost:8080/zxks/test/textbook-putin.jsp
		System.out.println("TextbookController.update");
		System.out.println(textbook.getTextbookId());
		
		textbook.setBookStorage(textbook.getBookStorage()+addsum);
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL0010);
		if (textbookInter.updateTextbook(textbook)) {
			modelAndView.addObject("TextbookBuy","update5TextbookSuccess");
		} else {
			modelAndView.addObject("TextbookBuy","update5TextbookError");
		}
		
		return modelAndView;
	}
}
