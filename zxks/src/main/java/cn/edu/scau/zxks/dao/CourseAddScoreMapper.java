package cn.edu.scau.zxks.dao;

import java.util.List;

import cn.edu.scau.zxks.entity.CourseAddScore;

public interface CourseAddScoreMapper 
{
	public List<CourseAddScore> Select(String courseName);
}
