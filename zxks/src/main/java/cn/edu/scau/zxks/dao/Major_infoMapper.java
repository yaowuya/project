package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Major_info;
import cn.edu.scau.zxks.entity.Major_infoExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface Major_infoMapper {
    int countByExample(Major_infoExample example);
    
    int countAll();
    
    int countByKey(String key);

    int deleteByExample(Major_infoExample example);

    int deleteByPrimaryKey(String majorId);

    int insert(Major_info record);

    int insertSelective(Major_info record);

    List<Major_info> selectByExample(Major_infoExample example);
    
    List<Major_info> selectAll();
    
    List<Major_info> selectAllinExam();
    
    List<Major_info> selectByKey(String key);
    
    List<Major_info> searchAll(Page page);
    
    List<Major_info> selectByKeyInPage(Page page);

    Major_info selectByPrimaryKey(String majorId);

    int updateByExampleSelective(@Param("record") Major_info record, @Param("example") Major_infoExample example);

    int updateByExample(@Param("record") Major_info record, @Param("example") Major_infoExample example);

    int updateByPrimaryKeySelective(Major_info record);

    int updateByPrimaryKey(Major_info record);
    
    String getMaxId();
}