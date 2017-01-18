package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.Course_informationMapper;
import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Course_information;
import cn.edu.scau.zxks.service.inter.CourseService;

@Service
public class CourseServiceImpl implements CourseService {
	
	@Autowired
	private Course_informationMapper courseMapper;
	
	@Override
	public List<Course_information> getAll() {
		return courseMapper.selectAll();
	}
	@Override
	public Course_information getById(String courseId) {
		return courseMapper.selectByPrimaryKey(courseId);
	}
	@Override
	public void update(Course_information course) {
		courseMapper.updateByPrimaryKey(course);
	}
	@Override
	public void addCourse(Course_information course) {
		int num = courseMapper.countAll();
		String courseId = String.format("%05d", num);
		course.setCourseId(courseId);
		
		courseMapper.insert(course);
	}
	@Override
	public int countCourseByKey(String key) {
		if(key == null)key = "";
		return courseMapper.countCourseByKeyInPage(key);
	}
	@Override
	public List<Course_information> searchCourseByKeyInPage(Page page) {
		if(page.getKey() == null)page.setKey("");
		return courseMapper.searchCourseByKeyInPage(page);
	}

}
