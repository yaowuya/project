package cn.edu.scau.zxks.controller;

import java.util.Calendar;
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
@RequestMapping("/Dealer")
public class DealerController {
	@Autowired
	DealerInter dealerInter;
	@Autowired
	TextbookInter textbookInter;
	@Autowired
	CouresService4JIMS couresService;
	
	@RequestMapping("/add")
	public ModelAndView addDealer(Dealer dealer){
		//http://localhost:8080/zxks/test/textbook-buy.jsp
		System.out.println("DealerController.add");
		System.out.println(dealer.getDealerId()+dealer.getDealerName()+dealer.getDealerAddress()+dealer.getDealerContacts()+dealer.getDealerPhone());
		
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);//获取年份
        int month=cal.get(Calendar.MONTH);//获取月份
        int day=cal.get(Calendar.DATE);//获取日
		int hour=cal.get(Calendar.HOUR);//小时
        int minute=cal.get(Calendar.MINUTE);//分           
        int second=cal.get(Calendar.SECOND);//秒
		dealer.setDealerId("DR"+year+month+day+hour+minute+second);
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL004);
		if(dealerInter.addDealer(dealer)){
			modelAndView.addObject("TextbookBuy","addDealerSuccess");
		}else{
			modelAndView.addObject("TextbookBuy","addDealerError");
		}
		
		List<Textbook> textbookList001 = textbookInter.queryTextbook("", "111");
		modelAndView.addObject("textbookList001", textbookList001);
		List<Dealer> dealerList001 = dealerInter.queryDealer("", "111");
		modelAndView.addObject("dealerList001", dealerList001);
		List<Course_information> courseList = couresService.queryCourseInformation();
		modelAndView.addObject("courseList", courseList);
		
		return modelAndView;
	}
	
	@RequestMapping("/query")
	public ModelAndView queryDealer(String search, String kind){
		//http://localhost:8080/zxks/test/textbook-buy.jsp
		System.out.println("DealerController.query");
		System.out.println(search+" + "+kind);
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL004);
		List<Dealer> dealerList = dealerInter.queryDealer(search, kind);
		if (dealerList != null && dealerList.size()>0) {
			modelAndView.addObject("TextbookBuy","queryDealerSuccess");
			modelAndView.addObject("dealerList", dealerList);
		} else {
			modelAndView.addObject("TextbookBuy","queryDealerError");
		}
		
		List<Textbook> textbookList001 = textbookInter.queryTextbook("", "111");
		modelAndView.addObject("textbookList001", textbookList001);
		List<Dealer> dealerList001 = dealerInter.queryDealer("", "111");
		modelAndView.addObject("dealerList001", dealerList001);
		List<Course_information> courseList = couresService.queryCourseInformation();
		modelAndView.addObject("courseList", courseList);
		
		return modelAndView;
	}
	
	@RequestMapping("/update")
	public ModelAndView updateDealer(Dealer dealer){
		//http://localhost:8080/zxks/test/textbook-buy.jsp
		System.out.println("DealerController.update");
		System.out.println(dealer.getDealerId()+dealer.getDealerName()+dealer.getDealerAddress()+dealer.getDealerContacts()+dealer.getDealerPhone());
			
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL004);
		if(dealerInter.updateDealer(dealer)){
			modelAndView.addObject("TextbookBuy","updateDealerSuccess");
		}else{
			modelAndView.addObject("TextbookBuy","updateDealerError");
		}
		
		List<Textbook> textbookList001 = textbookInter.queryTextbook("", "111");
		modelAndView.addObject("textbookList001", textbookList001);
		List<Dealer> dealerList001 = dealerInter.queryDealer("", "111");
		modelAndView.addObject("dealerList001", dealerList001);
		List<Course_information> courseList = couresService.queryCourseInformation();
		modelAndView.addObject("courseList", courseList);
		
		return modelAndView;
	}
	
	
	
	
}
