package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.entity.Stu_punishment;
import cn.edu.scau.zxks.entity.Stu_punishmentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Stu_punishmentMapper {
    int countByExample(Stu_punishmentExample example);

    int deleteByExample(Stu_punishmentExample example);

    int deleteByPrimaryKey(String punishId);

    int insert(Stu_punishment record);

    int insertSelective(Stu_punishment record);

    List<Stu_punishment> selectByExample(Stu_punishmentExample example);

    Stu_punishment selectByPrimaryKey(String punishId);

    int updateByExampleSelective(@Param("record") Stu_punishment record, @Param("example") Stu_punishmentExample example);

    int updateByExample(@Param("record") Stu_punishment record, @Param("example") Stu_punishmentExample example);

    int updateByPrimaryKeySelective(Stu_punishment record);

    int updateByPrimaryKey(Stu_punishment record);
}