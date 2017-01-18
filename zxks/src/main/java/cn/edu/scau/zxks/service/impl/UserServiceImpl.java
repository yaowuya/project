package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.UserMapper;
import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.User;
import cn.edu.scau.zxks.exception.UserException;
import cn.edu.scau.zxks.service.inter.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	public User login(String email, String passwd) throws UserException {
		// TODO Auto-generated method stub
		//System.out.println("login in servcie");
		//System.out.println(email);
		User user = userMapper.selectByPrimaryKey(email);
		//System.out.println(user);
		if(user == null){
			throw new UserException("该用户不存在");
		}
		
		if(!user.getPassword().equals(passwd)){
			throw new UserException("用户名或密码错误");
		}
		
		return user;
	}

	public void register(User user) {
		//System.out.println(user);
		user.setRoleId("004");
		try{
			userMapper.insert(user);
		}catch(Exception e){
			throw new UserException("注册时发生错误");
		}
	}

	public List<User> getAllUser() {
		return userMapper.selectAll();
	}

	public User findByEmail(String email) {
		return userMapper.selectByPrimaryKey(email);
	}

	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userMapper.updateByPrimaryKey(user);
	}

	public void deleteUser(String email) {
		// TODO Auto-generated method stub
		try{
			userMapper.deleteByPrimaryKey(email);
		}catch(Exception e){
			throw new UserException("该用户不能删除");
		}
	}

	@Override
	public List<User> getAllUserNotManager() {
		return userMapper.selectAllUserNotManage();
	}

	@Override
	public List<User> getAllUserNotSuperManager() {
		return userMapper.selectAllUserNotSuperManage();
	}

	@Override
	public int countByKey(String key, String roleId) {
		//key = "";
		if(key == null)key = "";
		//System.out.println("***" + key);
		//System.out.println(userMapper.countByKey(key));
		if(roleId.equals("000")){
			return userMapper.countByKeyNotSuperManage(key);
		} else if(roleId.equals("001")){
			return userMapper.countByKeyNotManage(key);
		}
		return 0;
	}

	@Override
	public List<User> searchUserInPage(Page page, String roleId) {
		if(page.getKey() == null)page.setKey("");
		if(roleId.equals("000")){
			return userMapper.searchUserInPageNotSuperManager(page);
		} else if(roleId.equals("001")){
			return userMapper.searchUserInPageNotManager(page);
		}
		return null;
	}

}
