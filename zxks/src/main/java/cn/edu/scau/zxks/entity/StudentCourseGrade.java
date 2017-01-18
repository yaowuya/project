package cn.edu.scau.zxks.entity;

public class StudentCourseGrade 
{
	String courseId;
	
	String courseName;
	
	double termGrade;

	public String getCourseId() 
	{
		return courseId;
	}

	public void setCourseId(String courseId) 
	{
		this.courseId = courseId;
	}

	public String getCourseName() 
	{
		return courseName;
	}

	public void setCourseName(String courseName) 
	{
		this.courseName = courseName;
	}

	public double getTermGrade() 
	{
		return termGrade;
	}

	public void setTermGrade(double score) 
	{
		this.termGrade = score;
	}
	
	
}
