package cn.edu.scau.zxks.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.dto.Result;
import cn.edu.scau.zxks.entity.Exam_apply;
import cn.edu.scau.zxks.entity.Graduation_information;
import cn.edu.scau.zxks.entity.Student;
import cn.edu.scau.zxks.entity.StudentMessage;
import cn.edu.scau.zxks.entity.Study_abroad;
import cn.edu.scau.zxks.entity.User;
import cn.edu.scau.zxks.exception.ERNMException;
import cn.edu.scau.zxks.exception.UserException;
import cn.edu.scau.zxks.service.inter.ExamRegistNumManage;
import cn.edu.scau.zxks.utill.CommonUtills;

@Controller
@RequestMapping("/ERNM")
public class ExamRegistNum 
{
	@Autowired
	private ExamRegistNumManage eRNM;

	public ExamRegistNum() 
	{
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping("/skip1")
	public String skip1()
	{
		try{
			
		}catch(UserException e){
			
		}	
		return "ToBeforeGraduate";
	}

	@RequestMapping("/skip2")
	public String skip2()
	{
		try{
			
		}catch(UserException e){
			
		}	
		return "handleGraduateQua";
	}
	
	@RequestMapping("/skip3")
	public String skip3()
	{
		try{
			
		}catch(UserException e){
			
		}	
		return "LostRecord";
	}
	
	@RequestMapping("/skip4")
	public String skip4()
	{
		try{
			
		}catch(UserException e){
			
		}	
		return "Abroadnews";
	}
	
	@RequestMapping("/AAS")
	public String addAbroadStu(Model model, Study_abroad studyAbroad)		//��ӳ���ѧ����Ϣ
	{
		
		
		String success = eRNM.addGoAbroadMessage(studyAbroad);
		if(success.equals("success"))
		{
			return "Abroadnews";
		}
		else
		{
			model.addAttribute("state", 1);
			return "Abroadnews";
		}
	}
	
	@RequestMapping("/QASM")
	@ResponseBody
	public Map<String, Object> quaryAbroadStuMes(String studentId)	//��ѯ����ѧ����Ϣ
	{		
		Map<String, Object> modelMap = new HashMap<String, Object>(6);
		try
		{
			Student student = eRNM.quaryStudentMessage(studentId);
			String majorName = eRNM.quaryMajorName(student.getMajorId());
			List<Study_abroad> studyAbroad = eRNM.quaryAbroadMessage(studentId);
			User user = eRNM.quaryStuUser(student.getEmail());

			
			modelMap.put("user", user);
			modelMap.put("studyAbroad", studyAbroad.get(0));
			modelMap.put("student", student);
			modelMap.put("majorName", majorName);
			modelMap.put("statu", 0);		
			return modelMap;
		}
		catch(Exception e)
		{
			modelMap.put("statu", 1);
			return modelMap;
		}
	}
	
	@RequestMapping("/AASM")		
	@ResponseBody
	public Map<String, Object> alterAbroadStuMes(String id)					//��ѯ����ѧ����Ϣ
	{
		//ModelAndView modelAndView = new ModelAndView("/Abroadnews");
		Map<String, Object> modelMap = new HashMap<String, Object>(6);
		try
		{
			System.out.println(id);
			
			
			
			Student student = eRNM.quaryStudentMessage(id);
			String majorName = eRNM.quaryMajorName(student.getMajorId());
			List<Study_abroad> studyAbroad = eRNM.quaryAbroadMessage(id);
			User user = eRNM.quaryStuUser(student.getEmail());
			System.out.println(user.getGender());
			System.out.println(majorName);
			
			modelMap.put("searchUser", user);
			modelMap.put("searchStudyAbroad", studyAbroad.get(0));
			modelMap.put("searchStudent", student);
			modelMap.put("searchMajorName", majorName);
			
			modelMap.put("statu", 1);
			return modelMap;	
			
		}
		catch(Exception e)
		{
			modelMap.put("statu", 0);
			return modelMap;
		}
		/*return null;*/
	}
	
	@RequestMapping("/AASM2")		
	@ResponseBody
	public Map<String, Object> alterAbroadStuMes2(String id, String studentId, String country, String school)					//��ѯ����ѧ����Ϣ
	{		
		Study_abroad stuAbroad = new Study_abroad();
		stuAbroad.setStuNum(studentId);
		stuAbroad.setDestinationC(country);
		stuAbroad.setDestinationS(school);
		
		if (id.equals("changeMes"))
		{
			eRNM.alterAbroadMessage(stuAbroad);
		}
		else if(id.equals("delMes"))
		{
			eRNM.delAbroadMessage(studentId);
		}
	
		Map<String, Object> modelMap = new HashMap<String, Object>(6);	
		
		return modelMap;
		
	}
	
	
	@RequestMapping("/CSTBG")
	@ResponseBody				/***/
	public Map<String, Object> changeStuToBeforeGraduate(String studentId)	//��ӱ�ҵԤ����
	{
		Map<String, Object> modelMap = new HashMap<String, Object>(1);
		try
		{
			Student student = eRNM.quaryStudentMessage(studentId);
			if(student == null)
			{
				modelMap.put("state", 0);
			}
			else if(student.getExamScore() == null||student.getEssayRemark() == null)
			{
				throw new Exception("ee");
			}
			else
			{
				eRNM.addBeforeStudent(studentId);
				modelMap.put("state", 1);
			}			
			return modelMap;
		}
		catch(Exception e)
		{
			modelMap.put("state", 2);
			return modelMap;
		}
	}
	
	@RequestMapping("/QBGM")	
	public ModelAndView quaryBeforeGraduateMes(@RequestParam String actionPP, String alterStudentId)		//��ѯ��ҵԤ����δ��ɣ�
	{
		ModelAndView modelAndView = new ModelAndView("/BeforeGraduate");
		try
		{
			User user = eRNM.quaryBeforeGraduateUser(alterStudentId);
			List<Exam_apply> examApplyList = eRNM.quaryBeforeGraduateExamMes(alterStudentId);
			List<String> siteName = eRNM.quarytestSiteName(examApplyList);
			
			modelAndView.addObject("user", user);
			modelAndView.addObject("examApplyList", examApplyList);
			modelAndView.addObject("siteName", siteName);
			
			return modelAndView;
			
		}
		catch(ERNMException e)
		{
			return null;
		}	
	}
	
	@RequestMapping("/DSTBG")
	public void delStuToBeforeGraduate(String studentId)	//ɾ���ҵԤ����
	{
		try
		{
			eRNM.addBeforeStudent(studentId);
		}
		catch(ERNMException e)
		{
			
		}
	}
	
	@RequestMapping("/ALM")
	public String addLostMessage(String studentName, String studentId, String major, String lostTime, String A1, String A2, String A3)
	{
		try
		{
		
			String id = CommonUtills.generateID();
			Graduation_information graduationInfo = new Graduation_information();
			
			SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd" );
			Date date = sdf.parse(lostTime);
			StringBuffer lostMessage = new StringBuffer();
			
			
			if(A1!=null)
			{
				lostMessage.append("��ҵ֤");
			}
			if(A2 != null)
			{
				lostMessage.append("ͳ���ϸ�֤");
			}
			if(A3 != null)
			{
				lostMessage.append("��ҵ���ĺϸ�֤");
			}
			
			graduationInfo.setGraduationId(id);
			graduationInfo.setStuNum(studentId);
			graduationInfo.setLostTime(date);
			graduationInfo.setLostInfo("wait for make up");
			
			graduationInfo.setErrorInfo(lostMessage.toString());
			
			eRNM.addLostMessage(graduationInfo);
			
			return "LostRecord";
		}
		catch(ERNMException e)
		{
			
		} 
		catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	@RequestMapping("/ALMx")
	@ResponseBody
	public Map<String, Object> alterLostMessage(String studentId)
	{
		//ModelAndView modelAndView = new ModelAndView("/LostRecord");
		Map<String, Object> modelMap = new HashMap<String, Object>(1);	
		try
		{
			
			Graduation_information graduationInfo = eRNM.quaryLostMessage(studentId);
			String stuName = eRNM.searchName(studentId);
			String majorName = eRNM.searchCourseNameByStudentId(studentId);
			
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");  
			java.util.Date date= graduationInfo.getLostTime();
			String str=sdf.format(date); 
			
			System.out.println(graduationInfo.getLostTime());
			modelMap.put("id", graduationInfo.getGraduationId());
			modelMap.put("stuNum", graduationInfo.getStuNum());
			modelMap.put("date", str);
			modelMap.put("lostInfo", graduationInfo.getLostInfo());
			modelMap.put("errorInfo", graduationInfo.getErrorInfo());
			modelMap.put("stuName", stuName);
			modelMap.put("majorName", majorName);
			
			modelMap.put("statu", 1);
			return modelMap;
		}
		catch(Exception e)
		{
			modelMap.put("statu", 0);
			return modelMap;
		}
	}
	
	@RequestMapping("/ALMx2")
	public String alterLostMessage2(String studentId)								//����
	{
		System.out.println(studentId);
		eRNM.alterLostMessage(studentId);		
		return "LostRecord";
	}
	
	@RequestMapping("/GCE")
	@ResponseBody
	public Map<String, Object> GraCerExam(String studentId,Integer current)		//����ʸ��ѯ********
	{
		//ModelAndView modelAndView = new ModelAndView("/GraduationCertiExam");
		try
		{
			if(current == null||current == 0)
			{
				current = 1;
			}
			
			Page page = eRNM.SearchBeforeGra(studentId, current);
			Map<String, Object> modelMap = new HashMap<String, Object>(1);
			modelMap.put("page", page);
			
			return modelMap;
		}
		catch(ERNMException e)
		{
			
		}
		return null;		
	}
	
	@RequestMapping("/SBG")
	@ResponseBody
	public Map<String, Object> searchBeGra(String studentId)
	{
		Map<String, Object> modelMap = new HashMap<String, Object>(2);
		try
		{
			String majorName = eRNM.searchCourseNameByStudentId(studentId);
			String stuName = eRNM.searchName(studentId);
			Student student = eRNM.quaryStudentMessage(studentId);
	
			modelMap.put("majorName", majorName);
			modelMap.put("stuName", stuName);
			modelMap.put("stuNum", student.getStuNum());
			modelMap.put("score", student.getEssayRemark());
			modelMap.put("statu", 1);
			if(student.getGraduateState()!= 6)
			{
				modelMap.put("statu", 2);
			}
			return modelMap;	
		}
		catch(ERNMException e)
		{
			modelMap.put("statu", 0);
			return modelMap;
		}
	}
	
	@RequestMapping("/SBGM")
	@ResponseBody
	public Map<String, Object> SearchBeforeGraduateMes(String studentId)				//��ѯͨ��id��ҵԤ����
	{
		Map<String, Object> modelMap = new HashMap<String, Object>(2);
		try
		{			
			System.out.println(studentId);
			Student student = eRNM.quaryStudentMessage(studentId);
			System.out.println(student.getGraduateState());
			if(student.getGraduateState() == 5)
			{
				User user = eRNM.quaryBeforeGraduateUser(studentId);			
				modelMap.put("stuNum", studentId);
				modelMap.put("user", user);	
			}
			else
			{
				modelMap.put("state", 0);
			}
			return modelMap;
		}
		catch(Exception e)
		{
			modelMap.put("state", 1);
			return modelMap;
		}
	}
	
	
	@RequestMapping("/D")
	@ResponseBody
	public Map<String, Object> delBeforeGraduate(String studentId)				//ɾ���ҵԤ����
	{
		try
		{
			eRNM.delBeforeStudent(studentId);
			Map<String, Object> modelMap = new HashMap<String, Object>(1);			
			return modelMap;
		}
		catch(ERNMException e)
		{
			return null;
		}
	}
	
	@RequestMapping("/ZZZ")
	@ResponseBody
	public Map<String, Object> searchBefore()
	{
		
		
		return null;
	}
	
	
	@RequestMapping("/PASS")
	@ResponseBody
	public Map<String, Object> pass(String studentId)				//��ѯͨ��id��ҵԤ����
	{
		Map<String, Object> modelMap = new HashMap<String, Object>(10);
		try
		{
			eRNM.alterStuToGrad(studentId);
			return modelMap;
		}
		catch(ERNMException e)
		{
			return modelMap;
		}
	}
	
	@RequestMapping("/testIsVoid")
	@ResponseBody
	public Map<String, Object> testIsVoid(String studentId)				//��ѯѧ���Ƿ���ڲ��������ֺ�רҵ
	{
		Map<String, Object> modelMap = new HashMap<String, Object>(10);
		try
		{
			String stuName = eRNM.searchName(studentId);
			String majorName = eRNM.searchCourseNameByStudentId(studentId);
			modelMap.put("stuName", stuName);
			modelMap.put("majorName", majorName);
			modelMap.put("state", 0);
			return modelMap;
		}
		catch(ERNMException e)
		{
			modelMap.put("state", 1);
			return modelMap;
		}
	}
	
	@RequestMapping("/check")
	@ResponseBody
	public Map<String, Object> check(String studentId)				//check ѧ���Ƿ��ϳ�������
	{
		Map<String, Object> modelMap = new HashMap<String, Object>(0);
		int flag = eRNM.judgeIsBeforeGraduate(studentId);
		modelMap.put("state", flag);
		return modelMap;
	}
	
	@RequestMapping("/delBS")
	@ResponseBody
	public Map<String, Object> delBeforeGraduateMes(String studentId)				
	{
		Map<String, Object> modelMap = new HashMap<String, Object>(0);
		try
		{				
			eRNM.delBeforeStudent(studentId);
			modelMap.put("state", 1);
			return modelMap;
		}
		catch(Exception e)
		{
			modelMap.put("state", 1);
			return modelMap;
		}
	}

}
