package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.entity.Menu;

public interface MenuService {
	public Menu getById(String menuId);
	
	public List<Menu> selectFatherNameInRole(String roleId);
	
	public List<Menu> selectMenuByRoleId(String roleId);
}	
