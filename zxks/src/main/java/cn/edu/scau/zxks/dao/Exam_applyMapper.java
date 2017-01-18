package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.entity.Exam_apply;
import cn.edu.scau.zxks.entity.Exam_applyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Exam_applyMapper {
    int countByExample(Exam_applyExample example);
    
    int countBySiteId(String siteId);
    
    int countAll();
    
    String countForMaxRoom(String examId, String siteId);
    
    String getMaxRoomNum(String examId, String siteId);

    int deleteByExample(Exam_applyExample example);

    int deleteByPrimaryKey(String applyId);

    int insert(Exam_apply record);

    int insertSelective(Exam_apply record);

    List<Exam_apply> selectByExample(Exam_applyExample example);
    
    List<Exam_apply> selectByStuNum(String stuNum);

    Exam_apply selectByPrimaryKey(String applyId);

    int updateByExampleSelective(@Param("record") Exam_apply record, @Param("example") Exam_applyExample example);

    int updateByExample(@Param("record") Exam_apply record, @Param("example") Exam_applyExample example);

    int updateByPrimaryKeySelective(Exam_apply record);

    int updateByPrimaryKey(Exam_apply record);
}