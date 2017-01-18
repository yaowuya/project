package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.entity.Reserve;

public interface ReserveInter {
	public boolean addReserve(Reserve reserve);
	public List<Reserve> queryReserve(String search, String kind);
	public boolean deleteReserve(Reserve reserve);
	public boolean updateReserve(Reserve reserve);
}
