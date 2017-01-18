package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Questionoutofstorage;
import cn.edu.scau.zxks.entity.QuestionoutofstorageExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface QuestionoutofstorageMapper {
    int countByExample(QuestionoutofstorageExample example);

    int deleteByExample(QuestionoutofstorageExample example);

    int deleteByPrimaryKey(String borrowRecordId);

    int insert(Questionoutofstorage record);

    int insertSelective(Questionoutofstorage record);
    
    List<Questionoutofstorage> selectInPage(Page page);

    List<Questionoutofstorage> selectByExample(QuestionoutofstorageExample example);

    Questionoutofstorage selectByPrimaryKey(String borrowRecordId);

    int updateByExampleSelective(@Param("record") Questionoutofstorage record, @Param("example") QuestionoutofstorageExample example);

    int updateByExample(@Param("record") Questionoutofstorage record, @Param("example") QuestionoutofstorageExample example);

    int updateByPrimaryKeySelective(Questionoutofstorage record);

    int updateByPrimaryKey(Questionoutofstorage record);
}