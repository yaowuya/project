package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.RoleMapper;
import cn.edu.scau.zxks.entity.Role;
import cn.edu.scau.zxks.service.inter.RoleService;

@Service
public class RoleServiceImpl implements RoleService {
	@Autowired
	private RoleMapper roleMapper;
	
	public List<Role> getAllRole() {
		return roleMapper.selectAll();
	}

	@Override
	public Role getById(String roleId) {
		return roleMapper.selectByPrimaryKey(roleId);
	}

}
