package cn.edu.scau.zxks.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.scau.zxks.entity.Menu;
import cn.edu.scau.zxks.entity.User;
import cn.edu.scau.zxks.service.inter.MenuService;
import cn.edu.scau.zxks.service.inter.PrivilegeService;

@Controller
@RequestMapping("/menu")
public class MenuController {
	
	@Autowired
	PrivilegeService privilegeServce;
	
	@Autowired
	MenuService menuService;
	
	
	/**
	 * 根据用户权限动态生成菜单
	 * @author Pavilion 15
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("/generateMenu")
	public String generateMenu(Model model, HttpSession session){
		
		User user = (User) session.getAttribute("user");
		
		/****已废弃***
		 * 
		//根据用户的角色id获取权限
		List<Privilege> pList = privilegeServce.getByRoleId(user.getRoleId());
		
		List<Menu> menuList = new LinkedList<Menu>();
		
		//根据权限中的menuId获取用户应该有的menu
		for(int i = 0; i < pList.size(); i++){
			Menu menu = menuService.getById(pList.get(i).getMenuId());
			menuList.add(menu);
		}
		**************/
		
		//根据用户的角色id获取权限
		List<Menu> menuList = menuService.selectMenuByRoleId(user.getRoleId());
		
		//将menuList存入session，供拦截器使用
		session.setAttribute("menuList", menuList);
		
		//筛选出父菜单
		List<Menu> fatherList = menuService.selectFatherNameInRole(user.getRoleId());
		session.setAttribute("fatherList", fatherList);
		
		return "index";
	}
}
