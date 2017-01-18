package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.entity.Study_abroad;
import cn.edu.scau.zxks.entity.Study_abroadExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Study_abroadMapper {
    int countByExample(Study_abroadExample example);

    int deleteByExample(Study_abroadExample example);

    int insert(Study_abroad record);

    int insertSelective(Study_abroad record);

    List<Study_abroad> selectByExample(Study_abroadExample example);

    int updateByExampleSelective(@Param("record") Study_abroad record, @Param("example") Study_abroadExample example);

    int updateByExample(@Param("record") Study_abroad record, @Param("example") Study_abroadExample example);
}