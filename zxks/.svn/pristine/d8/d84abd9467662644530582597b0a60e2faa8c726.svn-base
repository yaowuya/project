package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.PrivilegeMapper;
import cn.edu.scau.zxks.entity.Privilege;
import cn.edu.scau.zxks.service.inter.PrivilegeService;

@Service
public class PrivilegeServiceImpl implements PrivilegeService {

	@Autowired
	PrivilegeMapper privilegeMapper;
	
	@Override
	public List<Privilege> getByRoleId(String roleId) {
		return privilegeMapper.selectByRoleId(roleId);
	}

}
