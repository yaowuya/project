package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.entity.Student;
import cn.edu.scau.zxks.entity.StudentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface StudentMapper {
    int countByExample(StudentExample example);
    
    int countAll();

    int deleteByExample(StudentExample example);

    int deleteByPrimaryKey(String stuNum);

    int insert(Student record);

    int insertSelective(Student record);

    List<Student> selectByExample(StudentExample example);

    Student selectByPrimaryKey(String stuNum);
    
    Student selectByEmail(String email);

    int updateByExampleSelective(@Param("record") Student record, @Param("example") StudentExample example);

    int updateByExample(@Param("record") Student record, @Param("example") StudentExample example);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
}