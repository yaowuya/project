package cn.edu.scau.zxks.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.scau.zxks.entity.Course_information;
import cn.edu.scau.zxks.entity.Dealer;
import cn.edu.scau.zxks.entity.Textbook;
import cn.edu.scau.zxks.service.inter.CouresService4JIMS;
import cn.edu.scau.zxks.service.inter.DealerInter;
import cn.edu.scau.zxks.service.inter.TextbookInter;

@Controller
@RequestMapping("/Controller4Jims")
public class Controller4Jims {
	@Autowired
	TextbookInter textbookInter;
	@Autowired
	DealerInter dealerInter;
	@Autowired
	CouresService4JIMS couresService;
	
	@RequestMapping("/toUrl002")
	public ModelAndView toUrl002(){
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL002);
		List<Textbook> textbookList = textbookInter.queryTextbook("", "111");
		modelAndView.addObject("textbookList", textbookList);
		return modelAndView;
	}
	
	@RequestMapping("/toUrl003")
	public ModelAndView toUrl003(){
		return new ModelAndView(UrlforJims.URL003);
	}
	
	@RequestMapping("/toUrl004")
	public ModelAndView toUrl004(){
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL004);
		List<Textbook> textbookList001 = textbookInter.queryTextbook("", "111");
		modelAndView.addObject("textbookList001", textbookList001);
		List<Dealer> dealerList001 = dealerInter.queryDealer("", "111");
		modelAndView.addObject("dealerList001", dealerList001);
		List<Course_information> courseList = couresService.queryCourseInformation();
		modelAndView.addObject("courseList", courseList);
		return modelAndView;
	}
	
	@RequestMapping("/toUrl005")
	public ModelAndView toUrl005(){
		return new ModelAndView(UrlforJims.URL005);
	}
	
	@RequestMapping("/toUrl006")
	public ModelAndView toUrl006(){
		return new ModelAndView(UrlforJims.URL006);
	}
	
	@RequestMapping("/toUrl009")
	public ModelAndView toUrl009(){
		return new ModelAndView(UrlforJims.URL009);
	}
	
	@RequestMapping("/toUrl0010")
	public ModelAndView toUrl0010(){
		return new ModelAndView(UrlforJims.URL0010);
	}
	
	@RequestMapping("/toUrl0011")
	public ModelAndView toUrl0011(){
		return new ModelAndView(UrlforJims.URL0011);
	}
	
	@RequestMapping("/toUrl0012")
	public ModelAndView toUrl0012(){
		return new ModelAndView("/FinanceBill/create");
	}
	
	@RequestMapping("/toUrl0013")
	public ModelAndView toUrl0013(){
		return new ModelAndView("/QuestionBankExtend/query3");
	}
	
}
