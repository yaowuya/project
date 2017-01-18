package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.entity.Elective_info;
import cn.edu.scau.zxks.entity.Elective_infoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Elective_infoMapper {
    int countByExample(Elective_infoExample example);

    int deleteByExample(Elective_infoExample example);

    int deleteByPrimaryKey(String electiveId);

    int insert(Elective_info record);

    int insertSelective(Elective_info record);

    List<Elective_info> selectByExample(Elective_infoExample example);

    Elective_info selectByPrimaryKey(String electiveId);

    int updateByExampleSelective(@Param("record") Elective_info record, @Param("example") Elective_infoExample example);

    int updateByExample(@Param("record") Elective_info record, @Param("example") Elective_infoExample example);

    int updateByPrimaryKeySelective(Elective_info record);

    int updateByPrimaryKey(Elective_info record);
}