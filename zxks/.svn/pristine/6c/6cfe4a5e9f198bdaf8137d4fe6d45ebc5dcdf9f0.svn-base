package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.entity.Stu_award;
import cn.edu.scau.zxks.entity.Stu_awardExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Stu_awardMapper {
    int countByExample(Stu_awardExample example);

    int deleteByExample(Stu_awardExample example);

    int deleteByPrimaryKey(String awardId);

    int insert(Stu_award record);

    int insertSelective(Stu_award record);

    List<Stu_award> selectByExample(Stu_awardExample example);

    Stu_award selectByPrimaryKey(String awardId);

    int updateByExampleSelective(@Param("record") Stu_award record, @Param("example") Stu_awardExample example);

    int updateByExample(@Param("record") Stu_award record, @Param("example") Stu_awardExample example);

    int updateByPrimaryKeySelective(Stu_award record);

    int updateByPrimaryKey(Stu_award record);
}