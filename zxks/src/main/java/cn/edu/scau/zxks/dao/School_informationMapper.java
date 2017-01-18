package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.entity.School_information;
import cn.edu.scau.zxks.entity.School_informationExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface School_informationMapper {
    int countByExample(School_informationExample example);

    int deleteByExample(School_informationExample example);

    int deleteByPrimaryKey(String schoolId);

    int insert(School_information record);

    int insertSelective(School_information record);

    List<School_information> selectByExample(School_informationExample example);
    
    List<School_information> selectAll();

    School_information selectByPrimaryKey(String schoolId);

    int updateByExampleSelective(@Param("record") School_information record, @Param("example") School_informationExample example);

    int updateByExample(@Param("record") School_information record, @Param("example") School_informationExample example);

    int updateByPrimaryKeySelective(School_information record);

    int updateByPrimaryKey(School_information record);
}