package com.bit.project.service;

import java.util.List;

import org.springframework.ui.Model;

import com.bit.project.common.Search;
import com.bit.project.model.entity.FaqVo;

public interface FaqService {

	public List<FaqVo> selectAll_faq(Search search) throws Exception;
	void selectOne_faq(int key,Model model);
	void insertOne_faq(FaqVo bean);
	void updateOne_faq(FaqVo bean);
	void deleteOne_faq(int key);
//	°Ô½Ã¹° ÃÑ °¹¼ö
	public int getFaqListCnt(Search search) throws Exception;
}
