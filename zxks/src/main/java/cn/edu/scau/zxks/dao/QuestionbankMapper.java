package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Questionbank;
import cn.edu.scau.zxks.entity.QuestionbankExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface QuestionbankMapper {
    int countByExample(QuestionbankExample example);

    int deleteByExample(QuestionbankExample example);

    int deleteByPrimaryKey(String questionbankId);

    int insert(Questionbank record);

    int insertSelective(Questionbank record);

    List<Questionbank> selectByExample(QuestionbankExample example);
    
    List<Questionbank> selectBylikeInPage(Page page);
    
    List<Questionbank> selectBylike(String search);
    
    List<Questionbank> selectCanUse(Page page);
    
    List<Questionbank> selectCanInPage(Page page);
    
    List<Questionbank> selectTextIdInPage(Page page);

    Questionbank selectByPrimaryKey(String questionbankId);

    int updateByExampleSelective(@Param("record") Questionbank record, @Param("example") QuestionbankExample example);

    int updateByExample(@Param("record") Questionbank record, @Param("example") QuestionbankExample example);

    int updateByPrimaryKeySelective(Questionbank record);

    int updateByPrimaryKey(Questionbank record);
}