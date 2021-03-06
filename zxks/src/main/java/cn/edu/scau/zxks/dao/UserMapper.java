package cn.edu.scau.zxks.dao;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.User;
import cn.edu.scau.zxks.entity.UserExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    int countByExample(UserExample example);
    
    int countByKey(String key);
    
    int countByKeyNotSuperManage(String key);
    
    int countByKeyNotManage(String key);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(String email);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(String email);
    
    List<User> selectAll();
    
    List<User> selectAllUserNotManage();
    
    List<User> selectAllUserNotSuperManage();
    
    List<User> searchUserInPage(Page page);
    
    List<User> searchUserInPageNotSuperManager(Page page);
    
    List<User> searchUserInPageNotManager(Page page);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}