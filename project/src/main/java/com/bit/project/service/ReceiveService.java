package com.bit.project.service;

import java.util.List;

import org.springframework.ui.Model;

import com.bit.project.common.Search;
import com.bit.project.model.entity.ReceiveVo;


public interface ReceiveService {

	List<ReceiveVo> selectAll_receive(Search search) throws Exception;
	void selectOne_receive(int key,Model model);
	void deleteOne_receive(int key);
//	°Ô½Ã¹° ÃÑ °¹¼ö
	public int getReceiveListCnt(Search search) throws Exception;
}
