package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Test_sites;
import cn.edu.scau.zxks.entity.Test_sitesExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface Test_sitesMapper {
    int countByExample(Test_sitesExample example);
    
    int countAll();
    
    int countByKey(String key);

    int deleteByExample(Test_sitesExample example);

    int deleteByPrimaryKey(String siteId);

    int insert(Test_sites record);

    int insertSelective(Test_sites record);

    List<Test_sites> selectByExample(Test_sitesExample example);
    
    List<Test_sites> selectAll();

    Test_sites selectByPrimaryKey(String siteId);
    
    List<Test_sites> searchByKeyInPage(Page page);

    int updateByExampleSelective(@Param("record") Test_sites record, @Param("example") Test_sitesExample example);

    int updateByExample(@Param("record") Test_sites record, @Param("example") Test_sitesExample example);

    int updateByPrimaryKeySelective(Test_sites record);

    int updateByPrimaryKey(Test_sites record);
}