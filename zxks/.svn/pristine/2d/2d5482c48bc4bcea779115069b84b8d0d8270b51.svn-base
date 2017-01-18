package cn.edu.scau.zxks.dto;

import java.io.Serializable;
import java.util.Date;

import cn.edu.scau.zxks.entity.StudentMessage;

public class Result implements Serializable 
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1522348934650490588L;
	
	private int code = 200;
	private String msg;
	
	private Page page;
	
	private StudentMessage stuMes;
	
	private Date date = new Date();
	
	public Result(int code, String msg, Page page) {
		this.code = code;
		this.msg = msg;
		this.page = page;
	}
	
	public Result(int code, Page page) {
		this.code = code;
		this.page = page;
	}

	public Result(Page page) {
		this.page = page;
	}
	

	/**
	 * @param account
	 * @param weibo
	 */
	public Result(StudentMessage stuMes) {
		this.stuMes = stuMes;
	}

	public int getCode() 
	{
		return code;
	}

	public void setCode(int code) 
	{
		this.code = code;
	}

	public String getMsg() 
	{
		return msg;
	}

	public void setMsg(String msg) 
	{
		this.msg = msg;
	}

	public Page getPage() 
	{
		return page;
	}

	public void setPage(Page page) 
	{
		this.page = page;
	}

	public StudentMessage getStuMes() 
	{
		return stuMes;
	}

	public void setStuMes(StudentMessage stuMes) 
	{
		this.stuMes = stuMes;
	}

	public Date getDate() 
	{
		return date;
	}

	public void setDate(Date date) 
	{
		this.date = date;
	}
	
	
}
