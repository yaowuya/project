package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.MenuMapper;
import cn.edu.scau.zxks.entity.Menu;
import cn.edu.scau.zxks.service.inter.MenuService;

@Service
public class MenuServiceImpl implements MenuService {

	@Autowired
	MenuMapper menuMapper;
	
	@Override
	public Menu getById(String menuId) {
		return menuMapper.selectByPrimaryKey(menuId);
	}

	@Override
	public List<Menu> selectFatherNameInRole(String roleId) {
		return menuMapper.selectFatherNameInRole(roleId);
	}

	@Override
	public List<Menu> selectMenuByRoleId(String roleId) {
		if(roleId == null){
			return null;
		}
		else{
			return menuMapper.selectMenuByRoleId(roleId);
		}
	}

}
