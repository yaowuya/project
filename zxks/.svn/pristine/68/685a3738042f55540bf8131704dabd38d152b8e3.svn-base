package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Test_site_state;
import cn.edu.scau.zxks.entity.Test_site_stateExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface Test_site_stateMapper {
    int countByExample(Test_site_stateExample example);

    int deleteByExample(Test_site_stateExample example);

    int deleteByPrimaryKey(String siteStateId);

    int insert(Test_site_state record);

    int insertSelective(Test_site_state record);

    List<Test_site_state> selectByExample(Test_site_stateExample example);

    Test_site_state selectByPrimaryKey(String siteStateId);
    
    List<Test_site_state> selectAll();
    

    int updateByExampleSelective(@Param("record") Test_site_state record, @Param("example") Test_site_stateExample example);

    int updateByExample(@Param("record") Test_site_state record, @Param("example") Test_site_stateExample example);

    int updateByPrimaryKeySelective(Test_site_state record);

    int updateByPrimaryKey(Test_site_state record);
}