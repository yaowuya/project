package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.entity.CourseAddScore;
import cn.edu.scau.zxks.entity.Elective_info;
import cn.edu.scau.zxks.entity.Exam_apply;
import cn.edu.scau.zxks.entity.Stu_punishment;
import cn.edu.scau.zxks.entity.Student;
import cn.edu.scau.zxks.entity.StudentCourseGrade;
/**
 * 
 * @author andy
 *
 */
public interface ScoreManageService 
{
	public void addCourseScore(Elective_info electiveInfo);				//添加课程分数信息
	
	public void updateGeneralExamScore(String studentId, double score);		//更新统考成绩
	
	public void addEssayGrade(String essayGrade, double grade);							//添加毕业设计成绩
	
	public void delScore(String id);									//无
	
	public List<Elective_info> quaryCourseScore(String studentId);			//查询课程成绩
	
	public Double quaryExamScore(String studentId);			//查询统考成绩
	
	public Double quaryEssayScore(String studentId); 						//查询毕业成绩
	
	public String quaryStuName(String studentId);				//查询学生姓名
	
	public String quaryMajorName(String studentId);					//查询专业名称
	
	public void alterCourseScore(Elective_info electiveInfo); 	//修改课程成绩
	
	public void alterGeneralExamScore(String studentId, double score); 			//修改统考成绩
	
	public void alterEssayGrade(String essayGrade, double grade);			//修改毕业设计成绩

	public void addpunishment(Stu_punishment stuPunishment);			//添加处罚成绩
	
	public List<CourseAddScore> quaryCourseScoreByCourseName(String courseName); 			//通过课程名称查询课程
	
	public List<Elective_info> searchCourseIdByCourseName(String courseName);   //通过课程名称查electiveInfo
	
	public void updateElectiveInfo(List<Elective_info> electiveInfo);			//更新课程成绩
	
	public Student isHaveStudent(String studentId);			//查询是否有该学生
	
	public List<StudentCourseGrade> searchCourseName(String stuNum);		//查询课程名字
	
	public String searchStudentIdByEmail(String email);					//通过Email查学生Id
					
}
