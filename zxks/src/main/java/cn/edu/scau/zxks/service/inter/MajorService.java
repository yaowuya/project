package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Major_info;

public interface MajorService {
	
	public List<Major_info> getAll();
	
	public Major_info getById(String majorId);
	
	public List<Major_info> getAllInExam();
	
	public void update(Major_info major);
	
	public void addMajor(Major_info major);
	
	public int deleteMajor(String majorId);
	
	public List<Major_info> searchByKey(String key);
	
	public List<Major_info> searchAll(Page page);
	
	public int countAll();
	
	public int countByKey(String key);
	
	public List<Major_info> searchByKeyInPage(Page page);
	
}
