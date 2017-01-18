package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.MajorSchoolMapper;
import cn.edu.scau.zxks.dao.Major_infoMapper;
import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Major_info;
import cn.edu.scau.zxks.service.inter.MajorService;

@Service
public class MajorServiceImpl implements MajorService {
	
	@Autowired
	Major_infoMapper major_infoMapper;
	
	@Autowired
	MajorSchoolMapper majorSchoolMapper;
	
	@Override
	public List<Major_info> getAll() {
		return major_infoMapper.selectAll();
	}

	@Override
	public Major_info getById(String majorId) {
		return major_infoMapper.selectByPrimaryKey(majorId);
	}

	@Override
	public List<Major_info> getAllInExam() {
		// TODO Auto-generated method stub
		return major_infoMapper.selectAllinExam();
	}

	@Override
	public void update(Major_info major) {
		major_infoMapper.updateByPrimaryKey(major);
	}

	@Override
	public void addMajor(Major_info major) {
		
		int num = Integer.valueOf(major_infoMapper.getMaxId());
		num++;
		String majorId = String.format("%05d", num);
		major.setMajorId(majorId);
		major_infoMapper.insert(major);
	}

	@Override
	public int deleteMajor(String majorId) {
		return major_infoMapper.deleteByPrimaryKey(majorId);
	}

	@Override
	public List<Major_info> searchByKey(String key) {
		return major_infoMapper.selectByKey(key);
	}

	@Override
	public List<Major_info> searchAll(Page page) {
		//System.out.println("***" + major_infoMapper.searchAll(page).size());
		return majorSchoolMapper.searchAll(page);
	}

	@Override
	public int countAll() {
		return major_infoMapper.countAll();
	}

	@Override
	public int countByKey(String key) {
		System.out.println("countByKey");
		return major_infoMapper.countByKey(key);
	}

	@Override
	public List<Major_info> searchByKeyInPage(Page page) {
		//return major_infoMapper.selectByKeyInPage(page);
		return majorSchoolMapper.searchByKeyInPage(page);
	}
	
	

}
