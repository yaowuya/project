package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.entity.Textbook_bill;
import cn.edu.scau.zxks.entity.Textbook_billExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Textbook_billMapper {
    int countByExample(Textbook_billExample example);

    int deleteByExample(Textbook_billExample example);

    int deleteByPrimaryKey(String textbookIoId);

    int insert(Textbook_bill record);

    int insertSelective(Textbook_bill record);

    List<Textbook_bill> selectByExample(Textbook_billExample example);

    Textbook_bill selectByPrimaryKey(String textbookIoId);

    int updateByExampleSelective(@Param("record") Textbook_bill record, @Param("example") Textbook_billExample example);

    int updateByExample(@Param("record") Textbook_bill record, @Param("example") Textbook_billExample example);

    int updateByPrimaryKeySelective(Textbook_bill record);

    int updateByPrimaryKey(Textbook_bill record);
}