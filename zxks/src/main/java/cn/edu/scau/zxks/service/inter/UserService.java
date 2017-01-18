package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.User;
import cn.edu.scau.zxks.exception.UserException;

public interface UserService {
	public User login(String id, String passwd) throws UserException;
	
	public void register(User user);
	
	public List<User> getAllUser();
	
	public User findByEmail(String email);
	
	public void updateUser(User user);
	
	public void deleteUser(String email);
	
	public List<User> getAllUserNotManager();
	
	public List<User> getAllUserNotSuperManager();
	
	public List<User> searchUserInPage(Page page, String roleId);
	
	public int countByKey(String key, String roleId);
}
