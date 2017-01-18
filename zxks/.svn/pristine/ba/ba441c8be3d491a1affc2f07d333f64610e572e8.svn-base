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

import cn.edu.scau.zxks.entity.Textbook;
import cn.edu.scau.zxks.entity.Textbook_bill;
import cn.edu.scau.zxks.service.inter.TextbookInter;
import cn.edu.scau.zxks.service.inter.TextbookbillInter;

@Controller
@RequestMapping("/Textbookbill")
public class TextbookbillController {
	@Autowired
	TextbookbillInter textbookbillInter;
	@Autowired
	TextbookInter textbookInter;
	
	@RequestMapping("/add")
	public ModelAndView addTextbookbill(Textbook_bill textbook_bill){
		//http://localhost:8080/zxks/test/textbook-mailreturn.jsp
		System.out.println("TextbookbillController.add");
		System.out.println(textbook_bill.getTextbookId()+textbook_bill.getTextbookIoId());
		
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);//获取年份
        int month=cal.get(Calendar.MONTH);//获取月份
        int day=cal.get(Calendar.DATE);//获取日
		int hour=cal.get(Calendar.HOUR);//小时
        int minute=cal.get(Calendar.MINUTE);//分           
        int second=cal.get(Calendar.SECOND);//秒
        textbook_bill.setTextbookIoId("TB"+year+month+day+hour+minute+second);
		textbook_bill.setTextbookIotime(new Date());
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL005);
		if (textbookbillInter.addTextbookbill(textbook_bill)) {
			modelAndView.addObject("Textbookbill", "addSuccess");
		} else {
			modelAndView.addObject("Textbookbill", "addError");
		}
		
//		Textbook textbook = new Textbook();
//		textbook.setTextbookId(textbook_bill.getTextbookId());
//		textbook.setBookStorage(textbookInter.textbookSum(textbook_bill.getTextbookId())-textbook_bill.getTextbookIocount());
//		if (textbookInter.updateTextbook(textbook)) {
//			System.out.println("ReserveController.updateTextbookNum Success");
//		} else {
//			System.out.println("ReserveController.updateTextbookNum Error");
//		}
		
		return modelAndView;
	}
	
	@RequestMapping("/query")
	public ModelAndView queryTextbookbill(String search, String kind){
		//http://localhost:8080/zxks/test/textbook-mailreturn.jsp
		System.out.println("TextbookbillController.query");
		System.out.println(search+" + "+kind);
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL005);
		List<Textbook_bill> textbook_billList = textbookbillInter.queryTextbookbill(search, kind);
		if (textbook_billList != null && textbook_billList.size()>0) {
			modelAndView.addObject("Textbookbill","querySuccess");
			modelAndView.addObject("textbook_billList", textbook_billList);
		} else {
			modelAndView.addObject("Textbookbill", "queryError");
		}
		return modelAndView;
	}
	
//	@RequestMapping("/query2")
//	public ModelAndView query2Textbookbill(String search, String kind){
//		//http://localhost:8080/zxks/test/textbook-mailreturn.jsp
//		System.out.println("TextbookbillController.query2");
//		System.out.println(search+" + "+kind);
//		
//		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL005);
//		List<Textbook_bill> textbook_billList = textbookbillInter.query2Textbookbill(search, kind);
//		if (textbook_billList != null && textbook_billList.size()>0) {
//			modelAndView.addObject("Textbookbill","query2Success");
//			modelAndView.addObject("textbook_billList2", textbook_billList);
//		} else {
//			modelAndView.addObject("Textbookbill", "query2Error");
//		}
//		return modelAndView;
//	}
	@RequestMapping("/query2")
	@ResponseBody
	public Map<String, Object> query2Textbookbill(String search, String kind){
		//http://localhost:8080/zxks/test/textbook-mailreturn.jsp
		System.out.println("TextbookbillController.query2");
		System.out.println(search+" + "+kind);
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		List<Textbook_bill> textbook_billList = textbookbillInter.query2Textbookbill(search, kind);
		if (textbook_billList != null && textbook_billList.size()>0) {
			modelMap.put("Textbookbill","query2Success");
			modelMap.put("textbook_billList", textbook_billList);
			//System.out.print(textbook_billList);
		} else {
			modelMap.put("Textbookbill", "query2Error");
		}
		return modelMap;
	}
	
//	@RequestMapping("/query3")
//	public ModelAndView query3Textbookbill(String search, String kind){
//		//http://localhost:8080/zxks/test/textbook-stock.jsp
//		System.out.println("TextbookbillController.query3");
//		System.out.println(search+" + "+kind);
//		
//		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL006);
//		List<Textbook_bill> textbook_billList = textbookbillInter.queryTextbookbill(search, kind);
//		if (textbook_billList != null && textbook_billList.size()>0) {
//			modelAndView.addObject("Textbookbill","query3Success");
//			modelAndView.addObject("textbook_billList3", textbook_billList);
//		} else {
//			modelAndView.addObject("Textbookbill", "query3Error");
//		}
//		return modelAndView;
//	}
	
	@RequestMapping("/query3")
	@ResponseBody
	public Map<String, Object> query3Textbookbill(String search, String kind){
		//http://localhost:8080/zxks/test/textbook-stock.jsp
		System.out.println("TextbookbillController.query3");
		System.out.println(search+" + "+kind);
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		List<Textbook_bill> textbook_billList = textbookbillInter.queryTextbookbill(search, kind);
		if (textbook_billList != null && textbook_billList.size()>0) {
			modelMap.put("Textbookbill","query3Success");
			modelMap.put("textbook_billList", textbook_billList);
		} else {
			modelMap.put("Textbookbill", "query3Error");
		}
		return modelMap;
	}
	
	@RequestMapping("/update")
	public ModelAndView updateTextbookbill(Textbook_bill textbook_bill){
		//http://localhost:8080/zxks/test/textbook-mailreturn.jsp
		System.out.println("TextbookbillController.update");
		System.out.println(textbook_bill.getTextbookId()+textbook_bill.getTextbookIoId());
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL005);
		if (textbookbillInter.updateTextbookbill(textbook_bill)) {
			modelAndView.addObject("Textbookbill","updateSuccess");
		} else {
			modelAndView.addObject("Textbookbill","updateError");
		}
		
		return modelAndView;
	}
	
	
	
}
