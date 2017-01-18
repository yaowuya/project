package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.entity.Dealer;
import cn.edu.scau.zxks.entity.DealerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DealerMapper {
    int countByExample(DealerExample example);

    int deleteByExample(DealerExample example);

    int deleteByPrimaryKey(String dealerId);

    int insert(Dealer record);

    int insertSelective(Dealer record);

    List<Dealer> selectByExample(DealerExample example);

    Dealer selectByPrimaryKey(String dealerId);

    int updateByExampleSelective(@Param("record") Dealer record, @Param("example") DealerExample example);

    int updateByExample(@Param("record") Dealer record, @Param("example") DealerExample example);

    int updateByPrimaryKeySelective(Dealer record);

    int updateByPrimaryKey(Dealer record);
}