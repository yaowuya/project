package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Course_information;

public interface CourseService {
	public List<Course_information> getAll();
	
	public Course_information getById(String courseId);
	
	public void update(Course_information course);
	
	public void addCourse(Course_information course);
	
	public int countCourseByKey(String key);
	
	public List<Course_information> searchCourseByKeyInPage(Page page);
}
