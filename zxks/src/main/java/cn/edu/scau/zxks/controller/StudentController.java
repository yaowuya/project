package cn.edu.scau.zxks.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.scau.zxks.entity.Exam;
import cn.edu.scau.zxks.entity.Exam_apply;
import cn.edu.scau.zxks.entity.Exam_sites;
import cn.edu.scau.zxks.entity.Major_info;
import cn.edu.scau.zxks.entity.Role;
import cn.edu.scau.zxks.entity.School_information;
import cn.edu.scau.zxks.entity.Student;
import cn.edu.scau.zxks.entity.Test_sites;
import cn.edu.scau.zxks.entity.User;
import cn.edu.scau.zxks.service.inter.ExamApplyService;
import cn.edu.scau.zxks.service.inter.ExamService;
import cn.edu.scau.zxks.service.inter.ExamSiteService;
import cn.edu.scau.zxks.service.inter.MajorService;
import cn.edu.scau.zxks.service.inter.RoleService;
import cn.edu.scau.zxks.service.inter.SchoolService;
import cn.edu.scau.zxks.service.inter.SiteService;
import cn.edu.scau.zxks.service.inter.StudentService;
import cn.edu.scau.zxks.service.inter.UserService;
import cn.edu.scau.zxks.utill.CommonUtills;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	StudentService studentService;
	
	@Autowired
	ExamApplyService examApplyService;
	
	@Autowired
	SiteService siteService;
	
	@Autowired
	ExamService examService;
	
	@Autowired
	MajorService majorService;
	
	@Autowired
	ExamSiteService examSiteService;
	
	@Autowired
	SchoolService schoolService;
	
	@Autowired
	RoleService roleService;
	
	/**
	 * 去到学生管理页面
	 * @author Pavilion 15
	 * @return
	 */
	@RequestMapping("/turnToStudent")
	public String turnToStudent(){
		return "studentManage";
	}
	
	/**
	 * 去到基本信息页面
	 * @author Pavilion 15
	 * @return
	 */
	@RequestMapping("/turnToBasicMessage")
	public String turnToBasicMessage(Model model){
		
		List<Role> roleList = roleService.getAllRole();
		
		model.addAttribute("roleList", roleList);
		
		return "basicMessage";
	}
	
	/**
	 * 去到基本信息更改页面
	 * @author Pavilion 15
	 * @return
	 */
	@RequestMapping("/changeMessage")
	public String turnToChange(Model model){
		
		List<Role> roleList = roleService.getAllRole();
		
		model.addAttribute("roleList", roleList);
		
		return "basicMessageChange";
	}
	
	/**
	 * 更改用户基本信息
	 * @param user
	 * @param session
	 * @return
	 */
	@RequestMapping("/updateUser")
	public String updateUser(User user, HttpSession session, Model model){
		User u = (User) session.getAttribute("user");
		user.setPassword(u.getPassword());
		user.setRoleId(u.getRoleId());
		//System.out.println(user);
		userService.updateUser(user);
		
		session.setAttribute("user", user);
		
		List<Role> roleList = roleService.getAllRole();
		
		model.addAttribute("roleList", roleList);
		
		return "basicMessage";
	}
	
	/**
	 * 显示学生信息
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("/studentMessage")
	public String turnToStudentMessage(Model model, HttpSession session){
		User u = (User) session.getAttribute("user");
		Student student = studentService.getByEmail(u.getEmail());
		if(student == null)return "error";
		model.addAttribute("student", student);
		
		List<School_information> schoolList  = schoolService.getAll();
		model.addAttribute("schoolList", schoolList);
		
		List<Major_info> majorList = majorService.getAll();
		model.addAttribute("majorList", majorList);
		
		return "studentMessage";
	}
	
	/**
	 * 去到学生信息更改页面
	 * @author Pavilion 15
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("/turnToChangeStudentMessage")
	public String turnToChangeStudentMessage(Model model, HttpSession session){
		User u = (User) session.getAttribute("user");
		Student student = studentService.getByEmail(u.getEmail());
		
		if(student == null)return "error";
		
		model.addAttribute("student", student);
		
		List<School_information> schoolList  = schoolService.getAll();
		model.addAttribute("schoolList", schoolList);
		
		List<Major_info> majorList = majorService.getAll();
		model.addAttribute("majorList", majorList);
		
		return "student_message_change";
	}
	
	/**
	 * 去到密码修改页面
	 * @author Pavilion 15
	 * @return
	 */
	@RequestMapping("/turnToPassword")
	public String turnToPassword(){
		return "change_password";
	}
	
	
	/**
	 * 修改密码
	 * @author Pavilion 15
	 * @param model
	 * @param oldPass
	 * @param password
	 * @param session
	 * @return
	 */
	@RequestMapping("/updatePassword")
	public String UpdatePassword(Model model, String oldPass, String password,HttpSession session){
		User u = (User) session.getAttribute("user");
		
		if(oldPass.equals(u.getPassword())){
			System.out.println(password);
			u.setPassword(password);
			userService.updateUser(u);

			Student student = studentService.getByEmail(u.getEmail());
			
			model.addAttribute("student", student);
			
			return "index";
		}
		
		model.addAttribute("msg", "原密码输入错误");
		return "change_password";
	}
	
	
	/**
	 * 更改学生信息
	 * @author Pavilion 15
	 * @param student
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping("/updateStudent")
	public String updateStudent(Student student, HttpSession session, Model model){
		User u = (User) session.getAttribute("user");
		student.setEmail(u.getEmail());
		studentService.updateStudent(student);
		System.out.println(student);
		student = studentService.getByEmail(u.getEmail());
		
		if(student == null)return "error";
		
		model.addAttribute("student", student);
		
		List<School_information> schoolList  = schoolService.getAll();
		model.addAttribute("schoolList", schoolList);
		
		List<Major_info> majorList = majorService.getAll();
		model.addAttribute("majorList", majorList);
		
		return "studentMessage";
	}
	
	
	/**
	 * 去到考试申请页面
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("/turnToExamApply")
	public String turnToExamApply(Model model, HttpSession session, HttpServletResponse response){

		User user = (User) session.getAttribute("user");
		
		Student student = studentService.getByEmail(user.getEmail());
		
		if(student == null || student.getGraduateState() == null)return "error";
		
		//标志为5以上表示已毕业或预提或出国
		if(student.getGraduateState() >= 5){
			model.addAttribute("state", "1");
			return "index";
		}
		
		String stuNum = student.getStuNum();
		
		List<Exam_apply> examApplyList = examApplyService.getByStuNum(stuNum);
		
		
		//获取考试报名的相关信息
		for(int i = 0; i < examApplyList.size(); i++){
			Test_sites site = siteService.findById(examApplyList.get(i).getSiteId());
			examApplyList.get(i).setSiteName(site.getSiteName());
			
			Exam exam = examService.getByPrimaryKey(examApplyList.get(i).getExamId());
			Major_info major = majorService.getById(exam.getMajorId());
			
			examApplyList.get(i).setMajorName(major.getMajorName());
			examApplyList.get(i).setTime(exam.getTime());
		}
		
		model.addAttribute("examApplyList", examApplyList);
		
		
		//获取可以报名的考试的相关信息
		//List<Exam_sites> examSiteList = examSiteService.getAllAvailable();
		List<Exam_sites> examSiteList = examSiteService.getAll();
		
		List<Exam> examInTimeList = examService.getAllInTime();
		for(int i = 0; i < examSiteList.size(); i++){
			boolean flag = false;
			for(int j = 0; j < examInTimeList.size(); j++){
				if(examSiteList.get(i).getExamId().equals(examInTimeList.get(j).getExamId())){
					flag = true;
				}
			}
			if(!flag){
				examSiteList.remove(i);
				i--;
			}
		}
		
		for(int i = 0; i < examSiteList.size(); i++){
			for(int j = 0; j < examApplyList.size(); j++){
				if(examSiteList.get(i).getExamId().equals(examApplyList.get(j).getExamId())){
					examSiteList.remove(i);
					i--;
					break;
				}
			}
		}
		
		List<Exam> examList = examService.getAll();
		
		List<Major_info> majorList = majorService.getAll();
		
		List<Test_sites> siteList = siteService.getAll();
		
		model.addAttribute("examSiteList", examSiteList);
		
		model.addAttribute("examList", examList);
		
		model.addAttribute("majorList", majorList);
		
		model.addAttribute("siteList", siteList);
		
		return "exam_apply";
	}
	
	/**
	 * 申请考试功能的实现
	 * @author Pavilion 15
	 * @param model
	 * @param session
	 * @param examId
	 * @param siteId
	 * @return
	 */
	@RequestMapping("/applyExam")
	public String applyExam(Model model, HttpSession session, String examId, String siteId, HttpServletResponse response){
		
		Exam exam = examService.getByPrimaryKey(examId);
		
		Exam_apply exam_apply = new Exam_apply();
		
		User u = (User) session.getAttribute("user");
		
		Student student = studentService.getByEmail(u.getEmail());
		if(student == null)return "error";
		
		exam_apply.setApplyId(CommonUtills.generateID());
		exam_apply.setExamId(exam.getExamId());
		exam_apply.setExamName(exam.getExamName());
		exam_apply.setMajorName(majorService.getById(exam.getMajorId()).getMajorName());
		exam_apply.setSiteId(siteId);
		exam_apply.setStuNum(studentService.getByEmail(u.getEmail()).getStuNum());
		exam_apply.setExamNum(generateExamNum());
		exam_apply.setExamRoom(String.valueOf(generateRoomNum(examId, siteId)));
		exam_apply.setSitNum((String.valueOf(generateSiteNum(examId, siteId))));
		examApplyService.insert(exam_apply);
		
		return turnToExamApply(model, session, response);
	}
	
	/**
	 * 自动生成学生考号
	 * @author Pavilion 15
	 * @return
	 */
	private String generateExamNum(){
		Date date = new Date();
		String d = new SimpleDateFormat("yyyyMMdd").format(date);

		int num = examApplyService.countAll();
				
		String temp = String.format("%08d", num);
		
		String stuNum = d + temp;
		
		//System.out.println(stuNum);
		return stuNum;
	}
	
	/**
	 * 自动生成考试试室号
	 * @author Pavilion 15
	 * @param examId
	 * @param siteId
	 * @return
	 */
	private int generateRoomNum(String examId, String siteId){
		int num = examApplyService.getMaxRoomNum(examId, siteId);
		int count = examApplyService.getNumOfMaxRoom(examId, siteId);
		if(num == 0)num = 1;
		if(count > 30) num++;
		return num;

	}
	
	/**
	 * 自动生成座位号
	 * @author Pavilion 15
	 * @param examId
	 * @param siteId
	 * @return
	 */
	private int generateSiteNum(String examId, String siteId){
		int count = examApplyService.getNumOfMaxRoom(examId, siteId);
		if(count > 30) count = 1;
		return count;
	}
	
}
