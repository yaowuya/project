package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.entity.Menu;
import cn.edu.scau.zxks.entity.MenuExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MenuMapper {
    int countByExample(MenuExample example);

    int deleteByExample(MenuExample example);

    int deleteByPrimaryKey(String menuId);

    int insert(Menu record);

    int insertSelective(Menu record);

    List<Menu> selectByExample(MenuExample example);
    
    List<Menu> selectFatherNameInRole(String roleId);
    
    List<Menu> selectMenuByRoleId(String roleId);

    Menu selectByPrimaryKey(String menuId);

    int updateByExampleSelective(@Param("record") Menu record, @Param("example") MenuExample example);

    int updateByExample(@Param("record") Menu record, @Param("example") MenuExample example);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
}