package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.entity.Dealer;

public interface DealerInter {
	public boolean addDealer(Dealer dealer);
	public Dealer queryOne(String dealerId);
	public List<Dealer> queryDealer(String search, String kind);
	public boolean deleteDealer(Dealer dealer);
	public boolean updateDealer(Dealer dealer);
}
