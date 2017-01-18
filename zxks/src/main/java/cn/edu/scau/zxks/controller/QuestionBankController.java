package cn.edu.scau.zxks.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Questionbank;
import cn.edu.scau.zxks.entity.Questionoutofstorage;
import cn.edu.scau.zxks.entity.Textbook;
import cn.edu.scau.zxks.entity.User;
import cn.edu.scau.zxks.service.inter.QuestionBankInter;
import cn.edu.scau.zxks.service.inter.QuestionoutofstorageInter;
import cn.edu.scau.zxks.service.inter.TextbookInter;

@Controller
@RequestMapping("/QuestionBank")
public class QuestionBankController {
	
	@Autowired
	QuestionBankInter questionBankImpl;
	@Autowired
	QuestionoutofstorageInter questionoutofstorageImpl;
	@Autowired
	TextbookInter textbookInter;
	
	@RequestMapping("/add")
	public ModelAndView add(Questionbank questionbank){
		//http://localhost:8080/zxks/test/topic-manage.jsp
		System.out.println("QuestionBankController.add");
		System.out.println(questionbank.getQuestionbankId()+questionbank.getPaperType()+questionbank.getWriter());
		
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);//年份
        int month=cal.get(Calendar.MONTH);//月份
        int day=cal.get(Calendar.DATE);//日期
		int hour=cal.get(Calendar.HOUR);//小时
        int minute=cal.get(Calendar.MINUTE);//分钟         
        int second=cal.get(Calendar.SECOND);//秒
		questionbank.setQuestionbankId("T"+year+month+day+hour+minute+second);
		questionbank.setUsed(0);
		questionbank.setBorrowed(0);
		questionbank.setStatus(new Byte("0"));
		questionbank.setInTime(new Date());
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL002);
		if(questionBankImpl.addQuestionBank(questionbank)>0)
			modelAndView.addObject("addQuestionBank","addSuccess");
		else{
			
			modelAndView.addObject("addQuestionBank","addError");
		}
		
		List<Textbook> textbookList = textbookInter.queryTextbook("", "111");
		modelAndView.addObject("textbookList", textbookList);
		
		return modelAndView;
	}
	
	@RequestMapping("/query")
	public ModelAndView query(String textbookId, String pageNum){
		System.out.println("QuestionBankController.query");
		System.out.println(textbookId);
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL002);
		Page page = questionBankImpl.searchQuestionBankTestbookId(textbookId, pageNum);
		if(page != null){
			if(pageNum == null)
				modelAndView.addObject("pageNum", "1");
			else
				modelAndView.addObject("pageNum", pageNum);
			modelAndView.addObject("pageSum", page.getTotal());
			modelAndView.addObject("TestbookId", textbookId);
			modelAndView.addObject("questionbankList", page.getList());
			modelAndView.addObject("QuestionBankSum", page.getCount());
			modelAndView.addObject("addQuestionBank","querySuccess");
		}else{
			modelAndView.addObject("addQuestionBank","queryError");
		}
		
		List<Textbook> textbookList = textbookInter.queryTextbook("", "111");
		modelAndView.addObject("textbookList", textbookList);
		
		return modelAndView;
	}
	
	@RequestMapping("/query2")
	@ResponseBody
	public Map<String, Object> query2(String search, String pageNum){
		System.out.println("QuestionBankController.query2");
		System.out.println(search);
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		Page page = questionBankImpl.searchQuestionBankLike(search,pageNum);
		if(page != null){
			System.out.println(page);
			if(pageNum == null)
				modelMap.put("pageNum", "1");
			else
				modelMap.put("pageNum", pageNum);
			modelMap.put("pageSum", page.getTotal());
			modelMap.put("search", search);
			modelMap.put("questionbankList", page.getList());
			
			modelMap.put("addQuestionBank","query2Success");
		}else{
			
			modelMap.put("addQuestionBank","query2Error");
		}
		return modelMap;
	}
	
	@RequestMapping("/query3")
	@ResponseBody
	public Map<String, Object> query3(String TestbookId, String pageNum){
		System.out.println("QuestionBankController.query3");
		System.out.println(TestbookId);
		
		Map<String, Object> modelMap = new HashMap<String, Object>(); 
		Page page = questionBankImpl.search2QuestionBank(TestbookId,pageNum);
		if(page != null){
			System.out.println(page);
			modelMap.put("questionbankList", page.getList());
			//modelMap.put("TestbookId", TestbookId);
			if(pageNum == null)
				modelMap.put("pageNum", "1");
			else
				modelMap.put("pageNum", pageNum);
			modelMap.put("pageSum", page.getTotal());
			
			modelMap.put("Result", "Success");
		}else{
			modelMap.put("Result", "Error");
		}
		return modelMap;
	}
	
	@RequestMapping("/query4")
	@ResponseBody
	public Map<String, Object> query4(String TestbookId){
		System.out.println("QuestionBankController.query4");
		System.out.println(TestbookId);
		
		Map<String, Object> modelMap = new HashMap<String, Object>(); 
		List<Questionbank> questionbankList = questionBankImpl.search3QuestionBank(TestbookId);
		if(questionbankList != null &&questionbankList.size() > 0 ){
			System.out.println(questionbankList);
			modelMap.put("questionbankList", questionbankList);
			modelMap.put("Result", "Success");
		}else{
			modelMap.put("Result", "Error");
		}
		return modelMap;
	}

	@RequestMapping("/queryCanBorrow")
	@ResponseBody
	public Map<String, Object> queryCanBorrow(String search, String pageNum){
		//http://localhost:8080/zxks/test/topic-recruitment.jsp
		System.out.println("QuestionBankController.queryCanBorrow");
		System.out.println(search);
		
		Map<String, Object> modelMap = new HashMap<String, Object>(); 
		Page page = questionBankImpl.searchQuestionCanBorrow(search,pageNum);
		System.out.println("Page:"+page);
		if(page != null){
			modelMap.put("borrowQuestionBank","queryCanBorrowSuccess");
			modelMap.put("search", search);
			if(pageNum == null)
				modelMap.put("pageNum", "1");
			else
				modelMap.put("pageNum", pageNum);
			modelMap.put("pageSum", page.getTotal());
			modelMap.put("questionbankList", page.getList());
		}else{
			modelMap.put("borrowQuestionBank","queryCanBorrowError");
		}
		return modelMap;
	}
	
	@RequestMapping("/queryBeBorrow")
	public ModelAndView queryBeBorrow(String search, String pageNum){
		System.out.println("QuestionBankController.queryBeBorrow");
		System.out.println(search);
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL003);
		Page page = questionoutofstorageImpl.searchOutQuestionoutInPage(search, pageNum);
		
		if(page != null){
			modelAndView.addObject("borrowQuestionBank","queryBeBorrowSuccess");
			modelAndView.addObject("search", search);
			if(pageNum == null)
				modelAndView.addObject("pageNum", 1);
			else
				modelAndView.addObject("pageNum", Integer.parseInt(pageNum));
			modelAndView.addObject("pageSum", page.getTotal());
			modelAndView.addObject("questionoutList", page.getList());
		}else{
			modelAndView.addObject("borrowQuestionBank","queryBeBorrowError");
		}
		return modelAndView;
	}
	
	@RequestMapping("/borrowOrReturn")
	public ModelAndView borrowOrReturnQuestionBank(Questionbank questionbank, String outUserEmail, String inUserEmail, String borrowRecordId, String email, String type, HttpSession session){
		System.out.println("QuestionBankController.borrowOrReturn");
		System.out.println(questionbank.getQuestionbankId());
		System.out.println("borrow or return: "+type);
		
		Questionoutofstorage questionoutofstorage = new Questionoutofstorage();
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL003);
		User  user = (User) session.getAttribute("user");
		
		if(type.equals("Borrow")){
			questionbank.setBorrowed(1);
			Calendar cal = Calendar.getInstance();
			int year = cal.get(Calendar.YEAR);//锟斤拷取锟斤拷锟�
	        int month=cal.get(Calendar.MONTH);//锟斤拷取锟铰凤拷
	        int day=cal.get(Calendar.DATE);//锟斤拷取锟斤拷
			int hour=cal.get(Calendar.HOUR);//小时
	        int minute=cal.get(Calendar.MINUTE);//锟斤拷           
	        int second=cal.get(Calendar.SECOND);//锟斤拷
			questionoutofstorage.setBorrowRecordId("B"+year+month+day+hour+minute+second);
			System.out.println(questionoutofstorage.getBorrowRecordId());
			questionoutofstorage.setEmail(email);
			questionoutofstorage.setQuestionbankId(questionbank.getQuestionbankId());
			questionoutofstorage.setOutUserEmail(user.getEmail());
			questionoutofstorage.setBorrowTime(cal.getTime());
			cal.add(Calendar.DATE, 20);
			questionoutofstorage.setPreReturntime(cal.getTime());
			
			if (questionoutofstorageImpl.addQuestionoutofstorage(questionoutofstorage)>0) {
				modelAndView.addObject("borrowQuestionBank2","borrowSuccess2");
				
				if(questionBankImpl.updateQuestionBank(questionbank)){
					modelAndView.addObject("borrowQuestionBank","borrowOrReturnSuccess1");
				}else{
					modelAndView.addObject("borrowQuestionBank","borrowOrReturnError1");
				}
			} else {
				modelAndView.addObject("borrowQuestionBank2","borrowError2");
			}
		}else{
			System.out.println(borrowRecordId);
			questionbank.setBorrowed(0);
			questionoutofstorage.setBorrowRecordId(borrowRecordId);
			questionoutofstorage.setInUserEmail(user.getEmail());
			questionoutofstorage.setReturenTime(new Date());
			if(questionoutofstorageImpl.updateQuestionoutofstorage(questionoutofstorage)){
				modelAndView.addObject("borrowQuestionBank2","returnSuccess2");
				
				if(questionBankImpl.updateQuestionBank(questionbank)){
					modelAndView.addObject("borrowQuestionBank","borrowOrReturnSuccess1");
				}else{
					modelAndView.addObject("borrowQuestionBank","borrowOrReturnError1");
				}
			}else{
				modelAndView.addObject("borrowQuestionBank2","returnError2");
			}
		}
		
		return modelAndView;
	}
	
	@RequestMapping("/passOrNot")
	public ModelAndView passOrNotQuestionBank(String questionbankId, String type){
		System.out.println("QuestionBankController.pass");
		System.out.println(questionbankId);
		System.out.println("Pass: "+type);
		
		Questionbank questionbank = new Questionbank();
		questionbank.setQuestionbankId(questionbankId);
		if(type.equals("Yes")){
			questionbank.setStatus(new Byte("1"));
		}else{
			questionbank.setStatus(new Byte("3"));
		}
		
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL002);
		
		if(questionBankImpl.updateQuestionBank(questionbank)){
			modelAndView.addObject("addQuestionBank","passOrNotSuccess");
			if(type.equals("Yes")){
				modelAndView.addObject("passOrNot","passSuccess");
			}else{
				modelAndView.addObject("passOrNot","noSuccess");
			}
		}else{
			modelAndView.addObject("addQuestionBank","passOrNotError");
		}
		
		List<Textbook> textbookList = textbookInter.queryTextbook("", "111");
		modelAndView.addObject("textbookList", textbookList);
		
		return modelAndView;
	}
	
	@RequestMapping("/passOrNot2")
	public ModelAndView passOrNotQuestionBank2(String questionbankId, String type){
		System.out.println("QuestionBankController.pass");
		System.out.println(questionbankId);
		System.out.println("Pass: "+type);
		
		Questionbank questionbank = new Questionbank();
		questionbank.setQuestionbankId(questionbankId);
		if(type.equals("Yes")){
			questionbank.setStatus(new Byte("1"));
		}else{
			questionbank.setStatus(new Byte("3"));
		}
		
		
		ModelAndView modelAndView = new ModelAndView("redirect:/QuestionBankExtend/query3");
		
		if(questionBankImpl.updateQuestionBank(questionbank)){
			modelAndView.addObject("addQuestionBank","passOrNotSuccess");
			if(type.equals("Yes")){
				modelAndView.addObject("passOrNot","passSuccess");
			}else{
				modelAndView.addObject("passOrNot","noSuccess");
			}
		}else{
			modelAndView.addObject("addQuestionBank","passOrNotError");
		}
		
		List<Textbook> textbookList = textbookInter.queryTextbook("", "111");
		modelAndView.addObject("textbookList", textbookList);
		
		return modelAndView;
	}
	
	@RequestMapping("/usedQuestionBank")
	public ModelAndView usedQuestionBank(String[] questionbankId, String[] choose){
		System.out.println("QuestionBankController.usedQuestionBank");
		System.out.println(questionbankId.length);
		System.out.println("choose:"+choose);
		
		int j=0 ,q=0;
		ModelAndView modelAndView = new ModelAndView(UrlforJims.URL0011);
		Questionbank questionbank = new Questionbank();
		
		if(choose!=null){
			for(int i=0; i<questionbankId.length; i++){
				for(j=0;j<choose.length;j++){
					if(choose[j].equals(questionbankId[i])){
						System.out.println(choose[j]);
						questionbank.setQuestionbankId(questionbankId[i]);
						questionbank.setUsed(1);
						if(questionBankImpl.updateQuestionBank(questionbank)){
							q++;
						}
					}
				}
			}
			if(q==choose.length){
				modelAndView.addObject("usedQuestionBank", "usedSuccess");
				//System.out.println("ASDASD");
			} else {
				modelAndView.addObject("usedQuestionBank", "usedError1");
			}
		}else{
			modelAndView.addObject("usedQuestionBank", "usedError2");
		}
		
		return modelAndView;
	}
	
}
