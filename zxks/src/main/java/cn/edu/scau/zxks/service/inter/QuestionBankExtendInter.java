package cn.edu.scau.zxks.service.inter;

import java.util.List;

import cn.edu.scau.zxks.dto.Page;
import cn.edu.scau.zxks.entity.Textbook;

public interface QuestionBankExtendInter {
	public List<Textbook> queryQuestionBankExtend(String search);
	public List<Textbook> query2QuestionBankExtend(String search);
	public Page query3QuestionBankExtend(String pageNum);
}
