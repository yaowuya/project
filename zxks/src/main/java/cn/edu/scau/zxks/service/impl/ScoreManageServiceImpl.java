package cn.edu.scau.zxks.service.impl;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mchange.util.impl.CircularList;

import cn.edu.scau.zxks.dao.CourseAddScoreMapper;
import cn.edu.scau.zxks.dao.Course_informationMapper;
import cn.edu.scau.zxks.dao.Elective_infoMapper;
import cn.edu.scau.zxks.dao.Exam_applyMapper;
import cn.edu.scau.zxks.dao.Major_infoMapper;
import cn.edu.scau.zxks.dao.SearchScoreMapper;
import cn.edu.scau.zxks.dao.Stu_punishmentMapper;
import cn.edu.scau.zxks.dao.StudentMapper;
import cn.edu.scau.zxks.dao.UserMapper;
import cn.edu.scau.zxks.entity.CourseAddScore;
import cn.edu.scau.zxks.entity.Course_information;
import cn.edu.scau.zxks.entity.Course_informationExample;
import cn.edu.scau.zxks.entity.Elective_info;
import cn.edu.scau.zxks.entity.Elective_infoExample;
import cn.edu.scau.zxks.entity.Elective_infoExample.Criteria;
import cn.edu.scau.zxks.entity.Exam_apply;
import cn.edu.scau.zxks.entity.Exam_applyExample;
import cn.edu.scau.zxks.entity.Major_info;
import cn.edu.scau.zxks.entity.Stu_punishment;
import cn.edu.scau.zxks.entity.Student;
import cn.edu.scau.zxks.entity.StudentCourseGrade;
import cn.edu.scau.zxks.entity.StudentExample;
import cn.edu.scau.zxks.entity.User;
import cn.edu.scau.zxks.exception.ScoreManageException;
import cn.edu.scau.zxks.exception.UserException;
import cn.edu.scau.zxks.service.inter.ScoreManageService;

/**
 * 
 * @author andy
 *
 */
@Service
public class ScoreManageServiceImpl implements ScoreManageService 
{
	@Autowired
	private Elective_infoMapper electiveInfoMapper;
	
	@Autowired
	private Stu_punishmentMapper stuPunishmentMapper;
	
	@Autowired
	private StudentMapper studentMapper;
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private Exam_applyMapper examApplyMapper;
	
	@Autowired
	private Major_infoMapper majorInfoMapper;
	
	@Autowired
	private Course_informationMapper courseInfoMapper;
	
	@Autowired
	private CourseAddScoreMapper courseAddScoreMapper;
	
	@Autowired
	private SearchScoreMapper searchScoreMapper;
	
	public void addCourseScore(Elective_info electiveInfo) 			//添加课程分数
	{
		if (electiveInfo == null)
		{
			throw new ScoreManageException("没有信息输入");
		}
		else
		{
			
			System.out.println(electiveInfo.getCourseId());
			System.out.println("222");
			System.out.println(electiveInfo.getStuNum());
			System.out.println(electiveInfo.getTermGrade());
			
			electiveInfoMapper.updateByPrimaryKeySelective(electiveInfo);
		}
		
	}
	
	public void updateGeneralExamScore(String studentId, double score)	//更新统考成绩
	{
		if (score == 0)
		{
			throw new ScoreManageException("没有输入分数");
		}
		else
		{
			Student student = new Student();
			student.setStuNum(studentId);
			student.setExamScore(score);
			
			System.out.print("!!!");
			System.out.print(studentId);
			System.out.print(score);
			studentMapper.updateByPrimaryKeySelective(student);
		}
	}
	
	public void addEssayGrade(String stuNum, double grade)				//添加毕业成绩
	{
		if (grade == 0)
		{
			throw new ScoreManageException("没有输入分数");
		}
		else
		{
			System.out.println(stuNum);
			System.out.println("???");
			
			Student student = new Student();
			
			student.setEssayRemark(grade);
			student.setStuNum(stuNum);
			studentMapper.updateByPrimaryKeySelective(student);				
		}
	}
		
	public List<Elective_info> quaryCourseScore(String studentId) 			//通过学生id查询课程成绩
	{
		Elective_infoExample example = new Elective_infoExample();
		Elective_infoExample.Criteria cri = example.createCriteria();
		cri.andStuNumLike(studentId);
		List<Elective_info> electiveInfo = electiveInfoMapper.selectByExample(example);
		
		if (electiveInfo == null)
		{
			return null;
		}
		else
		{
			return electiveInfo;
		}
	}
	
	public List<CourseAddScore> quaryCourseScoreByCourseName(String courseName) 			//通过课程名称查询课程成绩
	{
		return courseAddScoreMapper.Select(courseName);		
	}
	
	
	public Double quaryExamScore(String studentId)						//查询统考成绩
	{
		if(studentId == null)
		{
			return null;
		}
		else
		{
			Student student = studentMapper.selectByPrimaryKey(studentId);
			if (student == null)
			{
				return null;
			}
			else
			{
				return student.getExamScore();
			}
		}
	}
	
	public Double quaryEssayScore(String studentId)				//查询毕业成绩
	{
		if (studentId == null)
		{
			return null;
		}
		else
		{
			Student student = studentMapper.selectByPrimaryKey(studentId);		
			try
			{
				double essayScore = student.getEssayRemark();
				return essayScore;
			}
			catch(Exception e)
			{
				throw new UserException("成绩未录入");
			}
		}
	}
	
	public void alterScore(String studentId, Elective_info electiveInfo) 		//修改成绩
	{
		// TODO Auto-generated method stub
		if (electiveInfo == null||studentId == null)
		{
			throw new ScoreManageException("没有信息输入");
		}
		else
		{
			electiveInfoMapper.updateByPrimaryKeySelective(electiveInfo);
		}
	}
	
	public String quaryStuName(String studentId)				//通过id查找学生姓名
	{
		if (studentId == null)
		{
			return null;
		}
		else
		{
			String email = studentMapper.selectByPrimaryKey(studentId).getEmail();
			User user = userMapper.selectByPrimaryKey(email);
			if(user == null)
			{
				return null;
			}
			else
			{
				return user.getUserName();
			}
		}
	}
	
	public void alterCourseScore(Elective_info electiveInfo) 	//修改课程成绩
	{
		if (electiveInfo == null)
		{
			throw new ScoreManageException("没有信息输入");
		}
		else
		{
			Elective_infoExample example = new Elective_infoExample();
			Elective_infoExample.Criteria cri = example.createCriteria();
			cri.andCourseIdLike(electiveInfo.getCourseId());
			cri.andStuNumLike(electiveInfo.getStuNum());
			Elective_info electiveInfoP = electiveInfoMapper.selectByExample(example).get(0);
			electiveInfoP.setTermGrade(electiveInfo.getTermGrade());
			electiveInfoMapper.updateByPrimaryKey(electiveInfoP);
		}
	}
	
	public void alterGeneralExamScore(String studentId, double score) 			//修改统考成绩
	{
		if (score == 0)
		{
			throw new ScoreManageException("没有输入分数");
		}
		else
		{
			
			Exam_apply examApply = new Exam_apply();
			examApply.setStuNum(studentId);
			examApply.setExamScore(score);
			Exam_applyExample example = new Exam_applyExample();
			Exam_applyExample.Criteria cri = example.createCriteria();
			cri.andStuNumLike(studentId);
			examApplyMapper.updateByExampleSelective(examApply, example);
		}
	}
	
	public void alterEssayGrade(String stuNum, double grade)			//修改毕业设计成绩
	{
		if (grade == 0)
		{
			throw new ScoreManageException("没有输入分数");
		}
		else
		{
			System.out.println(stuNum);
			Student student = new Student();
			student.setEssayRemark(grade);
			student.setStuNum(stuNum);
			studentMapper.updateByPrimaryKeySelective(student);				
		}
	}
	
 
	public void delScore(String id) 
	{
		// TODO Auto-generated method stub

	}
	
	public void addpunishment(Stu_punishment stuPunishment)
	{
		if (stuPunishment == null)
		{
			throw new ScoreManageException("没有信息输入");
		}
		else
		{
			stuPunishmentMapper.insert(stuPunishment);
		}
	}
	
	public String quaryMajorName(String studentId)
	{
		if (studentId == null)
		{
			throw new ScoreManageException("没有信息输入");
		}
		else
		{
			Student student = studentMapper.selectByPrimaryKey(studentId);
			Major_info majorInfo = majorInfoMapper.selectByPrimaryKey(student.getMajorId());
			return majorInfo.getMajorName();
		}		
	}
	
	public List<Elective_info> searchCourseIdByCourseName(String courseName)		//通过课程名称查electiveInfo
	{
		System.out.println(courseName);
		Course_informationExample example = new Course_informationExample();
		Course_informationExample.Criteria cri = example.createCriteria();
		cri.andCourseNameEqualTo(courseName);
		Course_information courseInfo = courseInfoMapper.selectByExample(example).get(0);
		
		Elective_infoExample example2 = new Elective_infoExample();
		Elective_infoExample.Criteria cri2 = example2.createCriteria();
		cri2.andCourseIdEqualTo(courseInfo.getCourseId());
		List<Elective_info> electiveInfo = electiveInfoMapper.selectByExample(example2);
		return electiveInfo;
	}
	
	public void updateElectiveInfo(List<Elective_info> electiveInfo)					//插入课程成绩
	{
		for (int i = 0;i < electiveInfo.size(); i++)
		{
			electiveInfoMapper.updateByPrimaryKey(electiveInfo.get(i));
		}
	}
	
	public Student isHaveStudent(String studentId)
	{
		Student student = studentMapper.selectByPrimaryKey(studentId);
		if(student==null)
		{
			return null;
		}
		else
		{
			return student;
		}
	}
	
	public List<StudentCourseGrade> searchCourseName(String stuNum)			//查询课程名称	
	{		
		try
		{
			List<StudentCourseGrade> studentCourseGrade = searchScoreMapper.search(stuNum);
			return studentCourseGrade;
		}
		catch(Exception e)
		{
			return null;
		}
	}
	
	public String searchStudentIdByEmail(String email)					//通过Email查学生Id
	{
		try
		{
			String stuNum = studentMapper.selectByEmail(email).getStuNum();
			return stuNum;
		}
		catch(Exception e)
		{
			return null;
		}
	}

}
