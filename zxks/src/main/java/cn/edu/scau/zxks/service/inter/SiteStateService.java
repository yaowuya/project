package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Test_site_state;

public interface SiteStateService {
	List<Test_site_state> getAll();
	
	List<Test_site_state> searchByKeyInPage(Page page);
}
