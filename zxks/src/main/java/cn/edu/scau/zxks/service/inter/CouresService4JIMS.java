package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.entity.Course_information;

public interface CouresService4JIMS {
	public List<Course_information> queryCourseInformation();
	public Course_information queryOne(String courseId);
}
