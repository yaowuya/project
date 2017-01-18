package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.entity.Privilege;

public interface PrivilegeService {
	
	List<Privilege> getByRoleId(String roleId);
}
