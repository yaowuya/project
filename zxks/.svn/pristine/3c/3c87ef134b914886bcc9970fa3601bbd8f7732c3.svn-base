package cn.edu.scau.zxks.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Test_site_state;
import cn.edu.scau.zxks.entity.Test_sites;
import cn.edu.scau.zxks.service.inter.SiteService;
import cn.edu.scau.zxks.service.inter.SiteStateService;
import cn.edu.scau.zxks.utill.CommonUtills;

@Controller
@RequestMapping("/site")
public class SiteController {
	
	@Autowired
	SiteService siteService;
	
	@Autowired
	SiteStateService siteStateService;
	
	
	/**
	 * 去到考点管理页面
	 * @author Pavilion 15
	 * @param model
	 * @return
	 */
	@RequestMapping("/turnToSiteManager")
	public String turnToSiteManager(Model model,String key, String pageNum){
		Page page = new Page();
		page.setCount(siteService.countByKeyInTestSite(key));
		//System.out.println(userService.countByKey(key));
		int num = 0;
		if(pageNum != null){
			num = Integer.parseInt(pageNum);
			num--;
		}
		page.setStart(num * page.getSize());
		page.setKey(key);
		page.setList(siteService.searchTest_sitesKeyInPage(page));
		if(page.getList() == null){
			return "error";
		}
		//System.out.println(page.getList().size());
		model.addAttribute("page", page);
		model.addAttribute("pageNum", num + 1);
		
		List<Test_site_state> state_list = siteStateService.getAll();
		model.addAttribute("stateList", state_list);
		//System.out.println(state_list.get(0).getSiteStateId());
		return "test_manager";
	}
	
	/**
	 * 去到更改考点信息页面
	 * @author Pavilion 15
	 * @param site
	 * @param model
	 * @return
	 */
	@RequestMapping("/changeSite")
	public String changeSite(Test_sites site, Model model){
		site = siteService.findById(site.getSiteId());
		model.addAttribute("site", site);
		
		List<Test_site_state> state_list = siteStateService.getAll();
		model.addAttribute("stateList", state_list);
		
		return "test_manager_son";
	}
	
	/**
	 * 更改考点信息
	 * @author Pavilion 15
	 * @param site
	 * @param model
	 * @return
	 */
	@RequestMapping("/updateSite")
	public String updateSite(Test_sites site, Model model){
		siteService.updateSite(site);
		
		return "forward:/site/turnToSiteManager";
	}
	
	/**
	 * 添加考点信息
	 * @param site
	 * @param model
	 * @return
	 */
	@RequestMapping("/addSite")
	public String addSite(Test_sites site, Model model){
		siteService.addSite(site);
		
		return "forward:/site/turnToSiteManager";
	}
	
}
