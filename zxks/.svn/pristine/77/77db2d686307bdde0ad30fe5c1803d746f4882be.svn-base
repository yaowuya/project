package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.entity.Graduation_information;
import cn.edu.scau.zxks.entity.Graduation_informationExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Graduation_informationMapper {
    int countByExample(Graduation_informationExample example);

    int deleteByExample(Graduation_informationExample example);

    int deleteByPrimaryKey(String graduationId);

    int insert(Graduation_information record);

    int insertSelective(Graduation_information record);

    List<Graduation_information> selectByExample(Graduation_informationExample example);

    Graduation_information selectByPrimaryKey(String graduationId);

    int updateByExampleSelective(@Param("record") Graduation_information record, @Param("example") Graduation_informationExample example);

    int updateByExample(@Param("record") Graduation_information record, @Param("example") Graduation_informationExample example);

    int updateByPrimaryKeySelective(Graduation_information record);

    int updateByPrimaryKey(Graduation_information record);
}