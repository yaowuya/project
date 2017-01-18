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

import cn.edu.scau.zxks.entity.Course_information;
import cn.edu.scau.zxks.entity.Dealer;
import cn.edu.scau.zxks.entity.Reserve;
import cn.edu.scau.zxks.entity.Textbook;
import cn.edu.scau.zxks.service.inter.CouresService4JIMS;
import cn.edu.scau.zxks.service.inter.DealerInter;
import cn.edu.scau.zxks.service.inter.ReserveInter;
import cn.edu.scau.zxks.service.inter.TextbookInter;

@Controller
@RequestMapping("/Reserve")
public class ReserveController {
	@Autowired
	ReserveInter reserveInter;
	@Autowired
	TextbookInter textbookInter;
	@Autowired
	DealerInter dealerInter;
	@Autowired
	CouresService4JIMS couresService;
	
	@RequestMapping("/add")
	public ModelAndView addReserve(Reserve reserve){
		//http://localhost:8080/zxks/test/textbook-buy.jsp
		System.out.println("ReserveController.add");
		System.out.println(reserve.getReserveId()+reserve.getDealerId()+reserve.getTextbookId());
		
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);//年
        int month=cal.get(Calendar.MONTH);//月
        int day=cal.get(Calendar.DATE);//日
		int hour=cal.get(Calendar.HOUR);//时
        int minute=cal.get(Calendar.MINUTE);//分         
        int second=cal.get(Calendar.SECOND);//秒
        reserve.setReserveId("RE"+year+month+day+hour+minute+second);
		reserve.setReserveTime(new Date());
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL004);
		if (reserveInter.addReserve(reserve)) {
			modelAndView.addObject("TextbookBuy","addReserveSuccess");
		} else {
			modelAndView.addObject("TextbookBuy","addReserveError");
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
	@ResponseBody
	public Map<String, Object> queryReserve(String search, String kind){
		//http://localhost:8080/zxks/test/textbook-buy.jsp
		System.out.println("ReserveController.add");
		System.out.println(search+" + "+kind);
		
		Map<String, Object> modelMap = new HashMap<String, Object>(); 
		List<Reserve> reserveList = reserveInter.queryReserve(search, kind);
		if (reserveList != null && reserveList.size()>0) {
			
			Textbook textbook;
			Dealer dealer;
			for(int i=0;i<reserveList.size();i++){
				textbook = textbookInter.queryOne(reserveList.get(i).getTextbookId());
				dealer = dealerInter.queryOne(reserveList.get(i).getDealerId());
				reserveList.get(i).setTextbookName(textbook.getBookname());
				reserveList.get(i).setDealerName(dealer.getDealerName());
			}
			
			modelMap.put("TextbookBuy","queryReserveSuccess");
			modelMap.put("reserveList", reserveList);
		} else {
			modelMap.put("TextbookBuy","queryReserveError");
		}
		
		return modelMap;
	}
	
	@RequestMapping("/query2")
	public ModelAndView query2Reserve(String search, String kind){
		//http://localhost:8080/zxks/test/textbook-stock.jsp
		System.out.println("ReserveController.add");
		System.out.println(search+" + "+kind);
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL006);
		List<Reserve> reserveList = reserveInter.queryReserve(search, kind);
		if (reserveList != null && reserveList.size()>0) {
			
			Textbook textbook;
			Dealer dealer;
			for(int i=0;i<reserveList.size();i++){
				textbook = textbookInter.queryOne(reserveList.get(i).getTextbookId());
				dealer = dealerInter.queryOne(reserveList.get(i).getDealerId());
				reserveList.get(i).setTextbookName(textbook.getBookname());
				reserveList.get(i).setDealerName(dealer.getDealerName());
			}
			
			modelAndView.addObject("TextbookBuy","query2ReserveSuccess");
			modelAndView.addObject("reserveList", reserveList);
		} else {
			modelAndView.addObject("TextbookBuy","query2ReserveError");
		}
		
		return modelAndView;
	}
	
	@RequestMapping("/update")
	public ModelAndView updateReserve(Reserve reserve){
		//http://localhost:8080/zxks/test/textbook-buy.jsp
		System.out.println("ReserveController.update");
		System.out.println(reserve.getReserveId()+reserve.getDealerId()+reserve.getTextbookId());
		
//		Textbook textbook = new Textbook();
//		textbook.setTextbookId(reserve.getTextbookId());
//		textbook.setBookStorage(reserve.getNum());
//		if (textbookInter.updateTextbook(textbook)) {
//			System.out.println("ReserveController.updateTextbookNum Success"+"sum="+reserve.getNum());
//		} else {
//			System.out.println("ReserveController.updateTextbookNum Error");
//		}
		
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL004);
		if (reserveInter.updateReserve(reserve)) {
			modelAndView.addObject("TextbookBuy","updateReserveSuccess");
		} else {
			modelAndView.addObject("TextbookBuy","updateReserveError");
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
