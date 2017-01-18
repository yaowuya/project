package cn.edu.scau.zxks.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.StudentMessage;

public interface StudentMessageMapper 
{
	public List<StudentMessage> selectByPrimerykey(Page page);
	
	public int count(String stuNum);		//·µ»Ø×ÜÊý
	
}
