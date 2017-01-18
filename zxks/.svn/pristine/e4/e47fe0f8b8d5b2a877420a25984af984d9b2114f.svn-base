package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.School_informationMapper;
import cn.edu.scau.zxks.entity.School_information;
import cn.edu.scau.zxks.service.inter.SchoolService;

@Service
public class SchoolServiceImpl implements SchoolService {

	@Autowired
	School_informationMapper school_informationMapper;
	
	@Override
	public List<School_information> getAll() {

		return school_informationMapper.selectAll();
	}

}
