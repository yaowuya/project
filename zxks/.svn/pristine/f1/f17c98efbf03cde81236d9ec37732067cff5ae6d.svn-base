package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.entity.Reserve;
import cn.edu.scau.zxks.entity.ReserveExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ReserveMapper {
    int countByExample(ReserveExample example);

    int deleteByExample(ReserveExample example);

    int deleteByPrimaryKey(String reserveId);

    int insert(Reserve record);

    int insertSelective(Reserve record);

    List<Reserve> selectByExample(ReserveExample example);

    Reserve selectByPrimaryKey(String reserveId);

    int updateByExampleSelective(@Param("record") Reserve record, @Param("example") ReserveExample example);

    int updateByExample(@Param("record") Reserve record, @Param("example") ReserveExample example);

    int updateByPrimaryKeySelective(Reserve record);

    int updateByPrimaryKey(Reserve record);
}