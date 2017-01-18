package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.ReserveMapper;
import cn.edu.scau.zxks.entity.Reserve;
import cn.edu.scau.zxks.entity.ReserveExample;
import cn.edu.scau.zxks.entity.ReserveExample.Criteria;
import cn.edu.scau.zxks.service.inter.ReserveInter;

@Service
public class ReserveImpl implements ReserveInter {

	@Autowired
	ReserveMapper reserveMapper;
	
	
	public boolean addReserve(Reserve reserve) {
		try {
			reserveMapper.insert(reserve);
			return true;
		} catch (Exception e) {
			System.out.println("SQLerror:"+e+"  ReserveImpl.addReserve is error!!!");
			return false;
		}
		
	}

	public List<Reserve> queryReserve(String search, String kind) {
		
		ReserveExample reserveExample = new ReserveExample();
		Criteria criteria = reserveExample.createCriteria();
		if (kind.equals("111")) {
			criteria.andReserveIdLike("%"+search+"%");
		} else if(kind.equals("222")) {
			criteria.andTextbookIdLike("%"+search+"%");
		}else{
			criteria.andDealerIdLike("%"+search+"%");
		}
		try {
			List<Reserve> reserveList = reserveMapper.selectByExample(reserveExample);
			return reserveList;
		} catch (Exception e) {
			System.out.println("SQLerror:"+e+"  ReserveImpl.queryReserve is error!!!");
			return null;
		}
		
	}

	public boolean deleteReserve(Reserve reserve) {
		return false;
	}

	public boolean updateReserve(Reserve reserve) {
		try {
			reserveMapper.updateByPrimaryKeySelective(reserve);
			return true;
		} catch (Exception e) {
			System.out.println("SQLerror:"+e+"  ReserveImpl.updateReserve is error!!!");
			return false;
		}
	}

}
