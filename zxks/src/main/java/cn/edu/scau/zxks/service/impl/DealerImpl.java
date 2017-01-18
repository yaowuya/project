package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.DealerMapper;
import cn.edu.scau.zxks.entity.Dealer;
import cn.edu.scau.zxks.entity.DealerExample;
import cn.edu.scau.zxks.entity.DealerExample.Criteria;
import cn.edu.scau.zxks.service.inter.DealerInter;

@Service
public class DealerImpl implements DealerInter {

	@Autowired
	DealerMapper dealerMapper;
	
	public boolean addDealer(Dealer dealer) {
		try {
			dealerMapper.insert(dealer);
			return true;
		} catch (Exception e) {
			System.out.println("SQLerror:"+e+"  DealerImpl.addDealer is error!!!");
			return false;
		}
		
	}
	
	public Dealer queryOne(String dealerId){
		return dealerMapper.selectByPrimaryKey(dealerId);
	}
	
	public List<Dealer> queryDealer(String search, String kind) {
		DealerExample dealerExample = new DealerExample();
		Criteria criteria = dealerExample.createCriteria();
		if (kind.equals("111")) {
			criteria.andDealerNameLike("%"+search+"%");
		} else if (kind.equals("222")){
			criteria.andDealerIdLike("%"+search+"%");
		}else {
			criteria.andDealerContactsLike("%"+search+"%");
		}
		try {
			return dealerMapper.selectByExample(dealerExample);
		} catch (Exception e) {
			System.out.println("SQLerror:"+e+"  DealerImpl.queryDealer is error!!!");
			return null;
		}
	}

	public boolean deleteDealer(Dealer dealer) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateDealer(Dealer dealer) {
		try {
			dealerMapper.updateByPrimaryKeySelective(dealer);
			return true;
		} catch (Exception e) {
			System.out.println("SQLerror:"+e+"  DealerImpl.queryDealer is error!!!");
			return false;
		}
	}

}
