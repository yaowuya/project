package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Questionoutofstorage;

public interface QuestionoutofstorageInter {
	public int countSUM();
	public Page searchOutQuestionoutInPage(String search, String pageNum);
	public int addQuestionoutofstorage(Questionoutofstorage questionoutofstorage);
	public List<Questionoutofstorage> searchOutQuestionoutofstorage(String search);
	public boolean updateQuestionoutofstorage(Questionoutofstorage questionoutofstorage);
}
