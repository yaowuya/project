package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.Course_informationMapper;
import cn.edu.scau.zxks.entity.Course_information;
import cn.edu.scau.zxks.entity.Course_informationExample;
import cn.edu.scau.zxks.entity.Course_informationExample.Criteria;
import cn.edu.scau.zxks.service.inter.CouresService4JIMS;

@Service
public class CourseImpl4JIMS implements CouresService4JIMS {
	@Autowired
	private Course_informationMapper coursMapper;
	
	@Override
	public List<Course_information> queryCourseInformation() {
		return coursMapper.selectAll();
	}
	
	@Override
	public Course_information queryOne(String courseId){
		return coursMapper.selectByPrimaryKey(courseId);
	}
}
