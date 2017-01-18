package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Exam_apply;
import cn.edu.scau.zxks.entity.Graduation_information;
import cn.edu.scau.zxks.entity.Student;
import cn.edu.scau.zxks.entity.StudentMessage;
import cn.edu.scau.zxks.entity.Study_abroad;
import cn.edu.scau.zxks.entity.User;

public interface ExamRegistNumManage 
{
	public void addBeforeStudent(String studentId);  //添加毕业预提生
	
	public Student quaryBeforeStudentMessage(String studentId); //查询毕业预提生信息
	
	public void delBeforeStudent(String studentId);  //删除毕业预提生
	
	public String addGoAbroadMessage(Study_abroad studyAbroad);  //添加留学生信息
	
	public List<Study_abroad> quaryAbroadMessage(String abroadId);			//查询留学信息
	
	public Student quaryStudentMessage(String studentId);			//查询学生信息
	
	public String quaryMajorName(String studentId);					//查询专业名称
	
	public User quaryStuUser(String email);			//通过email查询用户信息
	
	public void alterAbroadMessage(Study_abroad studyAbroad); //通过ID修改出国信息
	
	public void delAbroadMessage(String studentId);				//删除出国信息
	
	public User quaryBeforeGraduateUser(String studentId);	//查看毕业预提生用户信息
	
	public List<Exam_apply> quaryBeforeGraduateExamMes(String studentId); //查询毕业预提生考试信息
	
	public List<String> quarytestSiteName(List<Exam_apply> examApplyList);	//查询考点名称
	
	public void addLostMessage(Graduation_information studentId);		//添加遗失信息 
	
	public Graduation_information quaryLostMessage(String studentId);					//查询遗失信息
	
	public void alterLostMessage(String studentId);				//确认补办
	
	public void alterStuToGrad(String studentId);             //通过毕业审核
	
	public Page SearchBeforeGra(String stuNum,int current);					//查询毕业预提生
	
	public String searchName(String studentId);  					//查询学生姓名
	
	public Exam_apply searchExamApply(String studentid);			//查询考试信息
	
	public String testIsVoid(String studentId);       	//判断是否存在学生并返回邮箱
	
	public String searchCourseNameByStudentId(String studentId); 
	
	public int judgeIsBeforeGraduate(String studentId); // 判断是否满足出国条件
	
}
