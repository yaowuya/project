package cn.edu.scau.zxks.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.Course_informationMapper;
import cn.edu.scau.zxks.dao.RefundMapper;
import cn.edu.scau.zxks.dao.ReserveMapper;
import cn.edu.scau.zxks.dao.TextbookMapper;
import cn.edu.scau.zxks.dao.Textbook_billMapper;
import cn.edu.scau.zxks.entity.Course_information;
import cn.edu.scau.zxks.entity.FinanceBill;
import cn.edu.scau.zxks.entity.Refund;
import cn.edu.scau.zxks.entity.RefundExample;
import cn.edu.scau.zxks.entity.Reserve;
import cn.edu.scau.zxks.entity.ReserveExample;
import cn.edu.scau.zxks.entity.Textbook;
import cn.edu.scau.zxks.entity.TextbookExample;
import cn.edu.scau.zxks.entity.Textbook_bill;
import cn.edu.scau.zxks.entity.Textbook_billExample;
import cn.edu.scau.zxks.entity.TextbookExample.Criteria;
import cn.edu.scau.zxks.service.inter.FinanceBillInter;

@Service
public class FinanceBillImpl implements FinanceBillInter {
	@Autowired 
	TextbookMapper textbookMapper;
	@Autowired
	Course_informationMapper courseMapper;
	@Autowired
	ReserveMapper reserveMapper;
	@Autowired
	Textbook_billMapper textbookbillMapper;
	@Autowired
	RefundMapper refundMapper;
	
	@Override
	public List<FinanceBill> createFinanceBill() {
		TextbookExample textbookExample = new TextbookExample();
		Criteria criteria = textbookExample.createCriteria();
		criteria.andTextbookIdIsNotNull();
		List<Textbook> textbookList = textbookMapper.selectByExample(textbookExample);
		List<FinanceBill> financeBillList = new ArrayList<FinanceBill>();
		
		for(int i=0;i<textbookList.size();i++){
			FinanceBill financeBill = new FinanceBill();
			Textbook textbook = textbookList.get(i);
			//System.out.println(textbookList.get(i).getTextbookId());
			financeBill.setTextbookId(textbook.getTextbookId());
			financeBill.setBookname(textbook.getBookname());
			Course_information course = courseMapper.selectByPrimaryKey(textbook.getCourseId());
			financeBill.setCourseName(course.getCourseName());
			financeBill.setBookStorage(textbook.getBookStorage());
			if("000".equals(textbook.getIsOverdue()))
				financeBill.setIsOverdue("否");
			else
				financeBill.setIsOverdue("已废弃");
			Double[] buy = getBuyCost(textbook.getTextbookId());
			financeBill.setBuyprice(buy[0]);
			financeBill.setBuysum(buy[1].intValue());
			financeBill.setBuyCost(buy[2]);
			Double[] sell = getSellCost(textbook.getTextbookId());
			financeBill.setSellprice(sell[0]);
			financeBill.setSellsum(sell[1].intValue());
			financeBill.setSellCost(sell[2]);
			financeBill.setPostCost(sell[3]);
			financeBill.setRefundCost(sell[4]);
			financeBill.setStorageCost(financeBill.getBookStorage()*0.5);
			
			financeBillList.add(financeBill);
		}
		
		return financeBillList;
	}
	
	private Double[] getBuyCost(String textbookId){
		Double[] buy = new Double[3];
		Double buyprice = 0.0;
		Double buysum = 0.0;
		Double buyCost = 0.0;
		ReserveExample reserveExample = new ReserveExample();
		cn.edu.scau.zxks.entity.ReserveExample.Criteria criteria = reserveExample.createCriteria();
		criteria.andTextbookIdEqualTo(textbookId);
		List<Reserve> reserveList = reserveMapper.selectByExample(reserveExample);
		
		if(reserveList != null && reserveList.size()>0)
		for(int i=0;i<reserveList.size();i++){
			Reserve reserve = reserveList.get(i);
			//buyprice += reserve.getPrice();
			System.out.println("buy textbookId:"+textbookId+" size:"+reserveList.size()+" i="+i);
			buysum += reserve.getNum();
			buyCost += reserve.getPrice()*reserve.getNum();
		}
		
		if(reserveList != null && reserveList.size()>0)
		buyprice = buyCost/buysum;
		
		buy[0] = buyprice;
		buy[1] = buysum;
		buy[2] = buyCost;
		
		return buy;
	}
	
	private Double[] getSellCost(String textbookId){
		Double[] sell = new Double[5];
		int i = 0, j = 0;
		Double sellprice = 0.0;
		Double sellsum = 0.0;
		Double sellCost = 0.0;
		Double postCost = 0.0;
		Double refundCost = 0.0;
		Textbook_billExample textbook_billExample = new Textbook_billExample();
		cn.edu.scau.zxks.entity.Textbook_billExample.Criteria criteria = textbook_billExample.createCriteria();
		criteria.andTextbookIdEqualTo(textbookId);
		List<Textbook_bill> textbook_billList = textbookbillMapper.selectByExample(textbook_billExample);
		
		if(textbook_billList != null)
		for(i=0,j=0;i<textbook_billList.size();i++){
			Textbook_bill textbookBill = textbook_billList.get(i);
			
			if(textbookBill.getTextbookIocount() <=0)
				continue;
			
			System.out.println("sell textbookId:"+textbookId+" size:"+textbook_billList.size()+" i="+i);
			sellsum += textbookBill.getTextbookIocount();
			sellCost += textbookBill.getTextbookIocount()*textbookBill.getTextbookPrice();
			postCost += textbookBill.getPostPrice();
			RefundExample refundExample = new RefundExample();
			cn.edu.scau.zxks.entity.RefundExample.Criteria criteria02 = refundExample.createCriteria();
			criteria02.andTextbookIoIdEqualTo(textbookBill.getTextbookIoId());
			List<Refund> refunds = refundMapper.selectByExample(refundExample);
			if(refunds == null || refunds.isEmpty()){
				refundCost = 0.0;
			}else{
				//refundCost = refunds.get(0).getRefundAmount()*refunds.get(0).getRefundPrice();
			}
			j++;
		}
		
		if(textbook_billList != null && j>0)
		sellprice = sellCost/sellsum;
		
		sell[0] = sellprice;
		sell[1] = sellsum;
		sell[2] = sellCost;
		sell[3] = postCost;
		sell[4] = refundCost;
		return sell;
	}
	
}
