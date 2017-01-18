package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Textbook;
import cn.edu.scau.zxks.entity.TextbookExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface TextbookMapper {
    int countByExample(TextbookExample example);

    int deleteByExample(TextbookExample example);

    int deleteByPrimaryKey(String textbookId);

    int insert(Textbook record);

    int insertSelective(Textbook record);

    List<Textbook> selectByExample(TextbookExample example);
    
    List<Textbook> selectByLike(String search);
    
    List<Textbook> selectByLikeIsNo(String search);

    List<Textbook> selectNoOverdue(Page page);
    
    Textbook selectByPrimaryKey(String textbookId);

    int updateByExampleSelective(@Param("record") Textbook record, @Param("example") TextbookExample example);

    int updateByExample(@Param("record") Textbook record, @Param("example") TextbookExample example);

    int updateByPrimaryKeySelective(Textbook record);

    int updateByPrimaryKey(Textbook record);
}