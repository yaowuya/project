package cn.edu.scau.zxks.controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.scau.zxks.entity.CourseAddScore;
import cn.edu.scau.zxks.entity.Elective_info;
import cn.edu.scau.zxks.entity.Stu_punishment;
import cn.edu.scau.zxks.entity.Student;
import cn.edu.scau.zxks.entity.StudentCourseGrade;
import cn.edu.scau.zxks.entity.User;
import cn.edu.scau.zxks.exception.ScoreManageException;
import cn.edu.scau.zxks.exception.UserException;
import cn.edu.scau.zxks.service.inter.ScoreManageService;

/**
 * 
 * @author andy
 *
 */
@Controller
@RequestMapping("/score")
public class ScoreManagerController 					
{
	@Autowired
	private ScoreManageService scoreManageService;
	
	@RequestMapping("/skip")
	public String skip(Model model){

		try
		{
			
		}
		catch(UserException e)
		{
			
		}	
		return "grades";
	}
	@RequestMapping("/skip1")
	public String skip2(Model model){

		try
		{
			
		}catch(UserException e)
		{
			
		}	
		return "Certificate";
	}
	
	@RequestMapping("/skip2")
	public String skip3(Model model){

		try
		{
			
		}catch(UserException e)
		{
			
		}	
		return "punishment";
	}
	
	@RequestMapping("/skip3")
	public String skip4(Model model,HttpSession session)
	{
		try
		{
			User u = (User) session.getAttribute("user");
			String studentId = scoreManageService.searchStudentIdByEmail(u.getEmail());
			String stuName = scoreManageService.quaryStuName(studentId);	//查询学生姓名
			double essayRemark = scoreManageService.quaryEssayScore(studentId);			//毕业成绩
			double examGrade = scoreManageService.quaryExamScore(studentId);	//查询统考成绩		
			List<StudentCourseGrade> studentCourseGrade = scoreManageService.searchCourseName(studentId);	//课程名字	
			
			model.addAttribute("studentId", studentId);
			model.addAttribute("stuName", stuName);
			model.addAttribute("examGrade", examGrade);
			model.addAttribute("essayRemark", essayRemark);
			model.addAttribute("studentCourseGrade", studentCourseGrade);
		}
		catch(UserException e)
		{
			
		}	
		return "StudentSearchScore";
	}
	
	@RequestMapping("/addScore")
	@ResponseBody
	public Map<String, Object> addScore(String studentId, String examGrade, String essayRemark)//添加成绩信息
	{
		System.out.println(studentId);
		System.out.println(examGrade);
		System.out.println(essayRemark);
		Map<String, Object> modelMap = new HashMap<String, Object>(1);
		try
		{	
			if(examGrade!=null)
			{
				scoreManageService.addEssayGrade(studentId, Double.parseDouble(essayRemark));	//添加毕业成绩
			}
			
			if(essayRemark!=null)
			{
				scoreManageService.updateGeneralExamScore(studentId, Double.parseDouble(examGrade));	//添加统考成绩
			}			
			modelMap.put("statu", 1);
		}
		catch(ScoreManageException e)
		{
			modelMap.put("statu", 0);
		}
		
		return modelMap;
	}
	
	@RequestMapping("/testIsHaveStudent")
	@ResponseBody
	public Map<String, Object> testIsHaveStudent(String studentId)
	{
		try
		{
			Map<String, Object> modelMap = new HashMap<String, Object>(2);
			Student student = scoreManageService.isHaveStudent(studentId);
			if(student != null)
			{
				String name = scoreManageService.quaryStuName(studentId);
				modelMap.put("studentName", name);
				modelMap.put("statu", 1);				
			}
			else if(student.getExamScore() != null || student.getEssayRemark()!= null)
			{
				modelMap.put("statu", 2);
			}
			else
			{
				modelMap.put("statu", 0);
			}
			return modelMap;
			
		}
		catch(ScoreManageException e)
		{
			return null;
		}
	}
	
	@RequestMapping("/searchCourseNameAndStudent")
	@ResponseBody
	public Map<String, Object> addCourseScore(String courseName)//添加成绩信息
	{
		Map<String, Object> modelMap = new HashMap<String, Object>(1);
		try
		{	
			List<CourseAddScore> courseAddScore = scoreManageService.quaryCourseScoreByCourseName(courseName);
										
			modelMap.put("courseAddScore", courseAddScore);
			
			return modelMap;
		}
		catch(ScoreManageException e)
		{	
			return modelMap;
		}
	}
	
	
	@RequestMapping("/searchCourseNameAndStudent2")
	@ResponseBody
	public Map<String, Object> addCourseScore2(String[] p,String[] pp, String courseName)//添加成绩信息
	{
		try
		{	
			
			List<Elective_info> electiveInfo = scoreManageService.searchCourseIdByCourseName(courseName);		
			System.out.println(electiveInfo.size());
			for (int i=0;i < p.length; i++)
			{
				System.out.print(p[i]);
				System.out.println(pp[i]);
				for (int j=0; j<electiveInfo.size(); j++)
				{
					System.out.print(electiveInfo.get(j).getStuNum());
					System.out.println("00");
					if (electiveInfo.get(j).getStuNum().equals(p[i]))
					{
						System.out.println("1");
						electiveInfo.get(j).setTermGrade(Double.parseDouble(pp[i]));
						System.out.println(electiveInfo.get(j).getTermGrade());
						break;
					}
				}
			}
			scoreManageService.updateElectiveInfo(electiveInfo);
			Map<String, Object> modelMap = new HashMap<String, Object>(1);
			return modelMap;
		}
		catch(ScoreManageException e)
		{			
		}
		
		return null;
	}
	

	
	@RequestMapping("/quaryScore")
	@ResponseBody
	public Map<String, Object> quaryScore(String studentId)					//查询成绩信息 OK
	{
		Map<String, Object> modelMap = new HashMap<String, Object>(1);
		try
		{
			System.out.println(studentId);
			String stuName = scoreManageService.quaryStuName(studentId);	//查询学生姓名
			System.out.println(stuName);
			double essayRemark = scoreManageService.quaryEssayScore(studentId);			//毕业成绩
			System.out.println(essayRemark);
			double examGrade = scoreManageService.quaryExamScore(studentId);	//查询统考成绩		
			System.out.println(examGrade);
			List<StudentCourseGrade> studentCourseGrade = scoreManageService.searchCourseName(studentId);	//课程名字
			//System.out.println(electiveInfo.get(0).getTermGrade());
			
			modelMap.put("studentId", studentId);
			modelMap.put("stuName", stuName);
			modelMap.put("examGrade", examGrade);
			modelMap.put("essayRemark", essayRemark);
			modelMap.put("studentCourseGrade", studentCourseGrade);
			
			return modelMap;
		}
		catch(Exception e)
		{
			return modelMap;
		}
	}
		
	@RequestMapping("/punishment")
	public ModelAndView addStuPunishment(String studentId,String siteId,String punishDetail, String punishType, String time)		//添加学生处分信息
	{
		try
		{
			ModelAndView modelAndView = new ModelAndView("/success");
			
			Stu_punishment stuPunishment = new Stu_punishment();
				
			UUID uuid = UUID.randomUUID();									//UUID生成主键
			String punishId = uuid.toString().replace("-", "").toUpperCase();
								
			//SimpleDateFormat df = new SimpleDateFormat("yyyy-mm-dd");
			//f.format(new Date());
			
			SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd " );
			Date date = sdf.parse(time);
			
				
			System.out.println(studentId);
				
			stuPunishment.setStuNum(studentId);
			stuPunishment.setRemark(punishDetail);
			stuPunishment.setPunishTime(date);
			stuPunishment.setPunishId(punishId);
			stuPunishment.setApplyId(siteId);
			stuPunishment.setPunishDetail(punishType);
				
			scoreManageService.addpunishment(stuPunishment);
			
			return modelAndView;		
		}
		catch(ScoreManageException e)
		{
			//return "fail";
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
		//return "success";
	}
	
	@RequestMapping("/certificate")
	@ResponseBody				/************/
	public Map<String, Object> loadCertification(String studentId)				//打印合格证
	{
		//ModelAndView modelAndView = new ModelAndView("/Certificate");
		Map<String, Object> modelMap = new HashMap<String, Object>(1);
		try
		{			
			String stuName = scoreManageService.quaryStuName(studentId);	
			double essayGrade = scoreManageService.quaryEssayScore(studentId);			
			double examGrade = scoreManageService.quaryExamScore(studentId);	//查询统考成绩			
			String majorName = scoreManageService.quaryMajorName(studentId);		//查询专业名称		
			
			modelMap.put("studentId", studentId);
			modelMap.put("stuName", stuName);
			modelMap.put("essayGrade", essayGrade);
			modelMap.put("examGrade", examGrade);
			modelMap.put("majorName", majorName);
			
			System.out.println("!!!!");
			return modelMap;	
		}
		catch(Exception e)
		{
			return modelMap;
		}	
	}
	
	
	@RequestMapping("/alterGrade")
	@ResponseBody
	public Map<String, Object> AlterGrade(String id)			//修改成绩
	{
		Map<String, Object> modelMap = new HashMap<String, Object>(3); 		//将数据放到map传到前段
		//ModelAndView modelAndView = new ModelAndView("/grades");
		try
		{
			
			System.out.println(id);
				
			//获取传到前段的参数
			String stuName = scoreManageService.quaryStuName(id);				//获取学生姓名
			double essayGrade = scoreManageService.quaryEssayScore(id);				//获取毕业成绩			
			double examGrade = scoreManageService.quaryExamScore(id);	//查询统考成绩
			List<StudentCourseGrade> studentCourseGrade = scoreManageService.searchCourseName(id);	//课程名字
												
			
			modelMap.put("studentId", id);
		    modelMap.put("stuName", stuName);  
		    modelMap.put("essayGrade", essayGrade);  
		    modelMap.put("examGrade", examGrade);  
		    modelMap.put("studentCourseGrade", studentCourseGrade);
		    modelMap.put("statu", 0);
		    
		    return modelMap; 
			
		}
		catch(Exception e)
		{		
			modelMap.put("statu", 1);
			 return modelMap;
		}
	}
	
	@RequestMapping("/alterGradeP")
	@ResponseBody
	public Map<String, Object> AlterGradeP(String courseId, String termGrade, String studentId)			//修改成绩
	{
		Map<String, Object> modelMap = new HashMap<String, Object>(1);
		Elective_info electiveInfo = new Elective_info();
		electiveInfo.setCourseId(courseId);
		electiveInfo.setTermGrade(Double.parseDouble(termGrade));
		electiveInfo.setStuNum(studentId);
		scoreManageService.alterCourseScore(electiveInfo);
		
		return modelMap;	
	}
	
	@RequestMapping("/alterExamGrade")
	@ResponseBody
	public Map<String, Object> alterExamGrade(String studentId, String examApply, String essayGrade)			//修改成绩
	{
		Map<String, Object> modelMap = new HashMap<String, Object>(1);
		try
		{
			scoreManageService.updateGeneralExamScore(studentId, Double.parseDouble(examApply));
			scoreManageService.alterEssayGrade(studentId, Double.parseDouble(essayGrade));	
			modelMap.put("state", 1);
			return modelMap;
		}
		catch(Exception e)
		{
			modelMap.put("state", 0);
			return modelMap;
		}
	}
	
	@RequestMapping("/StudentquaryScore")
	@ResponseBody
	public Map<String, Object> StudentquaryScore(HttpSession session)					//查询成绩信息 OK
	{
		Map<String, Object> modelMap = new HashMap<String, Object>(1);	
		try
		{
			User u = (User) session.getAttribute("user");
			String studentId = scoreManageService.searchStudentIdByEmail(u.getEmail());
			String stuName = scoreManageService.quaryStuName(studentId);	//查询学生姓名
			double essayRemark = scoreManageService.quaryEssayScore(studentId);			//毕业成绩
			double examGrade = scoreManageService.quaryExamScore(studentId);	//查询统考成绩		
			List<StudentCourseGrade> studentCourseGrade = scoreManageService.searchCourseName(studentId);	//课程名字	
			
			modelMap.put("studentId", studentId);
			modelMap.put("stuName", stuName);
			modelMap.put("examGrade", examGrade);
			modelMap.put("essayRemark", essayRemark);
			modelMap.put("studentCourseGrade", studentCourseGrade);
			
			return modelMap;
		}
		catch(Exception e)
		{
			return modelMap;
		}
	}
	
}
