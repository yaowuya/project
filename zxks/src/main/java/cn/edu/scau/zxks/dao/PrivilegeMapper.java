package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.entity.Privilege;
import cn.edu.scau.zxks.entity.PrivilegeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PrivilegeMapper {
    int countByExample(PrivilegeExample example);

    int deleteByExample(PrivilegeExample example);

    int deleteByPrimaryKey(String privilegeId);

    int insert(Privilege record);

    int insertSelective(Privilege record);

    List<Privilege> selectByExample(PrivilegeExample example);

    Privilege selectByPrimaryKey(String privilegeId);
    
    List<Privilege> selectByRoleId(String roleId);

    int updateByExampleSelective(@Param("record") Privilege record, @Param("example") PrivilegeExample example);

    int updateByExample(@Param("record") Privilege record, @Param("example") PrivilegeExample example);

    int updateByPrimaryKeySelective(Privilege record);

    int updateByPrimaryKey(Privilege record);
}