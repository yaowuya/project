package cn.edu.scau.zxks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.RefundMapper;
import cn.edu.scau.zxks.entity.Refund;
import cn.edu.scau.zxks.entity.RefundExample;
import cn.edu.scau.zxks.entity.RefundExample.Criteria;
import cn.edu.scau.zxks.service.inter.RefundInter;

@Service
public class RefundImpl implements RefundInter {
	@Autowired
	RefundMapper refundMapper;
	
	@Override
	public boolean addRefund(Refund refund) {
		try {
			refundMapper.insert(refund);
			return true;
		} catch (Exception e) {
			System.out.println("SQLerror:"+e+"  RefundImpl.addRefund is error!!!");
			return false;
		}
	}

	@Override
	public List<Refund> queryRefund(String search, String kind) {
		RefundExample refundExample = new RefundExample();
		Criteria criteria = refundExample.createCriteria();
		if (kind.equals("111")) {
			criteria.andTextbookIdLike("%"+search+"%");
		} else if (kind.equals("222")) {
			criteria.andTextbookIoIdLike("%"+search+"%");
		} else {
			criteria.andRefundIdLike("%"+search+"%");
		}
		
		try {
			return refundMapper.selectByExample(refundExample);
		} catch (Exception e) {
			System.out.println("SQLerror:"+e+"  RefundImpl.addRefund is error!!!");
			return null;
		}
	}

	@Override
	public boolean updateRefund(Refund refund) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteRefun(Refund refund) {
		// TODO Auto-generated method stub
		return false;
	}

}
