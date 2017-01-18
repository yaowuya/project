package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.entity.site_state_record;
import cn.edu.scau.zxks.entity.site_state_recordExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface site_state_recordMapper {
    int countByExample(site_state_recordExample example);

    int deleteByExample(site_state_recordExample example);

    int deleteByPrimaryKey(String recordId);

    int insert(site_state_record record);

    int insertSelective(site_state_record record);

    List<site_state_record> selectByExample(site_state_recordExample example);

    site_state_record selectByPrimaryKey(String recordId);

    int updateByExampleSelective(@Param("record") site_state_record record, @Param("example") site_state_recordExample example);

    int updateByExample(@Param("record") site_state_record record, @Param("example") site_state_recordExample example);

    int updateByPrimaryKeySelective(site_state_record record);

    int updateByPrimaryKey(site_state_record record);
}