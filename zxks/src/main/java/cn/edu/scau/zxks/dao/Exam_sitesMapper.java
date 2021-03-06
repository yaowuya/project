package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.entity.Exam_sites;
import cn.edu.scau.zxks.entity.Exam_sitesExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Exam_sitesMapper {
    int countByExample(Exam_sitesExample example);
    
    int countAll();

    int deleteByExample(Exam_sitesExample example);

    int deleteByPrimaryKey(String examSiteId);

    int insert(Exam_sites record);

    int insertSelective(Exam_sites record);

    List<Exam_sites> selectByExample(Exam_sitesExample example);
    
    List<Exam_sites> selectAll();
    
    public List<Exam_sites> getAllAvailable();

    Exam_sites selectByPrimaryKey(String examSiteId);
    
    Exam_sites selectBySiteId(String siteId);

    int updateByExampleSelective(@Param("record") Exam_sites record, @Param("example") Exam_sitesExample example);

    int updateByExample(@Param("record") Exam_sites record, @Param("example") Exam_sitesExample example);

    int updateByPrimaryKeySelective(Exam_sites record);

    int updateByPrimaryKey(Exam_sites record);
}