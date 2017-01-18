package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Exam;
import cn.edu.scau.zxks.entity.ExamExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ExamMapper {
    int countByExample(ExamExample example);
    
    int countAll();
    
    int countByKey(String key);

    int deleteByExample(ExamExample example);

    int deleteByPrimaryKey(String examId);

    int insert(Exam record);

    int insertSelective(Exam record);

    List<Exam> selectByExample(ExamExample example);
    
    List<Exam> searchByKeyInPage(Page page);

    Exam selectByPrimaryKey(String examId);
    
    List<Exam> selectAll();
    
    List<Exam> selectAllInTime();

    int updateByExampleSelective(@Param("record") Exam record, @Param("example") ExamExample example);

    int updateByExample(@Param("record") Exam record, @Param("example") ExamExample example);

    int updateByPrimaryKeySelective(Exam record);

    int updateByPrimaryKey(Exam record);
}