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

import cn.edu.scau.zxks.entity.Refund;
import cn.edu.scau.zxks.entity.Textbook_bill;
import cn.edu.scau.zxks.service.inter.RefundInter;
import cn.edu.scau.zxks.service.inter.TextbookbillInter;

@Controller
@RequestMapping("/Refund")
public class RefundController {
	@Autowired
	RefundInter refundInter;
	@Autowired
	TextbookbillInter textbookbillInter;
	
	@RequestMapping("/add")
	public ModelAndView addRefund(Refund refund){
		//http://localhost:8080/zxks/test/textbook-mailreturn.jsp
		System.out.println("RefundController.add");
		System.out.println(refund.getRefundId()+refund.getTextbookIoId()+refund.getTextbookId());
		
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);//获取年份
        int month=cal.get(Calendar.MONTH);//获取月份
        int day=cal.get(Calendar.DATE);//获取日
		int hour=cal.get(Calendar.HOUR);//小时
        int minute=cal.get(Calendar.MINUTE);//分           
        int second=cal.get(Calendar.SECOND);//秒
        refund.setRefundId("TD"+year+month+day+hour+minute+second);
		refund.setRefundTime(new Date());
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL005);
		
		if (refundInter.addRefund(refund)) {
			modelAndView.addObject("Textbookbill", "addRefundSuccess");
		} else {
			modelAndView.addObject("Textbookbill", "addRefundError");
		}
		
		Textbook_bill textbook_bill = new Textbook_bill();
		textbook_bill.setTextbookIoId(refund.getTextbookIoId());
		textbook_bill.setTextbookIocount(-111);
		if (textbookbillInter.updateTextbookbill(textbook_bill)) {
			System.out.println("ReserveController.updateTextbook_bill Success");
		} else {
			System.out.println("ReserveController.updateTextbook_bill Error");
		}
		
		return modelAndView;
	}
	
//	@RequestMapping("/query")
//	public ModelAndView queryRefund(String search, String kind){
//		//http://localhost:8080/zxks/test/textbook-mailreturn.jsp
//		System.out.println("RefundController.add");
//		System.out.println(search+" + "+kind);
//		
//		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL005);
//		List<Refund> refundList = refundInter.queryRefund(search, kind);
//		if (refundList != null && refundList.size()>0) {
//			modelAndView.addObject("Textbookbill", "queryRefundSuccess");
//			modelAndView.addObject("refundList", refundList);
//		} else {
//			modelAndView.addObject("Textbookbill", "queryRefundError");
//		}
//		
//		return modelAndView;
//	}
	
	@RequestMapping("/query")
	@ResponseBody
	public Map<String, Object> queryRefund(String search, String kind){
		//http://localhost:8080/zxks/test/textbook-mailreturn.jsp
		System.out.println("RefundController.add");
		System.out.println(search+" + "+kind);
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		List<Refund> refundList = refundInter.queryRefund(search, kind);
		if (refundList != null && refundList.size()>0) {
			modelMap.put("Textbookbill", "queryRefundSuccess");
			modelMap.put("refundList", refundList);
		} else {
			modelMap.put("Textbookbill", "queryRefundError");
		}
		
		return modelMap;
	}
	
}
