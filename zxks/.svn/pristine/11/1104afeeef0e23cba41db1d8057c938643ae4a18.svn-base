package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.Test_site_stateMapper;
import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Test_site_state;
import cn.edu.scau.zxks.service.inter.SiteStateService;

@Service
public class SiteStateServiceImpl implements SiteStateService {
	
	@Autowired
	Test_site_stateMapper test_site_stateMapper;
	@Override
	public List<Test_site_state> getAll() {
		return test_site_stateMapper.selectAll();
	}
	@Override
	public List<Test_site_state> searchByKeyInPage(Page page) {
		// TODO Auto-generated method stub
		return null;
	}


}
